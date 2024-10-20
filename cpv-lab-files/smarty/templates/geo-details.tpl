<div class="row">
    <div class="col-xl-6 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4 class="d-inline-block">GEO-Stats</h4>
                <a href="stats.php?camp={$selectedCampaignID}" class="btn btn-info btn-sm float-right">Open Stats</a>
            </div>

            <div class="card-body">
                <div class="row align-items-end mb-3">
                    <div class="col-sm-9">
                        <div class="form-group mb-sm-0">
                            <label>Select Campaign</label>
                            <select name="ddlCampaigns" id="ddlCampaigns" onchange="changeCampaign()" class="form-control">
                                {html_options options=$campaignsArray selected=$selectedCampaignID}
                            </select>
                        </div>
                    </div>

                    <div class="col-sm-3 pl-sm-0">
                        {include file='partControlEditCampaign.tpl'}
                    </div>
                </div>

                <div class="mt-4">
                    {include file='partControlIntervalRange.tpl'}
                </div>

                <div class="mt-4">
                    <div class="form-inline mb-3">
                        <div class="form-group">
                            <label class="control-label mr-2">Performance by</label>
                            <select id="ddlPerformance" name="ddlPerformance" onchange="ajaxLoadPerfGeoDetails()" class="form-control">
                                {html_options options=$performanceOptions selected=$selectedPerformanceOption}
                            </select>
							<img src="images/spinner.gif" alt="Working..." id="spinp" class="ml-4" style="display:none"/>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table class="{$theme_table_classes} campaignTableDiv left" id="tblPerformance">
                            <thead>
                                <tr>
                                    <th colspan="3" class="text-center">Top Performance</td>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-6 mb-30">
        <div class="card h-100">
            <div class="card-header">
                <h4>Locations</h4>
            </div>

            <div class="card-body">
                <div class="form-inline">
                    <div class="form-group">
                        <label class="control-label mr-2">Chart View</label>
                        <select name="ddlViewChart" id="ddlViewChart" onchange="ajaxLoadChartGeoDetails()" class="form-control">
                            {html_options options=$viewChartOptions selected=$viewChart}
                        </select>
                    </div>
                </div>

                <div class="chart-container-trends mt-4 mb-0 pt-3" style="height:250px;">
                    <div id="chartplaceholder{$reportTypeID}" class="chart-placeholder"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card" data-widget-editbutton="false" data-widget-deletebutton="false" data-widget-sortable="false" id="wdgGeoDetails">
    <div class="card-header">
        <h4>
            <i class="fa fa-globe" style="color: #959595"></i>&nbsp;
            {if isset($currentLocationDetails.ContinentName)}
                <a href="{$headerUrl}&fn={$currentLocationDetails.ContinentID}" style="color: #959595;">{$currentLocationDetails.ContinentName}</a>
            {/if}
            {if isset($currentLocationDetails.CountryName)}
                &nbsp;&rArr;&nbsp;&nbsp;<a href="{$headerUrl}&fc={$currentLocationDetails.CountryID}" style="color: #959595;">{$currentLocationDetails.CountryName}</a>
            {/if}
            {if isset($currentLocationDetails.RegionName)}
                &nbsp;&rArr;&nbsp;&nbsp;<a href="{$headerUrl}&fr={$currentLocationDetails.RegionID}" style="color: #959595;">{$currentLocationDetails.RegionName}</a>
            {/if}
            {if isset($currentLocationDetails.CityName)}
                &nbsp;&rArr;&nbsp;&nbsp;<a href="{$headerUrl}&ft={$currentLocationDetails.CityID}" style="color: #959595;">{$currentLocationDetails.CityName}</a>
            {/if}
        </h4>
    </div>

    <div class="card-body">
        <div class="d-flex align-items-center flex-wrap mb-3">
            <div class="ml-lg-auto mr-3 mb-1">
                <button type="button" onclick="window.location.href = '{$exportLink}'; return false" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i></button>
            </div>
            {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumns selectedColumns=$showhideSelectedColumns}
        </div>

        <table id="tbl{$selectedCampaignID}-{$reportTypeID}" class="{$theme_table_classes} text-nowrap dtReportsSort" style="width:100%">
            {include file='partHeaderRow.tpl' columns=$visibleColumns writeSimpleHeader=true}
            {include file='partNormalRows.tpl' columns=$visibleColumns rows=$reportRows}
        </table>
    </div>
</div>

<input type="hidden" name="hidSortField" id="hidSortField" value="{$sortField}" />
<input type="hidden" name="hidDirField" id="hidDirField" value="{$dirField}" />
<input type="hidden" name="hidCampaignID" id="hidCampaignID" value="{$selectedCampaignID}"/>
<input type="hidden" name="hidCampaignType" id="hidCampaignType" value="{$campaignTypeID}"/>
<input type="hidden" name="hidCurrentCpv" id="hidCurrentCpv" value="{$currentCpv}"/>
<input type="hidden" name="hidReportType" id="hidReportType" value="{$reportTypeID}"/>
<input type="hidden" name="hidPerformanceReportType" id="hidPerformanceReportType" value="{$performanceReportTypeID}"/>
<input type="hidden" name="hidWhereClause" id="hidWhereClause" value="{$whereClause}"/>
<input type="hidden" name="hidFilterText" id="hidFilterText" value="{$filterText}"/>
<input type="hidden" name="hidFilterContinent" id="hidFilterContinent" value="{$filterContinent}"/>
<input type="hidden" name="hidFilterCountry" id="hidFilterCountry" value="{$filterCountry}"/>
<input type="hidden" name="hidFilterRegion" id="hidFilterRegion" value="{$filterRegion}"/>
<input type="hidden" name="hidFilterCity" id="hidFilterCity" value="{$filterCity}"/>
<input type="hidden" name="hidColumn" id="hidColumn" value=""/>
<input type="hidden" name="hidFullUrl" id="hidFullUrl" value=""/>
<input type="submit" name="btnColumn" id="btnColumn" style="display:none"/>
<script type="text/javascript">
	{literal}
		function changeCampaign()
		{
			window.location.href = getFullUrl();
		}

		function getFullUrl()
		{
			redirectUrl = 'geo-details.php?camp=' + $("#ddlCampaigns").val() +
					"&int=" + $("#ddlInterval").val() +
					($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
							"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '') +
					"&sort=" + $("#hidSortField").val() + "&dir=" + $("#hidDirField").val() + $('#hidFilterText').val();
			return redirectUrl;
		}

		function changeColumn(sender, reportType, defaultColumns)
		{
			var ddlvalue = typeof defaultColumns !== 'undefined' ? "default" : $(sender).val();
			if (ddlvalue != null && ddlvalue != '' && ddlvalue != $('#hidCurrentColumn' + reportType).val())
			{
				$("#hidColumn").val(ddlvalue);
				$("#btnColumn").click();
			}
		}
	{/literal}

	var menuRedirectPage = '';
	var menuNewWindow = false;

	$(document).ready(function () {
		ajaxLoadChartGeoDetails();
		ajaxLoadPerfGeoDetails();
		cmKeyword(false);
		cmLandingPage(false);
		cmOffer(false);
	})
</script>
<style>
#tblPerformance td:nth-child(2) {
    width: 23%;
    text-align: center;
    vertical-align: middle;
    font-size: 14px;
}
#tblPerformance td:nth-child(2) > b:first-child {
    font-size: 15px;
}
#tblPerformance td:nth-child(3) {
    width: 23%;
    text-align: center;
    vertical-align: middle;
    font-size: 24px;
}
</style>

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
                            <label>Campaign</label>
                            {include file='partControlSelectCampaign.tpl'}
                        </div>
                    </div>
                    <div class="col-sm-3 pl-sm-0">
                        {include file='partControlEditCampaign.tpl'}
                    </div>
                </div>

                <div class="mt-4">
                    {include file='partControlIntervalRange.tpl'}
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-6 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Highest Performing Locations</h4>
            </div>
            <div class="card-body">
                <div class="form-inline mb-3">
					<div class="form-group">
						<label class="control-label mr-2">Performance by</label>
						<select id="ddlPerformance" name="ddlPerformance" onchange="ajaxLoadPerfGeoStats()" class="form-control">
							{html_options options=$performanceOptions selected=$selectedPerformanceOption}
						</select>
						<img src="images/spinner.gif" alt="Working..." id="spinp" class="ml-4" style="display:none"/>
					</div>
                </div>

                <div class="table-responsive">
                  <table class="{$theme_table_classes} text-nowrap w-100" id="tblPerformance">
                      <thead>
                          <tr>
                              <th colspan="2">Countries</th>
                              <th colspan="2">States/Regions</th>
                              <th colspan="2">Cities</th>
                          </tr>
                      </thead>
                      <tbody></tbody>
                  </table>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" id="wdgGeoStats">
    <div class="card-header">
        <h4>Visitors by Location</h4>
    </div>
    <div class="card-body search-with-btn-export">
        <div class="d-flex align-items-center flex-wrap">
            <div class="mb-2 mr-2">
                <b>Filters:</b>
                <a href="javascript:;" onclick="changeCampaign()" title="Remove All Filters" data-placement="top" data-toggle="tooltip"><i class="fe fe-x-circle ml-2 mr-2"></i></a>
            </div>

            <div class="mr-2 mb-3 w-xs-100">
                {include file='partFilterMultiselect.tpl' name='Continents' items=$assignedContinents selectedItems=$selectedContinents
                 caption='Continent' captionPlural='Continents'}
            </div>

            <div class="mr-2 mb-3 w-xs-100">
                {include file='partFilterMultiselect.tpl' name='Countries' items=$assignedCountries selectedItems=$selectedCountries
                caption='Country' captionPlural='Countries'}
            </div>

            <div class="mr-2 mb-3 w-xs-100">
                {include file='partFilterMultiselect.tpl' name='Regions' items=$assignedRegions selectedItems=$selectedRegions
                caption='State/Region' captionPlural='States/Regions'}
            </div>
            <div class="mr-2 mb-3 w-xs-100">
                {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumns selectedColumns=$showhideSelectedColumns}
            </div>
        </div>

        <div>
            {include file='partButtonExport.tpl' exportExtraClass="btn-sm btn-export"}
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
<input type="hidden" name="hidReportType" id="hidReportType" value="{$reportTypeID}"/>
<input type="hidden" name="hidPerformanceReportType" id="hidPerformanceReportType" value="{$performanceReportTypeID}"/>
<input type="hidden" name="hidWhereClause" id="hidWhereClause" value="{$whereClause}"/>
<input type="hidden" name="hidDetailsUrl" id="hidDetailsUrl" value="{$detailsUrl}"/>
<input type="hidden" name="hidColumn" id="hidColumn" value=""/>
<input type="hidden" name="hidFullUrl" id="hidFullUrl" value=""/>
<input type="submit" name="btnColumn" id="btnColumn" style="display:none"/>
<script type="text/javascript">
	{literal}
		function changeCampaign(withFilters, filterID)
		{
			window.location.href = getFullUrl(withFilters, filterID);
		}

		function getFullUrl(withFilters, filterID)
		{
			redirectUrl = 'geo-stats.php?camp=' + $("#ddlCampaigns").val() +
					"&int=" + $("#ddlInterval").val() +
					($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
							"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '') +
					"&sort=" + $("#hidSortField").val() + "&dir=" + $("#hidDirField").val();
			if (typeof withFilters !== 'undefined' && withFilters &&
					$("#ddlFilter" + filterID + " :selected").length != $("#hidFilter" + filterID + "Total").val())
			{
				if (filterID == "Continents")
				{
					var selectedValue = $('#ddlFilterContinents').val();
					if (selectedValue != 0)
						redirectUrl += "&fn=" + selectedValue;
				}
				if (filterID == "Countries")
				{
					var selectedValue = $('#ddlFilterCountries').val();
					if (selectedValue != 0)
						redirectUrl += "&fc=" + selectedValue;
				}
				if (filterID == "Regions")
				{
					var selectedValue = $('#ddlFilterRegions').val();
					if (selectedValue != 0)
						redirectUrl += "&fr=" + selectedValue;
				}
			}
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

		var menuRedirectPage = '';
		var menuNewWindow = false;

		$(document).ready(function () {
			ajaxLoadPerfGeoStats();
			cmKeyword(false);
			cmLandingPage(false);
			cmOffer(false);
		});
	{/literal}
</script>

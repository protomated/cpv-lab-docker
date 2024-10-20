{include file='partUpdReport.tpl'}
<div class="card">
    <div class="card-header">
        <h4>Filters</h4>
    </div>

    <div class="card-body">
        <div class="max-w-850">
            <div class="row align-items-end select-btn mb-3">
                <div class="col-sm-9">
                    <div class="form-group mb-sm-0">
                        <label>Select Campaign</label>

                        {include file='partControlSelectCampaign.tpl'}
                    </div>
                </div>

                <div class="col-sm-3 pl-sm-0 pr-sm-0">
                    {include file='partControlEditCampaign.tpl'}
                </div>
            </div>

            <div class="row">
                <div class="col-xl-6 mb-3 mb-xl-0">

                  {include file='partControlIntervalRange.tpl'}
                </div>

                <div class="col-xl-6">
                    <div class="form-group mb-0" id="divViewType">
                        <label>Show records by</label>
                        <div class="pt-1">
                            <label for="radVisitDate" class="mr-3">
                                <input type="radio" class="flat-purple" name="radViewType" id="radVisitDate" value="1" {if $viewType == 1}checked="checked"{else}onchange="changeCampaign()"{/if}/>
                                <i></i>
                                Visit Date
                            </label>

                            <label for="radSubscribeDate">
                                <input type="radio" class="flat-purple" name="radViewType" id="radSubscribeDate" value="2" {if $viewType == 2}checked="checked"{else}onchange="changeCampaign()"{/if}/>
                                <i></i>
                                Subscribe Date
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-body">
        <div class="chart-container-trends mb-0">
            <div id="chartplaceholder{$reportTypeID}" class="chart-placeholder"></div>
        </div>
    </div>
</div>

<div class="card mb-5" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" id="wdgSubscribersList">
    <div class="card-header">
        <h4>Subscribing Visitors / Leads</h4>
    </div>
    <div class="card-body">
        <div id="divEarnings">
            <div class="d-flex align-items-center justify-content-sm-end mb-3">
                {include file='partButtonExport.tpl' exportTitle="Export Report as CSV" exportExtraClass="btn-sm mr-3"}
                <div class="d-inline-block min-w-200">
                    {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumns selectedColumns=$showhideSelectedColumns}
                </div>
            </div>

            <table id="tbl{$selectedCampaignID}-{$reportTypeID}" class="{$theme_table_classes} text-nowrap dtReportsNoSort" style="width:100%">
                    {include file='partHeaderRow.tpl' columns=$visibleColumns}
                    {include file='partNormalRows.tpl' columns=$visibleColumns rows=$reportRows}
            </table>
        </div>
    </div>
</div>

<input type="hidden" id="hidSortField" value="{$sortField}"/>
<input type="hidden" id="hidDirField" value="{$dirField}"/>
<input type="hidden" id="hidFullUrl" name="hidFullUrl" value="{$fullUrl}"/>
<input type="hidden" name="hidColumn" id="hidColumn" value=""/>
<input type="submit" name="btnColumn" id="btnColumn" style="display:none"/>
<input type="hidden" name="hidReportType" id="hidReportType" value="{$reportTypeID}"/>
<input type="hidden" name="hidSelectedCampaignID" id="hidSelectedCampaignID" value="{$selectedCampaignID}"/>
<input type="hidden" name="hidViewTypeField" id="hidViewTypeField" value="{$viewTypeField}"/>
<input type="hidden" name="hidWhereClause" id="hidWhereClause" value="{$whereClause}"/>
<input type="hidden" name="hidUseCaching" id="hidUseCaching" value="{$useCaching}"/>
<input type="hidden" name="hidIntervalFromTimestamp" id="hidIntervalFromTimestamp" value="{$intervalFromTimestamp}"/>
<input type="hidden" name="hidIntervalToTimestamp" id="hidIntervalToTimestamp" value="{$intervalToTimestamp}"/>
<input type="hidden" id="hidUserRole" value="{$userroleid}"/>

<script type="text/javascript">
	{literal}
		function changeCampaign()
		{
		}
		function getFullUrl()
		{
			return 'subscribers-list.php?camp=' + $("#ddlCampaigns").val() +
					"&int=" + $("#ddlInterval").val() +
					($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
							"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '') +
					"&sort=" + $("#hidSortField").val() + "&dir=" + $("#hidDirField").val() +
					"&type=" + $("#divViewType input[type='radio']:checked").val();
			;
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

		$(document).ready(function() {
			ajaxLoadChartDay();

			cmKeyword(true);
			cmLandingPage(true);
			cmOffer(true);
			cmCampaign(true, true, true);
			cmDate(true);
			cmIpAddress(true);
			cmGeoCountry(true);
			cmGeoRegion(true);
			cmGeoCity(true);
		});
	{/literal}
</script>

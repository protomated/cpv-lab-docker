<script type="text/javascript">
	{literal}
		function refreshButton()
		{
			window.location.href = "visitor-stats.php?camp=" + 
					($('#ddlCampaigns').find("option:selected").length == $("#hidCampaignsCount").val() ? "0" : $('#ddlCampaigns').val()) +
					"&int=" + $('#ddlInterval').val() +
					"&view=" + $('#ddlView').val() +
					"&rec=" + $('#ddlRecords').val() +
					"&refresh=" + $('#ddlRefresh').val() +
					"&ip=" + $('#txtFilterIP').val() +
					"&country=" + $('#txtFilterCountry').val() +
					"&target=" + $('#txtFilterTarget').val() +
					"&sort=" + $('#hidSortField').val() + "&dir=" + $('#hidDirField').val();
		}
	{/literal}
</script>

<div class="row">
	<div class="col-xl-8 mb-30">
		<div class="card mb-0">
			<div class="card-header">
		        <h4>Filters</h4>
		    </div>
		    <div class="card-body">
		        <div class="row">
		            <div class="col-sm-6">
		                <div class="form-group">
		                    <label>Select Campaigns</label>
							<div>
								<select name="ddlCampaigns[]" id="ddlCampaigns" class="slect-campaign form-control" multiple="multiple">
								{html_options options=$campaignsArray selected=$selectedCampaignIDArray}
								</select>
							</div>
		                </div>
		            </div>

					<div class="col-sm-6 max-w-sm-280">
						<div class="form-group">
		                    <label>Auto-refresh every</label>
		                    <div class="d-flex">
		                        <select name="ddlRefresh" id="ddlRefresh" class="form-control">
		                            {html_options options=$refreshValues selected=$selectedRefresh}
		                        </select>
		                    </div>
		                </div>
		            </div>
		        </div>

				<div class="row">
					<div class="col-sm-6">
		            	<div class="form-group">
		                    <label>Data View</label>
		                    <select name="ddlView" id="ddlView" class="form-control">
		                        {html_options options=$viewValues selected=$selectedView}
		                    </select>
		                </div>
					</div>
					<div class="col-sm-6 max-w-sm-280">
		            	<div class="form-group">
		                    <label>Interval</label>
		                    <select name="ddlInterval" id="ddlInterval" class="form-control">
		                        {html_options options=$intervalOptionsArray selected=$intervalType}
		                    </select>
		                </div>
					</div>
					<div class="col-sm-6">
		            	<div class="form-group">
		                    <label>Records to show</label>
		                    <select name="ddlRecords" id="ddlRecords" class="form-control">
		                        {html_options options=$recordsValues selected=$selectedRecords}
		                    </select>
		                </div>
					</div>
					<div class="col-sm-6 max-w-sm-280">
		            	<div class="form-group mb-4">
		                    <label>Chart View</label>
		                    <select name="ddlViewChart" id="ddlViewChart" onchange="ajaxLoadChartGeneral()" class="form-control">
		                        {html_options options=$viewChartOptions selected=$viewChart}
		                    </select>
		                </div>
		            </div>
		        </div>

				<button onclick="refreshButton(); return false;" class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="Refresh"><i class="fa fa-refresh"></i> Refresh</button>
			</div>
		</div>
	</div>

	<div class="col-xl-4 mb-30">
		<div class="card h-100 mb-0">
			<div class="card-header">
		        <h4>Additional Filters</h4>
		    </div>

		    <div class="card-body">
				<div class="row">
					<div class="col-xl-12 col-sm-4 col-12">
		                <div class="form-group">
		                    <label>Filter by IP</label>
		                    <input type="text" name="txtFilterIP" id="txtFilterIP" value="{$selectedIP}" class="form-control" />
		                </div>
					</div>

					<div class="col-xl-12 col-sm-4 col-12">
		                <div class="form-group">
		                    <label>Filter by Country</label>
		                    <input type="text" name="txtFilterCountry" id="txtFilterCountry" value="{$selectedCountry}" class="form-control"/>
		                </div>
					</div>

					<div class="col-xl-12 col-sm-4 col-12">
		                <div class="form-group mb-4">
		                    <label>Filter by Target</label>
		                    <input type="text" name="txtFilterTarget" id="txtFilterTarget" value="{$selectedTarget}" class="form-control"/>
		                </div>
					</div>
				</div>

				<button onclick="refreshButton(); return false;" class="btn btn-primary"><i class="fa fa-refresh"></i> Refresh</button>
			</div>
        </div>
	</div>
</div>

<div class="card">
    <div class="card-body">
	    <div class="chart-container-trends mb-0">
			<div id="chartplaceholder0" class="chart-placeholder"></div>
	    </div>
	</div>
</div>

<div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" id="wdgVisitorStats">
    <div class="card-header">
        <h4>Incoming Visitors</h4>
    </div>
    <div class="card-body">
        <div class="d-flex align-items-center justify-content-sm-end mb-3">
			{include file='partButtonExport.tpl' exportTitle="Export Report as CSV" exportExtraClass="btn-sm mr-3"}
			<div class="d-inline-block min-w-200">
				{include file='partColumnsMultiselect.tpl' allColumns=$showhideColumns selectedColumns=$showhideSelectedColumns}
			</div>
        </div>

		<table id="tbl0-{$reportTypeID}" class="{$theme_table_classes} text-nowrap dtReportsNoSort" style="width:100%">
            {include file='partHeaderRow.tpl' columns=$visibleColumns}
            {include file='partNormalRows.tpl' columns=$visibleColumns rows=$reportRows}
        </table>
    </div>
</div>

<input type="hidden" id="hidSortField" value="{$sortField}"/>
<input type="hidden" id="hidDirField" value="{$dirField}"/>
<input type="hidden" id="hidCampaignsCount" value="{count($campaignsArray)}"/>
<input type="hidden" id="hidFullUrl" name="hidFullUrl" value="{$fullUrl}"/>
<input type="hidden" name="hidReportType" id="hidReportType" value="{$reportTypeID}"/>
<input type="hidden" name="hidColumn" id="hidColumn" value=""/>
<input type="submit" name="btnColumn" id="btnColumn" style="display:none"/>
<input type="hidden" name="hidWhereClauseChart" id="hidWhereClauseChart" value="{$whereClauseChart}"/>
<input type="hidden" name="hidIntervalFrom" id="hidIntervalFrom" value="{$intervalFrom}"/>
<input type="hidden" name="hidIntervalFromTimestamp" id="hidIntervalFromTimestamp" value="{$intervalFromTimestamp}"/>
<input type="hidden" name="hidIntervalToTimestamp" id="hidIntervalToTimestamp" value="{$intervalToTimestamp}"/>
<input type="hidden" id="hidUserRole" value="{$userroleid}"/>

<style>
    .SumoSelect { width: 100%; }
	.SumoSelect>.CaptionCont span { border: 0; }
</style>

<script type="text/javascript">
	{literal}
		// onLoad event
		window.onload = function () {
			set_scroll();
			setRefreshTimeout();
		}

		//calls the setTimeout function
		function setRefreshTimeout()
		{
			var intervalControl = $("#ddlRefresh");
			if (intervalControl.length > 0 && intervalControl.val() != '0')
				setTimeout(my_refresh, intervalControl.val() * 1000);
		}

		// if query string in URL contains scroll=nnn, then scroll position will be restored
		function set_scroll() {
			// get query string parameter with "?"
			var search = window.location.search;
			// if query string exists
			if (search) {
				// find scroll parameter in query string
				var matches = /scroll=(\d+)/.exec(search);
				// jump to the scroll position if scroll parameter exists
				if (matches)
					window.scrollTo(0, matches[1]);
			}
		}

		// set href location with scroll position
		function my_refresh() {
			var scroll, href, q;
			// Netscape compliant
			if (typeof (window.pageYOffset) == 'number') {
				scroll = window.pageYOffset;
			}
			// DOM compliant
			else if (document.body && document.body.scrollTop) {
				scroll = document.body.scrollTop;
			}
			// IE6 standards compliant mode
			else if (document.documentElement && document.documentElement.scrollTop) {
				scroll = document.documentElement.scrollTop;
			}
			// needed for IE6 (when vertical scroll bar is on the top)
			else {
				scroll = 0;
			}
			// define href
			refreshPage(scroll);
		}

		function refreshPage(scroll)
		{
			window.location.href = $('#hidFullUrl').val() + (scroll != -1 ? "&scroll=" + scroll : "");
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
		function changeCampaign()
		{
			window.location.href = $('#hidFullUrl').val();
		}

		var menuRedirectPage = '';
		var menuNewWindow = false;

		$(document).ready(function () {
			ajaxLoadChartGeneral();
			cmKeyword(true, undefined, 'Filter to this Keyword');
			cmLandingPage(true);
			cmOffer(true);
			cmCampaign(true, true, true);
			cmDate(true);
			cmIpAddress(true, 'Filter to this IP');
			cmGeoCountry(true, 'Filter to this Country');
			cmGeoRegion(true);
			cmGeoCity(true);
		})
	{/literal}
</script>

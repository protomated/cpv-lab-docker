<div class="card">
    <div class="card-header">
        <h4>Reports</h4>
    </div>
    <div class="card-body">
        <div class="max-w-850">
            <div class="row align-items-end select-btn mb-3">
                <div class="col-sm-8">
                    <div class="form-group mb-sm-0">
                        <label>Select Campaign</label>

                        {include file='partControlSelectCampaign.tpl'}
                    </div>
                </div>

                <div class="col-sm-4 pl-sm-0 pr-sm-0">
                    {include file='partControlEditCampaign.tpl'}
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                      <label>Currently Viewing</label>
                      <div class="form-control">
                          <strong><span id="spanTitle"></span></strong>
                      </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group mb-4">
                        <label>Available reports</label>
                        <select name="ddlReports" id="ddlReports" onchange="changeReport()" class="form-control">
                            {html_options options=$reportsArray selected=$selectedReportID}
                        </select>
                        <input type="hidden" id="hiddenTitle" value="{$selectedReportName}"/>
                    </div>
                </div>
            </div>

						{if $allowReportDelete}
                <a href="javascript:;" onclick="deleteReport()" class="btn btn-danger"><i class="fe fe-x"></i> Delete this Report</a>
						{/if}

        </div>
    </div>
</div>

<div class="card" data-widget-deletebutton="false" data-widget-sortable="false" id="wdgReportsTargetOrEmailPerformance">

    <a name="target" class="fixanchor"></a>

    <div class="card-header">
        <div class="float-right">
          <a data-collapse="#card-target" class="btn btn-icon d-table-cell">
            <i class="ion ion-minus"></i>
          </a>
        </div>
        <h4>
            {if $campaignTypeID != 9}
                Target Performance
            {else}
                Email Performance
            {/if}
        </h4>
    </div>

    <div class="collapse show" id="card-target">
        <div role="content" class="card-body">
            <div id="divTarget">
                <div class="d-flex flex-wrap justify-content-sm-end mb-2 mb-sm-3">
                    <button onclick="window.location.href = '{$optimizeLink}'; return false" class="btn btn-info btn-sm mr-3 mb-2 mb-sm-0" data-toggle="tooltip" data-placement="right" title="Optimize Report">&nbsp;<i class="fa fa-gears"></i>&nbsp;</button>

					{include file='partButtonExport.tpl' exportLink=$exportLinkTarget exportExtraClass="btn-sm mr-3 mb-2 mb-sm-0"}

                    <div class="d-inline-block min-w-200">
                      {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumnsTarget selectedColumns=$showhideSelectedColumnsTarget reportTypeID=1}
                    </div>
                </div>

                <div class="table-responsive">
                    <table id="tbl{$selectedCampaignID}-1" class="{$theme_table_classes} text-nowrap" style="width:100%">
                        {include file='partHeaderRow.tpl' columns=$visibleColumnsTarget}
                        {include file='partNormalRows.tpl' columns=$visibleColumnsTarget rows=$reportRowsTarget}
                        {include file='partTotalsRow.tpl' columns=$visibleColumnsTarget totals=$totalsRowTarget}
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card" data-widget-deletebutton="false" data-widget-sortable="false" id="wdgReportsCampaignPerformance">

    <a name="campaign" class="fixanchor"></a>

    <div class="card-header">
        <div class="float-right">
          <a data-collapse="#card-campaign" class="btn btn-icon d-table-cell">
            <i class="ion ion-minus"></i>
          </a>
        </div>
        <h4>Campaign Performance</h4>
    </div>

    <div class="collapse show" id="card-campaign">
        <div role="content" class="card-body">
            <div id="divCampaign">
                <div class="d-flex flex-wrap justify-content-sm-end mb-2 mb-sm-3">
                    <button onclick="window.location.href = 'overall-campaign-reports.php'; return false" class="btn btn-info btn-sm mr-3 mb-2 mb-sm-0" data-toggle="tooltip" data-placement="right" title="Campaign View">&nbsp;<i class="fe fe-zoom-in"></i>&nbsp;</button>

					{include file='partButtonExport.tpl' exportLink=$exportLinkCampaign exportExtraClass="btn-sm mr-3"}

                    <div class="d-inline-block min-w-200">
                        {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumnsCampaign selectedColumns=$showhideSelectedColumnsCampaign reportTypeID=9}
                    </div>
                </div>

                <div class="table-responsive">
                    <table id="tbl{$selectedCampaignID}-9" class="{$theme_table_classes} text-nowrap" style="width:100%">
                        {include file='partHeaderRow.tpl' columns=$visibleColumnsCampaign}
                        {include file='partNormalRows.tpl' columns=$visibleColumnsCampaign rows=$reportRowsCampaign}
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<input type="hidden" name="hidColumn" id="hidColumn" value=""/>
<input type="hidden" name="hidCampaignID" id="hidCampaignID" value="{$selectedCampaignID}"/>
<input type="hidden" name="hidCampaignType" id="hidCampaignType" value="{$campaignTypeID}"/>
<input type="hidden" name="hidReportID" id="hidReportID" value="{$selectedReportID}"/>
<input type="hidden" name="hidReportType" id="hidReportType" value=""/>
<input type="hidden" name="hidFullUrl" id="hidFullUrl" value=""/>
<input type="submit" name="btnColumn" id="btnColumn" style="display:none"/>
<input type="submit" name="btnDelete" id="btnDelete" style="display:none"/>
<input type="hidden" id="hidUserRole" value="{$userroleid}"/>

<script type="text/javascript">
	{literal}
	function changeCampaign(withReport)
	{
		redirectUrl = 'reports.php?camp=' + $("#ddlCampaigns").val();
		if (withReport)
			redirectUrl += '&rep=' + $("#ddlReports").val();
		window.location.href = redirectUrl
	}
	function changeReport()
	{
		window.location.href = getFullUrl();
	}

	function getFullUrl()
	{
		return 'reports.php?camp=' + $("#ddlCampaigns").val() + '&rep=' + $("#ddlReports").val();
	}

	function changeColumn(sender, reportType, defaultColumns)
	{
		var ddlvalue = typeof defaultColumns !== 'undefined' ? "default" : $(sender).val();
		if (ddlvalue != null && ddlvalue != '' && ddlvalue != $('#hidCurrentColumn' + reportType).val())
		{
			var fullUrl = getFullUrl() + "#";
			switch (reportType)
			{
				case 1:
					fullUrl += "target";
					break
				case 2:
					fullUrl += "landing";
					break;
				case 3:
					fullUrl += "offer";
					break;
				case 9:
					fullUrl += "campaign";
					break;
			}
			$("#hidFullUrl").val(fullUrl);
			$("#hidReportType").val(reportType);
			$("#hidColumn").val(ddlvalue);
			$("#btnColumn").click();
		}
	}

	function deleteReport()
	{
		if ($("#hidReportID").val()) {
			confirm('Are you sure you want to delete the current report?', function(){
				$("#btnDelete").click();
			});
		}
	}

	$("#spanTitle").html($("#hiddenTitle").val());

	var menuRedirectPage = '';
	var menuNewWindow = false;
	$(document).ready(function () {
			cmKeyword(false);
			cmCampaign(true, false, false);
		});
	{/literal}
</script>

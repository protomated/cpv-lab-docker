<div class="row">
    <div class="col-lg-8 mb-30">
        <div class="card mb-0 h-100">
            <div class="card-header">
                <h4>Campaigns Overview</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-xl-6 mb-3">
                        {include file='partControlIntervalRange.tpl'}
                    </div>
                    <div class="col-xl-3 col-sm-6">
                        <div class="form-group mb-sm-0">
                            <label>View</label>
                            {include file='partControlCampaignFilterView.tpl'}
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                        <div class="form-group mb-0">
                            <label>Group</label>
                            {include file='partControlCampaignFilterGroup.tpl'}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-4 mb-30">
        <div class="card mb-0 h-100">
            <div class="card-header">
                <h4>Overview helpers</h4>
            </div>
            <div class="card-body">
                <div class="mb-4">
                    {include file='partColorKey.tpl' showAlert=false showInactive=false}
                </div>

                <button onclick="window.location.href = '{$exportLink}'; return false" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i> Export CSV</button>
            </div>
        </div>
    </div>
</div>

{foreach $campaignTypes as $campaignType}
    <div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-icon="{page_icon page=$campaignType.PageName class_only=true}" id="wdgOverallCampaignStats{$campaignType.CampaignTypeID}">

        <a name="{$campaignType.AnchorText}" class="fixanchor"></a>

        <div class="card-header">
			<div class="float-right">
				<a data-collapse="#card-collapse{$campaignType.CampaignTypeID}" class="btn btn-icon d-table-cell">
                    <i class="ion ion-minus"></i>
                </a>
			</div>
			<h4>{$campaignType.CampaignTypeShort} Campaigns</h4>
		</div>
        <div class="collapse show" id="card-collapse{$campaignType.CampaignTypeID}">
            <div class="card-body">
                <table id="tblOvS{$campaignType.CampaignTypeID}" class="{$theme_table_classes} text-nowrap dtCampaigns" style="width:100%">
                    {include file='partHeaderRow.tpl' columns=$visibleColumnsArray.{$campaignType.CampaignTypeID}}
                    {include file='partNormalRows.tpl' columns=$visibleColumnsArray.{$campaignType.CampaignTypeID} rows=$reportRowsArray.{$campaignType.CampaignTypeID}}
                    {include file='partTotalsRow.tpl' columns=$visibleColumnsArray.{$campaignType.CampaignTypeID} totals=$totalsRowArray.{$campaignType.CampaignTypeID}}
                </table>
            </div>
        </div>
    </div>
{/foreach}
{foreach $otherCampaignTypes as $campaignType}
    <div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-icon="{page_icon page=$campaignType.PageName class_only=true}" id="wdgOverallCampaignStats{$campaignType.CampaignTypeID}">

        <a name="{$campaignType.AnchorText}" class="fixanchor"></a>

        <div class="card-header">
			<div class="float-right">
				<a data-collapse="#card-collapse{$campaignType.CampaignTypeID}" class="btn btn-icon d-table-cell">
                    <i class="ion ion-minus"></i>
                </a>
			</div>
			<h4>{$campaignType.CampaignTypeShort} Campaigns</h4>
		</div>
        <div class="collapse show" id="card-collapse{$campaignType.CampaignTypeID}">
            <div class="card-body">
				{include file='partUpdCampaignType.tpl' campaignType=$campaignType.CampaignType}
            </div>
        </div>
    </div>
{/foreach}


<input type="hidden" id="hidFilterUrl" value="{$filterUrl}" />
<input type="hidden" id="hidFullUrl" value="{$fullUrl}" />
<script type="text/javascript">
	{literal}
		function changeCampaign()
		{
			window.location.href = getFullUrl();
		}
		function getFullUrl()
		{
			return $("#hidFullUrl").val() + '&int=' + $("#ddlInterval").val() +
					($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
							"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '');
		}

		function changeFilter()
		{
			window.location.href = $("#hidFilterUrl").val() +
					"&type=" + $("#ddlFilterType").val() +
					($("#ddlFilterGroup").val() != -1 ? "&group=" + $("#ddlFilterGroup").val() : '');
		}
	{/literal}
</script>

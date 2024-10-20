<div class="row">
    <div class="col-xl-6 mb-30">
        <div class="card mb-0 h-100">
            <div class="card-header">
                <h4>Select Options</h4>
            </div>
            <div class="card-body">
                <div class="row align-items-end mb-3">
                    <div class="col-sm-9">
                        <div class="form-group mb-sm-0">
                            <label>Select Campaign</label>
                            {include file='partControlSelectCampaign.tpl' onchangeParam='false' selectName='ddlCampaign' selectId='ddlCampaign'}
                        </div>
                    </div>

                    <div class="col-sm-3 pl-sm-0">
                        {include file='partControlEditCampaign.tpl'}
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-xl-12 col-md-6">
                        <div class="form-group mb-md-0 mb-xl-3">
                            <label>Select Optimization Profile to Apply</label>
                            <select name="ddlOptimizationProfile" id="ddlOptimizationProfile" class="form-control" onchange="changeCampaign(true)">
                                {html_options options=$optimizationProfilesArray selected=$optimizationProfileID}
                            </select>
                        </div>
                    </div>

                    <div class="col-xl-12 col-md-6">
                        <div class="form-group mb-0">
                            <label>Select Data Source (Current Stats or Reports)</label>
                            <select name="ddlReport" class="form-control">
                                {html_options options=$reports selected=$reportID}
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-6 mb-30">
        <div class="card mb-0">
            <div class="card-header">
                <h4>Optional: Adjust Bids for Export</h4>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <p class="mb-2"><i class="fa fa-long-arrow-down"></i> <b>Lower {if $costTypeID == 2}CPC{else}CPV{/if}</b></p>
                        <div class="form-group">
                            <div class="form-inline-long">
                                <label>Targets with greater than</label>
                                <div class="d-inline-block">
                                    <input type="text" name="txtLowerViews" class="form-control width-80px" value="{$txtLowerViews|default:''}"/>
                                    <label>{if $costTypeID == 2}Visitors{else}Views{/if}</label>
                                </div>
                                <div class="d-inline-block">
                                    <label>and a {if $costTypeID == 2}PPC{else}PPV{/if} less than $</label>
                                    <input type="text" name="txtLowerPpv" class="form-control width-80px" value="{$txtLowerPpv|default:''}"/> ,
                                </div>

                                <label>Lower {if $costTypeID == 2}CPC{else}CPV{/if} by $</label>
                                <input type="text" name="txtLowerCpv" class="form-control width-80px" value="{$txtLowerCpv|default:''}"/>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <p class="mb-2"><i class="fa fa-long-arrow-up"></i> <b>Increase {if $costTypeID == 2}CPC{else}CPV{/if}</b></p>
                        <div class="form-group mb-0">
                            <div class="form-inline-long">
                                <label>Targets with greater than</label>
                                <div class="d-inline-block">
                                    <input type="text" name="txtIncreaseViews" class="form-control width-80px" value="{$txtIncreaseViews|default:''}"/>
                                    <label>{if $costTypeID == 2}Visitors{else}Views{/if}</label>
                                </div>
                                <div class="d-inline-block">
                                    <label>and a {if $costTypeID == 2}PPC{else}PPV{/if} greater than $</label>
                                    <input type="text" name="txtIncreasePpv" class="form-control width-80px" value="{$txtIncreasePpv|default:''}"/>&nbsp;,&nbsp;
                                </div>
                                <div class="d-inline-block">
                                    <label>Increase {if $costTypeID == 2}CPC{else}CPV{/if} by $</label>
                                    <input type="text" name="txtIncreaseCpv" class="form-control width-80px" value="{$txtIncreaseCpv|default:''}"/>
                                </div>
                                <div class="mt-3">
                                    <label>Increase {if $costTypeID == 2}CPC{else}CPV{/if} on All Winning Targets by $</label>
                                    <input type="text" name="txtIncreaseCpvWinners" class="form-control width-80px mb-0" value="{$txtIncreaseCpvWinners|default:''}"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-body optimize-buttons-holder">
        <button type="submit" name="btnPreview_x" class="btn btn-primary mr-3"><i class="fa fa-gears"></i> Optimize It</button>

        <div class="float-right">
        	<button type="submit" name="btnExportAll_x" class="btn btn-default" value="1" data-toggle="tooltip" data-placement="right" title="Export All Tables as CSV"><i class="fe fe-share"></i> Export All - CSV</button>
        </div>
    </div>
</div>


<div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" id="wdgOptimizeTarget">
    <div class="card-header">
        <div class="float-right">
          <a data-collapse="#card-targets" class="btn btn-icon d-table-cell">
            <i class="ion ion-minus"></i>
          </a>
        </div>
        <h4>Targets</h4>
    </div>
    <div class="collapse show" id="card-targets">
        <div class="card-body pb-3">
            <div class="table-responsive mb-4">
                <table class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
                    {include file='partHeaderRow.tpl' columns=$visibleColumnsTarget writeSimpleHeader=true}
                    {include file='partNormalRows.tpl' columns=$visibleColumnsTarget rows=$reportTargetRows}
                </table>
            </div>

            <div class="text-right">
                <button type="submit" name="btnExport_x" class="btn btn-default mb-3" value="1" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i> Export CSV</button>
                <button type="submit" name="btnExportRemove_x" class="btn btn-default ml-3 mb-3" value="1" alt="Export Only Remove" data-toggle="tooltip" data-placement="right" title="Export Remove Targets as CSV"><i class="fe fe-share"></i> Export Remove Targets</button>
            </div>
        </div>
    </div>
</div>



{if $showLPSection}
    <div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" id="wdgOptimizeLanding">
        <div class="card-header">
            <div class="float-right">
              <a data-collapse="#card-landings" class="btn btn-icon d-table-cell">
                <i class="ion ion-minus"></i>
              </a>
            </div>
            <h4>Landing Pages</h4>
        </div>
        <div class="collapse show" id="card-landings">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
                        {include file='partHeaderRow.tpl' columns=$visibleColumnsLP writeSimpleHeader=true}
                        {include file='partNormalRows.tpl' columns=$visibleColumnsLP rows=$reportLPRows}
                    </table>
                </div>
            </div>
        </div>
    </div>
{/if}

{if $showOfferSection}
    <div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" id="wdgOptimizeOffer">
        <div class="card-header">
            <div class="float-right">
              <a data-collapse="#card-offers" class="btn btn-icon d-table-cell">
                <i class="ion ion-minus"></i>
              </a>
            </div>
            <h4>Offers</h4>
        </div>
        <div class="collapse show" id="card-offers">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
                        {include file='partHeaderRow.tpl' columns=$visibleColumnsOffer writeSimpleHeader=true}
                        {include file='partNormalRows.tpl' columns=$visibleColumnsOffer rows=$reportOfferRows}
                    </table>
                </div>
            </div>
        </div>
    </div>
{/if}

<div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" id="wdgOptimizeCampaign">
    <div class="card-header">
        <div class="float-right">
          <a data-collapse="#card-campaign" class="btn btn-icon d-table-cell">
            <i class="ion ion-minus"></i>
          </a>
        </div>
        <h4>Campaign</h4>
    </div>
    <div class="collapse show" id="card-campaign">
        <div class="card-body">
            <div class="table-responsive">
                <table class="{$theme_table_classes} text-nowrap">
		{include file='partHeaderRow.tpl' columns=$visibleColumnsCampaign}
		{include file='partNormalRows.tpl' columns=$visibleColumnsCampaign rows=$reportCampaignRows}
                </table>
            </div>
        </div>
    </div>
</div>


<input type="hidden" id="hidCampaignID" value="{$selectedCampaignID}"/>
<input type="hidden" name="hidSortField" id="hidSortField" value="{$sortField}"/>
<input type="hidden" name="hidSortDir" id="hidSortDir" value="{$dirField}"/>
<input  type="submit" name="btnSort" id="btnSort" value="Sort" style="display:none"/>

<script type="text/javascript">
	function changeCampaign(withProfile)
	{
		window.location.href = 'optimize.php?camp=' + $("#ddlCampaign").val() + (withProfile ? '&prof=' + $("#ddlOptimizationProfile").val() : '');
	}
	function sortcol(field, dir)
	{
		$('#hidSortField').val(field);
		$('#hidSortDir').val(dir);
		$('#btnSort').click();
	}
</script>

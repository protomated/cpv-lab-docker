<div class="row">
    <div class="col-xl-7 mb-30">
        <div class="card mb-0 h-100">
            <div class="card-header">
                <h4>Campaign Stats Filter</h4>
            </div>
            <div class="card-body">
                <div class="row align-items-end mb-3">
                    <div class="col-sm-9 pr-xl-1">
                        <div class="form-group mb-sm-0">
                            <label>Select Campaign</label>

                            {include file='partControlSelectCampaign.tpl'}
                        </div>
                    </div>

                    <div class="col-sm-3">
                        {include file='partControlEditCampaign.tpl'}
                    </div>
                </div>

                {include file='partControlIntervalRange.tpl'}

                <div class="row mt-3">
                    <div class="col col-sm-6">
                        <div class="form-group mb-sm-0">
                            <label>Status {include file='partTooltip.tpl' tooltipID=205}</label><br/>
                            {include file='partFilterInactive.tpl'}
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group mb-0">
                            <label>Chart View</label>
                            <select name="ddlViewChart" id="ddlViewChart" onchange="ajaxLoadChartGeneral()" class="form-control">
                                {html_options options=$viewChartOptions selected=$viewChart}
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-5 mb-30">
        <div class="">

            <div class="">
                <div id="here-block-totals" class="">
                    {include file='partCampaignTotalsSection.tpl'}
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card">
	<div class="card-header">
		<div class="float-right">
			<a data-collapse="#target-collapse-chart0" class="btn btn-icon d-table-cell">
				<i class="ion ion-minus"></i>
			</a>
		</div>
		<h4>Graphic performance</h4>
	</div>
    <div id="target-collapse-chart0" class="card-body collapse show">
        <div class="chart-container-trends mb-0">
            <div id="chartplaceholder0" class="chart-placeholder"></div>
            <!--<div id="placeholder1" class="h-400 overflow-hidden"></div>-->
        </div>
    </div>
</div>

<div class="row inline-widgets">
	<div class="col-6 col-sm-4 col-lg-3 col-xl-auto">
		<div class="card">
			<div class="card-body">
				<div class="d-flex align-items-center justify-content-center">
				  <span class="stamp bg-info mr-3">
					<i class="fa fa-eye pt-2"></i>
				  </span>
					<div>
						<h5 class="m-0 font-weight-bold" id="cmpVisitors">{$campaignViews|default:'-'}</h5>
						<h6 class="mb-0">Visitors</h6>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="col-6 col-sm-4 col-lg-3 col-xl-auto">
		<div class="card">
			<div class="card-body">
				<div class="d-flex align-items-center justify-content-center">
				  <span class="stamp bg-primary mr-3">
					<i class="fa fa-hand-o-up pt-2"></i>
				  </span>
					<div>
						<h5 class="m-0 font-weight-bold" id="cmpClicks">{$campaignClicks|default:'-'}</h5>
						<h6 class="mb-0">Clicks</h6>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="col-6 col-sm-4 col-lg-3 col-xl-auto">
		<div class="card">
			<div class="card-body">
				<div class="d-flex align-items-center justify-content-center">
				  <span class="stamp bg-orange mr-3">
					<i class="fe fe-refresh-cw pt-2 d-inline-block"></i>
				  </span>
					<div>
						<h5 class="m-0 font-weight-bold" id="cmpConversions">{$campaignConversions|default:'-'}</h5>
						<h6 class="mb-0">Conversions</h6>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="col-6 col-sm-4 col-lg-3 col-xl-auto">
		<div class="card">
			<div class="card-body">
				<div class="d-flex align-items-center justify-content-center">
				  <span class="stamp bg-olive mr-3">
					<i class="fe fe-dollar-sign pt-2 d-inline-block"></i>
				  </span>
					<div>
						<h5 class="m-0 font-weight-bold" id="cmpRevenue">{$campaignRevenue|default:'-'}</h5>
						<h6 class="mb-0">Revenue</h6>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="col-6 col-sm-4 col-lg-3 col-xl-auto">
		<div class="card">
			<div class="card-body">
				<div class="d-flex align-items-center justify-content-center">
				  <span class="stamp bg-danger mr-3">
					<i class="fe fe-scissors pt-2 d-inline-block"></i>
				  </span>
					<div>
						<h5 class="m-0 font-weight-bold" id="cmpCost">{$campaignCost|default:'-'}</h5>
						<h6 class="mb-0">Cost</h6>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="col-6 col-sm-4 col-lg-3 col-xl-auto">
		<div class="card">
			<div class="card-body">
				<div class="d-flex align-items-center justify-content-center">
				  <span class="stamp bg-success mr-3">
					<i class="fa fa-line-chart pt-2"></i>
				  </span>
					<div>
						<h5 class="m-0 font-weight-bold" id="cmpProfit">{$campaignProfit|default:'-'}</h5>
						<h6 class="mb-0">P/L</h6>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="col-6 col-sm-4 col-lg-3 col-xl-auto">
		<div class="card">
			<div class="card-body">
				<div class="d-flex align-items-center justify-content-center">
				  <span class="stamp bg-secondary mr-3">
					<i class="fa fa-bar-chart pt-2"></i>
				  </span>
					<div>
						<h5 class="m-0 font-weight-bold" id="cmpROI">{$campaignROI|default:'-'}</h5>
						<h6 class="mb-0">ROI</h6>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="col-12 col-sm-auto col-xl-auto color-key">
		<div class="card">
			<div class="card-body">
				{include file='partColorKey.tpl'}
			</div>
		</div>
	</div>
</div>

<div class="card" data-widget-sortable="false" data-widget-deletebutton="false" id="wdgStatsEmailOrTargetPerformance">

    <a name="target" class="fixanchor"></a>

    <div class="card-header">
        <div class="float-right">
            <a data-collapse="#target-collapse" class="btn btn-icon d-table-cell">
                <i class="ion ion-minus"></i>
            </a>
        </div>
        <h4>{if $campaignTypeID == 9}
                Email Performance
            {else}
                Target Performance
            {/if}
			<img src="images/spinner.gif" alt="Working..." id="spin4-1" class="ml-4" style="display:none"/>
        </h4>
    </div>
    <div class="collapse show" id="target-collapse">
        <div role="content" class="card-body">

            <div id="divTarget">
                <div class="d-flex flex-wrap align-items-center justify-content-sm-end mb-3">

                    <div class="mb-2 pb-1 w-xs-100">
                        <span class="label font-14 pl-0"># Targets:</span>
                        <select id="ddlRecordsDisplayed" class="form-control d-inline ml-1" style="width:80px" onchange="reloadTargetSection()">
                        {html_options values=$recordsValues output=$recordsValues selected=$recordsDisplayed}
                        </select>
                    </div>
                    <div class="ml-sm-4 mb-2 pb-1 w-xs-100">
                        <span class="label font-14 pl-0 d-inline-block mr-1">Quick View:</span>
                        <select name="ddlSavedViews" id="ddlSavedViews" class="form-control d-inline" style="max-width:200px" onchange="changeSavedView()">
                        {html_options options=$customViewsArray selected=$customViewID}
                        </select>
                    </div>
                    <div class="ml-sm-4 mb-2 pb-1 mr-4 mr-sm-0">
                        <label for="chkOnlyAlerts" class="mb-0">
                            <input type="checkbox" class="flat-purple minimal-alerts" id="chkOnlyAlerts" name="chkOnlyAlerts"/>
                            <span class="label font-14">Only Alerts</span>
                        </label>
                    </div>
                    <div class="ml-sm-4 mb-2 pb-1 mr-3 mr-sm-0">
                        <button type="button" id="lnkExport4-1" onclick="return false" class="btn btn-default btn-sm mr-3" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i></button>
                        {include file='partChartLink.tpl' reportTypeID=4 levelID=1 extraClass='btn-sm'}
                    </div>
                    <div class="ml-sm-2 mb-2 w-xs-100">{include file='partColumnsMultiselect.tpl' allColumns=$showhideColumnsTarget selectedColumns=$showhideSelectedColumnsTarget reportTypeID=4 closeFunction='changeColumnAjax'}</div>

                </div>

                <div class="d-flex flex-wrap align-items-center justify-content-sm-end SumoSelect-group">
                    <span class="mr-1 mb-2 label font-14 pl-0">Filters:</span>
                    <a href="javascript:;" onclick="resetFilters()" class="mb-2 mr-3 mr-sm-0" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Remove All Filters">
                        <i class="fe fe-x-circle"></i>
                    </a>
                    {include file='partFiltersSection.tpl' controlWidth=230 useAjax=true}
                </div>

                {if $extraWhereClause}
                    <em><strong>Landing Pages</strong></em><br/>
                {/if}

                <div class="mt-2">
                    <table id="tbl{$selectedCampaignID}-4-1" class="{$theme_table_classes} text-nowrap icheckbox-whitebg" style="width:100%"></table>
                </div>
                {if $extraWhereClause}
                    <br/>
                    <em><strong>Direct to Offer</strong>
						<img src="images/spinner.gif" alt="Working..." id="spin4-2" class="ml-4" style="display:none"/></em>
                    <div class="pull-right margin-bottom-10px">
                        {include file='partChartLink.tpl' reportTypeID=4 levelID=2}
                    </div>
                    <div class="table-responsive">
                        <table id="tbl{$selectedCampaignID}-4-2" class="{$theme_table_classes} text-nowrap" style="width:100%"></table>
                    </div>
                {/if}
            </div>

			<div class="d-flex flex-wrap mt-3">
                <div class="form-group mb-0 mw-100">
    				<label class="mr-2">Perform Actions for Targets:</label>
    				<select id="ddlActionT" class="form-control d-inline w-auto mr-2 mw-100">
    						<option value="0">Select Action</option>
    						<option value="1">Mark Selected Targets as Active</option>
    						<option value="2">Mark Selected Targets as Inactive</option>
    						<option value="3">Mark all Targets in Campaign as Active</option>
    						<option value="4">Mark all Targets in Campaign as Inactive</option>
    				</select>
    				<button type="button" onclick="bulkAction('T')" class="btn btn-primary align-bottom mt-2 mt-lg-0">GO</button>
					<img src="images/spinner.gif" alt="Working..." id="spinbT" class="ml-4" style="display:none"/>
                </div>
			</div>
        </div>
    </div>
</div>

{if $showAdSection}
<div class="card" data-widget-sortable="false" data-widget-deletebutton="false" id="wdgStatsAdPerformance">

    <a name="ad" class="fixanchor"></a>

    <div class="card-header">
        <div class="float-right">
            <a data-collapse="#performance-collapse" class="btn btn-icon d-table-cell">
                <i class="ion ion-minus"></i>
            </a>
        </div>
        <h4>Ad Performance<img src="images/spinner.gif" alt="Working..." id="spin16" class="ml-4" style="display:none"/></h4>
    </div>

    <div role="content" class="collapse show" id="performance-collapse">
        <div class="card-body">
            <div id="divAdPerf">
                <div class="d-flex flex-wrap align-items-baseline justify-content-sm-end mb-2 mb-sm-3">
                    <button type="button" id="lnkExport16" onclick="return false" class="btn btn-default btn-sm mr-3 mb-2 mb-sm-0" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i></button>
                    {include file='partChartLink.tpl' reportTypeID=16 levelID=0}
                    <div class="d-inline ml-3"></div>
                    {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumnsAd selectedColumns=$showhideSelectedColumnsAd reportTypeID=16 closeFunction='changeColumnAjax'}
                </div>

                <table id="tbl{$selectedCampaignID}-16" class="{$theme_table_classes} text-nowrap icheckbox-whitebg" style="width:100%"></table>
            </div>

            <div class="d-flex flex-wrap mt-3">
                <div class="form-group mb-0 mw-100">
    				<label class="mr-2">Perform Actions for Ads:</label>
    				<select id="ddlActionA" class="form-control d-inline w-auto mr-2 mw-100">
    						<option value="0">Select Action</option>
    						<option value="1">Mark Selected Ads as Active</option>
    						<option value="2">Mark Selected Ads as Inactive</option>
    						<option value="3">Mark all Ads in Campaign as Active</option>
    						<option value="4">Mark all Ads in Campaign as Inactive</option>
    				</select>
    				<button type="button" onclick="bulkAction('A')" class="btn btn-primary align-bottom mt-2 mt-lg-0">GO</button>
					<img src="images/spinner.gif" alt="Working..." id="spinbA" class="ml-4" style="display:none"/>
				</div>
			</div>
        </div>
    </div>
</div>
{/if}

{if $showLandingSection}
    <div class="card" data-widget-sortable="false" data-widget-deletebutton="false" id="wdgStatsLandingPagePerformance">

        <a name="landing" class="fixanchor"></a>

        <div class="card-header">
            <div class="float-right">
                <a data-collapse="#landing-collapse" class="btn btn-icon d-table-cell">
                    <i class="ion ion-minus"></i>
                </a>
            </div>
            <h4>Landing Page Performance<img src="images/spinner.gif" alt="Working..." id="spin5-1" class="ml-4" style="display:none"/></h4>
        </div>

        <div role="content" class="collapse show" id="landing-collapse">
            <div class="card-body">
                <div id="divLanding">
					{for $i = 1 to $maxLevel-1}
						<div class="row align-items-center" {if !$i@first}style="margin-top: 20px;"{/if}>
							<div class="col-md-3 mb-3 mb-sm-0">
								{if $campaignTypeID == 6}
								<em><strong>Level {$i}{if $levelNames[$i]|default:''}&nbsp;-&nbsp;{$levelNames[$i]}{/if}</strong>
								{if !$i@first}<img src="images/spinner.gif" alt="Working..." id="spin5-{$i}" class="ml-4" style="display:none"/>{/if}</em>
								{/if}
							</div>
                            <div class="col-md-9">
    							<div class="d-flex flex-wrap align-items-baseline justify-content-sm-end mb-2 mb-sm-3">
    								<button type="button" id="lnkExport5-{$i}" onclick="return false" class="btn btn-default btn-sm mr-3 mb-2 mb-sm-0" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i></button>
    								{include file='partChartLink.tpl' reportTypeID=5 levelID=$i}
    								{if $i@first}
                                    <div class="d-inline ml-3"></div>
    								{include file='partColumnsMultiselect.tpl' allColumns=$showhideColumnsLanding selectedColumns=$showhideSelectedColumnsLanding reportTypeID=5 closeFunction='changeColumnAjax'}
    								{/if}
    							</div>
                            </div>
						</div>

						<table id="tbl{$selectedCampaignID}-5-{$i}" class="{$theme_table_classes} text-nowrap icheckbox-whitebg" style="width:100%"></table>
					{/for}

                    {if $showAfterOptInSection}
                        <div class="clearfix mt-3 mb-3 pt-1">
                            <div class="pull-left" class="pt-1">
                                <em><strong>After Opt-In</strong><img src="images/spinner.gif" alt="Working..." id="spin5--1" class="ml-4" style="display:none"/></em>
                            </div>
                            <div class="text-right margin-bottom-10px pull-right">
                                <button type="button" id="lnkExport5--1" onclick="return false" class="btn btn-primary btn-under-tbl-ctrl btn-sm mr-3" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i></button>
                                {include file='partChartLink.tpl' reportTypeID=5 levelID=-1}
                            </div>
                        </div>

                        <div class="table-responsive">
                            <table id="tbl{$selectedCampaignID}-5--1" class="{$theme_table_classes} text-nowrap" style="width:100%"></table>
                        </div>
                    {/if}
                </div>

                <div class="d-flex flex-wrap mt-3">
                    <div class="form-group mb-0 mw-100">
    				    <label class="mr-2">Perform Actions for Pages:</label>
						<select id="ddlActionL" class="form-control d-inline w-auto mr-2 mw-100">
								<option value="0">Select Action</option>
								<option value="1">Mark Selected Pages as Active</option>
								<option value="2">Mark Selected Pages as Inactive</option>
								<option value="3">Mark all Pages in Campaign as Active</option>
						</select>
						<button type="button" onclick="bulkAction('L')" class="btn btn-primary align-bottom mt-2 mt-lg-0">GO</button>
						<img src="images/spinner.gif" alt="Working..." id="spinbL" class="ml-4" style="display:none"/>
					</div>
				</div>
            </div>
        </div>
    </div>

    {if $showThankYouSection}
        <div class="card" data-widget-sortable="false" data-widget-deletebutton="false" id="wdgStatsThankYouPagePerformance">

            <a name="thankyou" class="fixanchor"></a>

            <div class="card-header">
                <div class="float-right">
                    <a data-collapse="#thanks-performance-collapse" class="btn btn-icon d-table-cell">
                        <i class="ion ion-minus"></i>
                    </a>
                </div>
                <h4>Thank You Page Performance<img src="images/spinner.gif" alt="Working..." id="spin12" class="ml-4" style="display:none"/></h4>
            </div>

            <div role="content" class="collapse show" id="thanks-performance-collapse">
                <div class="card-body" role="content">
                    <div id="divThankYou" style="display:block">
                        <div class="text-sm-right mb-3">
                            <button type="button" id="lnkExport12" onclick="return false" class="btn btn-primary btn-sm btn-under-tbl-ctrl" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i></button>
                        </div>

                        <table id="tbl{$selectedCampaignID}-12" class="{$theme_table_classes} text-nowrap" style="width:100%"></table>
                    </div>
                </div>
            </div>
        </div>
    {/if}
{/if}

<div class="card" data-widget-sortable="false" data-widget-deletebutton="false" id="wdgStatsOfferPerformance">

    <a name="offer" class="fixanchor"></a>

    <div class="card-header">
        <div class="float-right">
            <a data-collapse="#offer-collapse" class="btn btn-icon d-table-cell">
                <i class="ion ion-minus"></i>
            </a>
        </div>
        <h4>Offer Performance<img src="images/spinner.gif" alt="Working..." id="spin6" class="ml-4" style="display:none"/></h4>
    </div>
    <div role="content" class="collapse show" id="offer-collapse">
        <div class="card-body">
            <div id="divOffer">
                <div class="d-flex flex-wrap align-items-baseline justify-content-sm-end mb-2 mb-sm-3">
                    <button type="button" id="lnkExport6" onclick="return false" class="btn btn-default btn-sm mr-3 mb-2 mb-sm-0" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i></button>
                    {include file='partChartLink.tpl' reportTypeID=6 levelID=0}
                    <div class="d-inline ml-3"></div>
                    {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumnsOffer selectedColumns=$showhideSelectedColumnsOffer reportTypeID=6 closeFunction='changeColumnAjax'}
                </div>

                <table id="tbl{$selectedCampaignID}-6" class="{$theme_table_classes} text-nowrap icheckbox-whitebg" style="width:100%"></table>
            </div>

            <div class="d-flex flex-wrap mt-3">
                <div class="form-group mb-0 mw-100">
                    <label class="mr-2">Perform Actions for Offers:</label>
					<select id="ddlActionO" class="form-control d-inline w-auto mr-2 mw-100">
							<option value="0">Select Action</option>
							<option value="1">Mark Selected Offers as Active</option>
							<option value="2">Mark Selected Offers as Inactive</option>
							<option value="3">Mark all Offers in Campaign as Active</option>
					</select>
					<button type="button" onclick="bulkAction('O')" class="btn btn-primary align-bottom mt-2 mt-lg-0">GO</button>
					<img src="images/spinner.gif" alt="Working..." id="spinbO" class="ml-4" style="display:none"/>
				</div>
			</div>
        </div>
    </div>
</div>

<div class="card mb-5" data-widget-sortable="false" data-widget-deletebutton="false" id="wdgStatsCampaignPerformance">

    <a name="campaign" class="fixanchor"></a>

    <div class="card-header">
        <div class="float-right">
            <a data-collapse="#campaign-collapse" class="btn btn-icon d-table-cell">
                <i class="ion ion-minus"></i>
            </a>
        </div>
        <h4>Campaign Performance<img src="images/spinner.gif" alt="Working..." id="spin10" class="ml-4" style="display:none"/></h4>
    </div>
    <div role="content" class="collapse show" id="campaign-collapse">
        <div class="card-body">
            <div id="divCampaign">
                <div class="d-flex flex-wrap align-items-baseline justify-content-sm-end mb-2 mb-sm-3">
                    <button type="button" onclick="window.location.href = 'overall-campaign-stats.php'; return false" class="btn btn-info btn-sm mr-3 mb-2 mb-sm-0" data-toggle="tooltip" data-placement="right" title="Campaign View"><i class="fe fe-zoom-in"></i></button>
                    <button type="button" id="lnkExport10" onclick="return false" class="btn btn-default btn-sm mr-3" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i></button>
                    {include file='partChartLink.tpl' reportTypeID=10 levelID=0}
                    <div class="d-inline ml-3"></div>
                    {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumnsCampaign selectedColumns=$showhideSelectedColumnsCampaign reportTypeID=10 closeFunction='changeColumnAjax'}
                </div>

                <table id="tbl{$selectedCampaignID}-10" class="{$theme_table_classes} text-nowrap" style="width:100%"></table>

            </div>
        </div>
    </div>
</div>

<input type="hidden" name="hidSortField" id="hidSortField" value="{$sortField}" />
<input type="hidden" name="hidDirField" id="hidDirField" value="{$dirField}" />
<input type="hidden" name="hidSortField4-1" id="hidSortField4-1" value="{$sortField}" />
<input type="hidden" name="hidDirField4-1" id="hidDirField4-1" value="{$dirField}" />
<input type="hidden" name="hidSortField4-2" id="hidSortField4-2" value="{$sortField}" />
<input type="hidden" name="hidDirField4-2" id="hidDirField4-2" value="{$dirField}" />
<input type="hidden" name="hidSortField16" id="hidSortField16" value="{$sortField}" />
<input type="hidden" name="hidDirField16" id="hidDirField16" value="{$dirField}" />
{for $i = 1 to $maxLevel-1}
<input type="hidden" name="hidSortField5-{$i}" id="hidSortField5-{$i}" value="{$sortField}" />
<input type="hidden" name="hidDirField5-{$i}" id="hidDirField5-{$i}" value="{$dirField}" />
{/for}
{if $showAfterOptInSection}
<input type="hidden" name="hidSortField5--1" id="hidSortField5--1" value="{$sortField}" />
<input type="hidden" name="hidDirField5--1" id="hidDirField5--1" value="{$dirField}" />
{/if}
<input type="hidden" name="hidSortField6" id="hidSortField6" value="{$sortField}" />
<input type="hidden" name="hidDirField6" id="hidDirField6" value="{$dirField}" />
<input type="hidden" name="hidColumn" id="hidColumn" value=""/>
<input type="hidden" name="hidCampaignID" id="hidCampaignID" value="{$selectedCampaignID}"/>
<input type="hidden" name="hidCampaignType" id="hidCampaignType" value="{$campaignTypeID}"/>
<input type="hidden" name="hidReportType" id="hidReportType" value=""/>
<input type="hidden" name="hidFullUrl" id="hidFullUrl" value=""/>
<input type="submit" name="btnColumn" id="btnColumn" style="display:none"/>
<input type="hidden" name="hidWhereClauseChart" id="hidWhereClauseChart" value="{$whereClauseChart}"/>
<input type="hidden" name="hidCurrentCpv" id="hidCurrentCpv" value="{$currentCpv}"/>
<input type="hidden" name="hidUseCaching" id="hidUseCaching" value="{$useCaching}"/>
<input type="hidden" name="hidIntervalFromTimestamp" id="hidIntervalFromTimestamp" value="{$intervalFromTimestamp}"/>
<input type="hidden" name="hidIntervalToTimestamp" id="hidIntervalToTimestamp" value="{$intervalToTimestamp}"/>
<input type="hidden" name="hidIntervalWhereClause" id="hidIntervalWhereClause" value="{$intervalWhereClause}"/>
<input type="hidden" name="hidMaxLevel" id="hidMaxLevel" value="{$maxLevel}"/>
<input type="hidden" name="hidShowTargetExtra" id="hidShowTargetExtra" value="{if $extraWhereClause}1{else}0{/if}"/>
<input type="hidden" name="hidShowAdSection" id="hidShowAdSection" value="{$showAdSection}"/>
<input type="hidden" name="hidShowLandingSection" id="hidShowLandingSection" value="{$showLandingSection}"/>
<input type="hidden" name="hidShowAfterOptInSection" id="hidShowAfterOptInSection" value="{$showAfterOptInSection}"/>
<input type="hidden" name="hidShowThankYouSection" id="hidShowThankYouSection" value="{$showThankYouSection}"/>
<input type="hidden" name="hidDefaultColumns4" id="hidDefaultColumns4" value="{$defaultColumnsTarget}"/>
<input type="hidden" name="hidDefaultColumns16" id="hidDefaultColumns16" value="{$defaultColumnsAd}"/>
<input type="hidden" name="hidDefaultColumns5" id="hidDefaultColumns5" value="{$defaultColumnsLanding}"/>
<input type="hidden" name="hidDefaultColumns6" id="hidDefaultColumns6" value="{$defaultColumnsOffer}"/>
<input type="hidden" name="hidDefaultColumns10" id="hidDefaultColumns10" value="{$defaultColumnsCampaign}"/>
<input type="hidden" id="hidUserRole" value="{$userroleid}"/>

<script type="text/javascript">
    {literal}
		function changeCampaign(withFilters)
		{
			window.location.href = getFullUrl(withFilters);
		}

		function reloadTargetSection()
		{
			ajaxLoadStatsTarget();
			if ($('#hidShowTargetExtra').val()==1)
				setTimeout(ajaxLoadStatsTargetExtra, 2000);
		}

		function reloadAdSection()
		{
			if ($('#hidShowAdSection').val()==1)
				ajaxLoadStatsAd();
		}

		function reloadLandingSection()
		{
			if ($('#hidShowLandingSection').val()==1)
			{
				for (i=1; i<$("#hidMaxLevel").val(); i++)
					setTimeout(ajaxLoadStatsLanding, 2000 + i * 200, i);
				if ($('#hidShowAfterOptInSection').val()==1)
					setTimeout(ajaxLoadStatsLanding, 3000, -1);
			}
		}

		function reloadThankYouSection()
		{
			if ($('#hidShowThankYouSection').val()==1)
				setTimeout(ajaxLoadStatsThankYou, 3500, -1);
		}

		function reloadOfferSection()
		{
			ajaxLoadStatsOffer();
		}

		function reloadCampaingSection()
		{
			ajaxLoadStatsCampaign();
		}

		function getFullUrl(withFilters)
		{
			redirectUrl = 'stats.php?camp=' + $("#ddlCampaigns").val() +
					"&int=" + $("#ddlInterval").val() +
					"&rec=" + $("#ddlRecordsDisplayed").val() +
					($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
							"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '') +
					"&sort=" + $("#hidSortField").val() + "&dir=" + $("#hidDirField").val();
			if (typeof withFilters !== 'undefined' && withFilters)
			{
				$selectedOptions = $('#ddlFilterVisitors').find("option:selected").length;
				if ($selectedOptions != 0 && $selectedOptions != $('#hidFilterVisitorsTotal').val())
				{
					fValue = '&fv=' + $('#ddlFilterVisitors').val();
					redirectUrl += fValue.replace(/,/g, "");
				}
				$selectedOptions = $('#ddlFilterTarget').find("option:selected").length;
				if ($selectedOptions != 0 && $selectedOptions != $('#hidFilterTargetTotal').val())
					redirectUrl += '&ft=' + $('#ddlFilterTarget').val();
				$selectedOptions = $('#ddlFilterLP').find("option:selected").length;
				if ($selectedOptions != 0 && $selectedOptions != $('#hidFilterLPTotal').val())
					redirectUrl += '&fl=' + $('#ddlFilterLP').val();
				$selectedOptions = $('#ddlFilterOffer').find("option:selected").length;
				if ($selectedOptions != 0 && $selectedOptions != $('#hidFilterOfferTotal').val())
					redirectUrl += '&fo=' + $('#ddlFilterOffer').val();
			}
			return redirectUrl;
		}

		function changeColumn(sender, reportType, defaultColumns)
		{
			var ddlvalue = typeof defaultColumns !== 'undefined' ? "default" : $(sender).val();
			//alert($('#hidCurrentColumn' + reportType).val() + "|\\r\\n" + ddlvalue);
			//return;
			if (ddlvalue != null && ddlvalue != '' && ddlvalue != $('#hidCurrentColumn' + reportType).val())
			{
				var fullUrl = getFullUrl(true) + "#";
				switch (reportType)
				{
					case 4:
						fullUrl += "target";
						break
					case 5:
						fullUrl += "landing";
						break;
					case 6:
						fullUrl += "offer";
						break;
					case 10:
						fullUrl += "campaign";
						break;
					case 16:
						fullUrl += "ad";
						break;
				}
				$("#hidFullUrl").val(fullUrl);
				$("#hidReportType").val(reportType);
				$("#hidColumn").val(ddlvalue);
				$("#btnColumn").click();
			}
		}

		function changeColumnAjax(sender, reportType, defaultColumns)
		{
			var ddlvalue = typeof defaultColumns !== 'undefined' ? "default" : $(sender).val();
			if (ddlvalue != null && ddlvalue != '' &&
					($.isArray(ddlvalue) ? ddlvalue.sort().toString() : ddlvalue) != $('#hidCurrentColumn' + reportType).val().split(',').sort().toString())
			{
				var newColumns = $.isArray(ddlvalue) ? ddlvalue.join() : ddlvalue;
				if (newColumns == "default")
				{
					newColumns = $('#hidDefaultColumns' + reportType).val();
					newColumnsArray = newColumns.split(',');
					//console.log(newColumnsArray);
					$("#ddlColumns" + reportType).val(newColumnsArray);
					$("#ddlColumns" + reportType)[0].sumo.reload();
					//console.log($("#ddlColumns" + reportType).val());
				}
				$('#hidCurrentColumn' + reportType).val(newColumns);
				switch(reportType)
				{
					case 4:
						ajaxLoadStatsTarget(newColumns);
						if ($('#hidShowTargetExtra').val()==1)
							setTimeout(ajaxLoadStatsTargetExtra, 2000);
						break;
					case 5:
						ajaxLoadStatsLanding(1, newColumns);
						for (i=2; i<$("#hidMaxLevel").val(); i++)
							setTimeout(ajaxLoadStatsLanding, 1800 + i * 100, i);
						if ($('#hidShowAfterOptInSection').val()==1)
							setTimeout(ajaxLoadStatsLanding, 2500, -1);
						break;
					case 6:
						ajaxLoadStatsOffer(newColumns);
						break;
					case 10:
						ajaxLoadStatsCampaign(newColumns);
						break;
					case 16:
						ajaxLoadStatsAd(newColumns);
						break;
				}
			}
		}

		function changeSavedView()
		{
			if ($('#ddlSavedViews').val() != '')
			{
			//	window.location.href = getFullUrl(true) + "&cv=" + $("#ddlSavedViews").val();
				ajaxLoadStatsTarget(undefined, $("#ddlSavedViews").val());
				ajaxLoadCustomView($("#ddlSavedViews").val());
				if ($('#hidShowTargetExtra').val()==1)
					setTimeout(ajaxLoadStatsTargetExtra, 2000);
			}
		}

		function clickOnlyAlerts(control)
		{
			$('#divTarget table tbody tr:not(.headerRow):not(.alertRow)').fadeToggle(700);
			//$('#divTarget table tr').filter(function() {
			//	return $(this).prop("class") != "headerRow" && $(this).attr("class") != "alertRow";
			//}).fadeToggle(700);
		}

		function reorderingEvent()
		{
			ajaxSaveColumnsOrder();
		}

		function bulkAction(objectType)
		{
			/*var numberSelected = $('.chkcol:checked').length;
			if (numberSelected == 0)
			{
				alert("Please select at least one campaign!");
				return false;
			}*/
			var selectedAction = parseInt($('#ddlAction' + objectType).val());
			if (selectedAction == 0)
			{
				alert("Please select an action to perform!");
				return false;
			}
			if ((selectedAction == 1 || selectedAction == 2) && ($('input[type=checkbox][id^="cc' + objectType + '"]:checked').length == 0))
			{
				alert("Please select at least one object!");
				return false;
			}

			var objectText = '';
			switch(objectType)
			{
				case 'T': objectText = 'targets'; break;
				case 'A': objectText = 'ads'; break;
				case 'L': objectText = 'pages'; break;
				case 'O': objectText = 'offers'; break;
			}
			var messageText = '';
			switch(selectedAction)
			{
				case 1: messageText = 'mark selected ' + objectText + ' as active'; break;
				case 2: messageText = 'mark selected ' + objectText + ' as inactive'; break;
				case 3: messageText = 'mark all ' + objectText + ' in campaign as active'; break;
				case 4: messageText = 'mark all ' + objectText + ' in campaign as inactive'; break;
			}

			confirm("Are you sure you want to " + messageText + "?", function(){
				var selectedObjects = [];
				if (selectedAction == 1 || selectedAction == 2)
				{
					$('input[type=checkbox][id^="cc' + objectType + '"]:checked').each(function() {
						var id=$(this).attr("id").replace("cc" + objectType,"");
						if (selectedObjects.indexOf(id) == -1)
							selectedObjects.push(id);
					});
				}
				ajaxBulkActionStats(selectedAction, selectedObjects.join(), objectType);
			});
		}

		var menuRedirectPage = '';
		var menuNewWindow = false;

		$(document).ready(function () {
			reloadTargetSection();
			reloadAdSection();
			reloadLandingSection();
			reloadThankYouSection();
			reloadOfferSection();
			reloadCampaingSection();

			ajaxLoadChartGeneral();
			initializeModalInlineChart();

			cmKeyword(false, "Apply Filter");
			cmLandingPage(false, "Apply Filter");
			cmOffer(false, "Apply Filter");
			cmCampaign(false, true, false);

			/* Save and restore chart0 collapse state */
			$('#target-collapse-chart0').on('show.bs.collapse hide.bs.collapse', function(e) {
				try {
					var local_ui_settings = localStorage.getItem('local_ui_settings');
					if (local_ui_settings != null) {
						local_ui_settings = JSON.parse(local_ui_settings);
					} else { local_ui_settings = {}; }
				} catch(err) {
					local_ui_settings = {};
				}

				try {
					local_ui_settings['stats_php_chart0_collapse_state'] = e.type;
					localStorage.setItem('local_ui_settings', JSON.stringify(local_ui_settings));
				} catch(err) {

				}
			});
			try {
				var local_ui_settings = localStorage.getItem('local_ui_settings');
				if (local_ui_settings != null) {
					local_ui_settings = JSON.parse(local_ui_settings);
					if (local_ui_settings.hasOwnProperty('stats_php_chart0_collapse_state')) {
						$('#target-collapse-chart0').collapse(local_ui_settings['stats_php_chart0_collapse_state']);
						if (local_ui_settings['stats_php_chart0_collapse_state'] == 'hide') {
							$('*[data-collapse="#target-collapse-chart0"]').find('.ion').addClass('ion-plus').removeClass('ion-minus');
						} else {
							$('*[data-collapse="#target-collapse-chart0"]').find('.ion').addClass('ion-minus').removeClass('ion-plus');
						}
					}
				}
			} catch(err) {

			}
			/* END Save and restore chart0 collapse state */

		});
	{/literal}
</script>

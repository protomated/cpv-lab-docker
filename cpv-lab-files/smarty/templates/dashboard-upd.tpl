{include file='partUpdPage.tpl'}
<div class="dashboard">
    <div class="card">
        <div class="card-header">
            <h4>Date Range</h4>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-sm-auto">
                    <div class="hide-default-label mb-3 mb-lg-0">
                        {include file='partControlIntervalRange.tpl'}
                    </div>
                </div>
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
    </div>

    <div class="row">
        <div class="col-lg-5">
            <div class="card">
                <div class="card-header">
                    <h4>TOP 5</h4>
                </div>

                <div class="card-body pt-3">
                    <div class="clearfix mb-3">
                        <div class="button-group float-left d-flex">
                            <button type="button" class="btn btn-default btn-sm btndir btn-left active">Top</button>
                            <button type="button" class="btn btn-default btn-sm btndir btn-right">Bottom</button>
                        </div>
                        <div class="button-group float-right d-flex">
                            <button type="button" class="btn btn-default btn-sm btnsort btn-left">Cost</button>
                            <button type="button" class="btn btn-default btn-sm btnsort btn-middle">Revenue</button>
                            <button type="button" class="btn btn-default btn-sm btnsort btn-right active">ROI</button>
                        </div>
                    </div>

					<table id="tblDash_Campaign_ROI_Top" class="table table-striped table-bordered table-hover border-t0 text-nowrap text-left">
						<thead>
							<tr>
								<th>Campaign Name</th>
								<th style="width:120px">ROI</th>
							</tr>
						</thead>
					</table>
					<div id="tblCampaigns" class="table-responsive text-center"></div>

					<table id="tblDash_Country_ROI_Top" class="table table-striped table-bordered table-hover border-t0 text-nowrap text-left">
						<thead>
							<tr>
								<th>Country</th>
								<th style="width:120px">ROI</th>
							</tr>
						</thead>
					</table>
					<div id="tblCountries" class="table-responsive text-center"></div>

					<table id="tblDash_TrafficSources_ROI_Top" class="table table-striped table-bordered table-hover border-t0 text-nowrap text-left">
						<thead>
							<tr>
								<th>Traffic Source</th>
								<th style="width:120px">ROI</th>
							</tr>
						</thead>
					</table>
					<div id="tblTrafficSources" class="table-responsive text-center"></div>

					<table id="tblDash_Landing_ROI_Top" class="table table-striped table-bordered table-hover border-t0 text-nowrap text-left">
						<thead>
							<tr>
								<th>Landing Page</th>
								<th style="width:120px">ROI</th>
							</tr>
						</thead>
					</table>
					<div id="tblLanding" class="table-responsive text-center"></div>

					<table id="tblDash_Offer_ROI_Top" class="table table-striped table-bordered table-hover border-t0 text-nowrap text-left">
						<thead>
							<tr>
								<th>Offer Page</th>
								<th style="width:120px">ROI</th>
							</tr>
						</thead>
					</table>
					<div id="tblOffer" class="table-responsive text-center"></div>

                </div>
            </div> <!-- end card -->
        </div>

        <div class="col-lg-7">
            <div class="card">
				<div class="card-header">
                    <h4>Campaigns Chart</h4>
                </div>

				<div class="card-body">
                    <div class="">
						<canvas id="chartCampaigns" class="overflow-hidden"></canvas>
					</div>
				</div>
			</div> <!-- end card -->

            <div class="card">
				<div class="card-header">
                    <h4>Visitors Chart</h4>
                </div>

                <div class="card-body">
					<div class="chart-container-trends mb-0">
						<div id="chartplaceholder0" class="chart-placeholder"></div>
					</div>
	            </div>
			</div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-4">
            <div class="card">
				<div class="card-header">
					<h4 class="card-title">Device Types Share</h4>
				</div>
				<div id="tblDeviceType" class="card-body text-center"></div>
			</div>
        </div>

        <div class="col-lg-4">
            <div class="card">
				<div class="card-header">
					<h4 class="card-title">Browsers Share</h4>
				</div>
				<div id="tblBrowser" class="card-body text-center"></div>
			</div>
        </div>

        <div class="col-lg-4">
            <div class="card">
				<div class="card-header">
					<h4 class="card-title">Operating System Share</h4>
				</div>
				<div id="tblOperatingSystem" class="card-body text-center"></div>
			</div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-body">
		<table id="tblDash_Complete_ROI_Top" style="" class="table table-striped table-bordered table-hover border-t0 text-nowrap text-left">
			<thead>
				<tr>
					<th>ID</th>
					<th>Campaign Name</th>
					<th>Source</th>
					<th>Views</th>
					<th>Cost</th>
					<th>Clicks</th>
					<th>Conversion</th>
					<th>Revenue</th>
					<th>Profit</th>
					<th>ROI</th>
				</tr>
			</thead>
		</table>
        <div id="tblComplete" class="table-responsive">
        </div>
    </div>
</div>

<div id="divHiddens">
	{literal}
<input type="hidden" id="hidChartCostTop" value="{&quot;labels&quot;:[],&quot;data1&quot;:[],&quot;data2&quot;:[],&quot;data3&quot;:[]}">
<input type="hidden" id="hidChartCostBottom" value="{&quot;labels&quot;:[],&quot;data1&quot;:[],&quot;data2&quot;:[],&quot;data3&quot;:[]}">
<input type="hidden" id="hidChartRevenueTop" value="{&quot;labels&quot;:[],&quot;data1&quot;:[],&quot;data2&quot;:[],&quot;data3&quot;:[]}">
<input type="hidden" id="hidChartRevenueBottom" value="{&quot;labels&quot;:[],&quot;data1&quot;:[],&quot;data2&quot;:[],&quot;data3&quot;:[]}">
<input type="hidden" id="hidChartROITop" value="{&quot;labels&quot;:[],&quot;data1&quot;:[],&quot;data2&quot;:[],&quot;data3&quot;:[]}">
<input type="hidden" id="hidChartROIBottom" value="{&quot;labels&quot;:[],&quot;data1&quot;:[],&quot;data2&quot;:[],&quot;data3&quot;:[]}">
	{/literal}
</div>
<input type="hidden" name="hidUseCaching" id="hidUseCaching" value="{$useCaching}"/>
<input type="hidden" name="hidIntervalFromTimestamp" id="hidIntervalFromTimestamp" value="{$intervalFromTimestamp}"/>
<input type="hidden" name="hidIntervalToTimestamp" id="hidIntervalToTimestamp" value="{$intervalToTimestamp}"/>
<input type="hidden" name="hidIntervalWhereClause" id="hidIntervalWhereClause" value="{$whereClauseChart}"/>
<input type="hidden" name="hidWhereClauseChart" id="hidWhereClauseChart" value="{$whereClauseChart}"/>

<script type="text/javascript">
	$(document).ready(function () {
	ajaxDashLoadCampaignsChart();
	showChartPlaceholder("spnCampaigns", "tblCampaigns");
	showChartPlaceholder("spnComplete", "tblComplete");
	showChartPlaceholder("spnCountries", "tblCountries");
	showChartPlaceholder("spnTrafficSources", "tblTrafficSources");
	showChartPlaceholder("spnLanding", "tblLanding");
	showChartPlaceholder("spnOffer", "tblOffer");
	showChartSpinner("spnChartCampaigns", "chartCampaigns");
	showChartSpinner("spnDeviceType", "tblDeviceType");
	showChartSpinner("spnBrowser", "tblBrowser");
	showChartSpinner("spnOperatingSystem", "tblOperatingSystem");
		
		$('.btnsort').on("click", function() {
			$('.btnsort').removeClass("active");
			$(this).addClass("active");
			ajaxDashShowTable();
		});
		$('.btndir').on("click", function() {
			$('.btndir').removeClass("active");
			$(this).addClass("active");
			ajaxDashShowTable();
		});
	});
	function changeCampaign()
	{
		window.location.href = getFullUrl();
	}

	function getFullUrl()
	{
		redirectUrl = 'dashboard.php?' +
				"int=" + $("#ddlInterval").val() +
				($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
						"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '');
		return redirectUrl;
	}
</script>
<script src="style-spl/plugins/Chart.js/dist/Chart.bundle.js"></script>

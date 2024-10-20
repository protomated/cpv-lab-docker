{if !$campaignID}{include file='partUpdCampaignType.tpl' campaignType='Lead Capture & Opt-In Campaign'}{/if}
{include file="partMessage.tpl"}

<div id="wdgCampaignModifyLC">

	{include file='partCampAddEditControls.tpl' campaignTypeStr='lead-capture'}

	<div id="divDestinations">
		<div class="card">
			<div class="card-header">
				<div class="float-right">
				  <a data-collapse="#card-landing-pages" class="btn btn-icon d-table-cell">
					<i class="ion ion-minus"></i>
				  </a>
				</div>
				<h4>Landing Pages</h4>
			</div>

			<div class="collapse show" id="card-landing-pages">
				<div class="card-body">

					{include file='partLPSection.tpl' pathID='' suffix=''}
		            <div class="mt-2">
		                <button onclick="addDestinationLeadCapture(1, 0); return false" class="btn btn-primary btn-sm">
		                    <i class="fa fa-plus"></i> Add Landing Page
		                </button>
		            </div>
				</div>
			</div>
		</div>

		<div id="divOptIn1" style="display:{if $trackingIndex != 1}none{else}block{/if}">
			<div class="card">
				{include file='partAfterOptinSection.tpl' campaignTypeAddFunctionName='addDestinationLeadCapture(1, 0)'}
			</div>
		</div>

		<div id="divOptIn2" style="display:{if $trackingIndex == 4}none{else}block{/if}">
			<div class="card">
				<div class="card-header">
					<div class="float-right">
		              <a data-collapse="#card-offers" class="btn btn-icon d-table-cell">
		                <i class="ion ion-minus"></i>
		              </a>
		            </div>
					<h4>Offers</h4>
				</div>

				<div class="collapse show" id="card-offers">
					<div id="divOffers" class="card-body">
						{include file='partOfferSection.tpl' pathID='' suffix=''}

						<div class="mt-2">
							<div id="divAddOffer" style="display:{if $trackingIndex == 4}none{else}inline{/if}">
								<button onclick="addDestinationLeadCapture(0, 1);
										return false" class="btn btn-primary btn-sm">
									<i class="fa fa-plus"></i> Add Offer
								</button>

								<!--<button onclick="addDestinationLeadCapture(1, 0); return false" class="btn btn-primary btn-sm">
									<i class="fa fa-plus"></i> Add Landing Page
								</button>-->
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<div id="divHtmlNewlp" class="d-none">{include file='partHtmlNewLP.tpl' i=null}</div>
	<div id="divHtmlNewao" class="d-none">{include file='partHtmlNewAfter.tpl' i=null}</div>
	<div id="divHtmlNewOffer" class="d-none">{include file='partHtmlNewOffer.tpl' i=null}</div>

	<input type="hidden" name="hidID" id="hidID" value="{$campaignID}"/>
	<input type="hidden" id="hidCampaignTypeID" value="{$campaignTypeID}"/>
	<input type="hidden" name="hidDestinationToShow" id="hidDestinationToShow" value="{$destinationToShow}"/>
	<input type="hidden" name="hidOffersToShow" id="hidOffersToShow" value="{$offersToShow}"/>
	<input type="hidden" name="hidTrackingIndex" id="hidTrackingIndex" value="{$trackingIndex}"/>
	<input type="hidden" name="hidAssignAutoIDs" id="hidAssignAutoIDs" value="{$assignAutoIDs}"/>
	<input type="hidden" id="hidExtraTokensNumber" value="{$extraTokensNumber}"/>
	{include file='partTrackingPageNames.tpl'}

	{include file='partCtrlCampNotes.tpl'}
	{include file='partCtrlButtons.tpl' campSuffix='LeadCapture'}
</div>
	
{if $campaignID}
<div class="row" id="wdgCampaignLinksPixelsLC">
	<div class="col-xl-6">
		<div class="card">
			<div class="card-header">
				<div class="float-right">
	              <a data-collapse="#card-links-pixels" class="btn btn-icon d-table-cell">
	                <i class="ion ion-minus"></i>
	              </a>
	            </div>
				<h4>Links &amp; Pixels</h4>
			</div>

			<div class="collapse show" id="card-links-pixels">
				<div class="card-body">
					{include file='partCampaignUrlSection.tpl'}

					<div class="mt-4 pt-2">
						{include file='partStep1NextLinks.tpl'}
					</div>

					<div class="mt-4 pt-2">
						{include file='partStep2LPCode.tpl'}
					</div>

					<div class="mt-4 pt-2">
						{include file='partStep3ThankYouCode.tpl'}
					</div>

					<div class="mt-4 pt-2">
						{include file='partStep4ThankYouLinks.tpl'}
					</div>

					{include file='partPassTargetToLPVariable.tpl'}
				</div>
			</div>
		</div>
	</div>

	<div class="col-xl-6">
		<div class="card">
			<div class="card-header">
				<div class="float-right">
	              <a data-collapse="#card-tracking-pixel" class="btn btn-icon d-table-cell">
	                <i class="ion ion-minus"></i>
	              </a>
	            </div>
				<h4>Tracking Pixel: Add Pixel to Offer Source</h4>
			</div>

			<div class="collapse show" id="card-tracking-pixel">
				<div class="card-body">
					{include file='partPixelVariationsSection.tpl'}
					{include file='partTrackingPixelsSection.tpl'}
				</div>
			</div>
		</div>
	</div>

	<div class="col-12">
		<div class="card">
			<div class="card-header">
		        <div class="float-right">
		          <a data-collapse="#card-lp-protection" class="btn btn-icon d-table-cell">
		            <i class="ion ion-plus"></i>
		          </a>
		        </div>
		        <h4>Landing Page Protection</h4>
		    </div>

			<div class="collapse" id="card-lp-protection">
				<div class="card-body">
					{include file='partLandingPageProtect.tpl'}
				</div>
			</div>
		</div>
	</div>

	<div class="col-12">
		<div class="card">
			<div class="card-body pb-2">
				{include file='partCtrlButtons2.tpl'}
			</div>
		</div>
	</div>

	<div class="col-12">
		{include file="partRedirectProfiles.tpl"}
	</div>
</div>

{include file="partTokensOverlay.tpl"}
{include file="partAdditionalOverlay.tpl"}
{/if}

<script type="text/javascript">
	{literal}
		function clickTracking(tracking)
		{
			$('#hidTrackingIndex').val(tracking);
			tracking == 1 ? $('#divOptIn1').slideDown(700) : $('#divOptIn1').slideUp(700);
			tracking == 4 ? $('#divOptIn2').slideUp(700) : $('#divOptIn2').slideDown(700);
			tracking == 4 ? $('#divAddOffer').fadeOut(700) : $('#divAddOffer').fadeIn(700).css('display', 'inline');
		}
	{/literal}
	function clickBlankPages()
	{
		hideBlankPagesAll($('#hidDestinationToShow').val(), 'LP', '', 'dlp');
		hideBlankPagesAll($('#hidDestinationToShow').val(), 'After', '', 'dao');
		hideBlankPagesAll($('#hidOffersToShow').val(), 'Offer', '', 'dof');
	}
	$(document).ready(function () {
		clickInactiveLPAll({$destinationToShow}, 'LP');
		clickInactiveLPAll({$destinationToShow}, 'After');
		clickInactiveOfferAll({$offersToShow}, '');
		{if $campaignID}
		initializeCampaignSetupReady();
		{/if}
	});
	{include file='partScriptCommands.tpl'}
</script>

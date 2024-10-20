{include file="partMessage.tpl"}

<div id="wdgCampaignModifyDL">

	{include file='partCampAddEditControls.tpl' campaignTypeStr='direct-and-landing'}

	<div id="divDestinations">
		<div id="divLandingPages" class="card" {if $destinationIndex == 2}style="display:none"{/if}>
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

					<button type="button" onclick="addDestinationDirectLink(1, 0); return false" class="btn btn-primary btn-sm mt-2">
						<i class="fa fa-plus"></i> Add Landing Page
					</button>
				</div>
			</div>
		</div>

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

					<div id="divAddDestination" class="mt-2">
						<button onclick="addDestinationDirectLink(0, 1); return false" class="btn btn-primary btn-sm">
							<i class="fa fa-plus"></i> Add Offer
						</button>

						<!--<button onclick="addDestinationDirectLink(1, 0); return false"
								class="btn btn-primary" {if $destinationIndex == 2}style="display:none"{else}style="display:inline"{/if}>
							<i class="fa fa-plus"></i> Add Landing Page
						</button>-->
					</div>
				</div>
			</div>
		</div>

		<div class="card" style="display:none" id="divIntermediateHop">
			<div class="card-header">
				<div class="float-right">
	              <a data-collapse="#card-intermediatehop" class="btn btn-icon d-table-cell">
	                <i class="ion ion-minus"></i>
	              </a>
	            </div>
				<h4>Intermediate Hop (optional)</h4>
			</div>
			<div class="collapse show" id="card-intermediatehop">
				<div class="card-body">
					<p>
						If an intermediate hop is required before the Offer redirect, then this can be done only to another <a href="https://support.google.com/google-ads/answer/13707634" target="_blank">Google certified domain</a>.
						<br/>
						Enter the intermediate redirect URL below and make sure that you add the transparency paramter (redirect parameter) supported by the link provider.
						<br/>
						Failing to use a certified domain or missing transparency parameter will lead to ads disapprove and potential Google account suspension.
						<br/><br/>
						Complete details about setting up Google Ads campaigns with the Tracking Template can be found in <a href="https://doc.cpvlab.pro/CPVOne/google-certified-tracker-domain.html" target="_blank">this article from our Online Documentation</a>.
					</p>
					{include file='partIntermediateHopSection.tpl'}
				</div>
			</div>
		</div>
	</div>
	<div id="divHtmlNewlp" class="d-none">{include file='partHtmlNewLP.tpl' i=null}</div>
	<div id="divHtmlNewOffer" class="d-none">{include file='partHtmlNewOffer.tpl' i=null}</div>

	<input type="hidden" name="hidID" id="hidID" value="{$campaignID}"/>
	<input type="hidden" id="hidCampaignTypeID" value="{$campaignTypeID}"/>
	<input type="hidden" name="hidDestinationToShow" id="hidDestinationToShow" value="{$destinationToShow}"/>
	<input type="hidden" name="hidOffersToShow" id="hidOffersToShow" value="{$offersToShow}"/>
	<input type="hidden" name="hidDestinationIndex" id="hidDestinationIndex" value="{$destinationIndex}"/>
	<input type="hidden" name="hidAssignAutoIDs" id="hidAssignAutoIDs" value="{$assignAutoIDs}"/>
	<input type="hidden" id="hidExtraTokensNumber" value="{$extraTokensNumber}"/>
	<input type="hidden" id="hidCertifiedDomainID" value="{$certifiedDomainID|default:''}"/>
	<input type="hidden" id="hidCertifiedDomainValue" value="{$certifiedDomainValue|default:''}"/>
	<input type="hidden" id="hidIntermediateHopCheck" value="1"/>
	{include file='partTrackingPageNames.tpl'}

	{include file='partCtrlCampNotes.tpl'}
	{include file='partCtrlButtons.tpl' campSuffix='DirectLink'}

</div>

<div class="row" id="wdgCampaignLinksPixelsDL">

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
					<div id="divStep1" class="mt-4 pt-2" {if $destinationIndex == 2}style="display:none"{/if}>
						{include file='partStep1NextLinks.tpl'}
					</div>
					<div id="divStep2" class="mt-4 pt-2" {if $destinationIndex == 2}style="display:none"{/if}>
						{include file='partStep2LPCode.tpl'}
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

<script type="text/javascript">
	{literal}
		function clickDestination(index)
		{
			$('#hidDestinationIndex').val(index);
			index == 2 ? $('#divLandingPages').slideUp(700) : $('#divLandingPages').slideDown(700);
			index == 2 ? $('#divStep1').slideUp(700) : $('#divStep1').slideDown(700);
			index == 2 ? $('#divStep2').slideUp(700) : $('#divStep2').slideDown(700);
			index == 3 ? $('#spanSplit').fadeIn(700) : $('#spanSplit').fadeOut(700);
			updateDestinationUrl();
		}
		function clickBlankPages()
		{
			hideBlankPagesAll($('#hidDestinationToShow').val(), 'LP', '', 'dlp');
			hideBlankPagesAll($('#hidOffersToShow').val(), 'Offer', '', 'dof');
		}
	{/literal}
	$(document).ready(function () {
		clickInactiveLPAll({$destinationToShow}, 'LP');
		clickInactiveOfferAll({$offersToShow}, '');
		initializeCampaignSetupReady();
		clickUseCertifiedDomain();
	});

	{include file='partScriptCommands.tpl'}
</script>

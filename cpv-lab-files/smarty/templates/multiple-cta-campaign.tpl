{if !$campaignID}{include file='partUpdCampaignType.tpl' campaignType='Multiple Options Campaign'}{/if}
{include file="partMessage.tpl"}

<div id="wdgCampaignModifyMC">

	{include file='partCampAddEditControls.tpl' campaignTypeStr='multiple-cta'}

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
		                <button onclick="addDestinationMultipleOptions(1, 0, 0); return false" class="btn btn-primary btn-sm">
		                    <i class="fa fa-plus"></i> Add Landing Page
		                </button>
			        </div>
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

					<div id="sectionoption">
					{for $k=0 to $pathsToShow-1}
						{include file='partHtmlNewOption.tpl' pathID=$k suffix=$k|cat:'_' paddingTop=12 includingCampaignType='mo'}
					{/for}
					</div>
				</div>
			</div>
		</div>

	<div id="divHtmlNewlp" class="d-none">{include file='partHtmlNewLP.tpl' i=null}</div>
	<div id="divHtmlNewOffer" class="d-none">{include file='partHtmlNewOffer.tpl' i=null}</div>
	<div id="divHtmlNewOption" class="d-none">{include file='partHtmlNewOption.tpl' k=null suffix=null paddingTop=12 includingCampaignType='mo'}</div>

	<input type="hidden" name="hidID" id="hidID" value="{$campaignID}"/>
	<input type="hidden" id="hidCampaignTypeID" value="{$campaignTypeID}"/>
	<input type="hidden" name="hidDestinationToShow" id="hidDestinationToShow" value="{$destinationToShow}"/>
	<input type="hidden" name="hidOffersToShow" id="hidOffersToShow" value="{$offersToShow}"/>
	<input type="hidden" name="hidPathsToShow" id="hidPathsToShow" value="{$pathsToShow}"/>
	<input type="hidden" name="hidAssignAutoIDs" id="hidAssignAutoIDs" value="{$assignAutoIDs}"/>
	<input type="hidden" id="hidExtraTokensNumber" value="{$extraTokensNumber}"/>
	{include file='partTrackingPageNames.tpl'}

	{include file='partCtrlCampNotes.tpl'}
	{include file='partCtrlButtons.tpl' campSuffix='MultipleOptions'}
</div>

{if $campaignID}
<div class="row" id="wdgCampaignLinksPixelsMC">
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

<br/><br/><br/>

<script type="text/javascript">
	function clickBlankPages()
	{
		hideBlankPagesAll($('#hidDestinationToShow').val(), 'LP', '', 'dlp');
		for (j = 0; j < $('#hidPathsToShow').val(); j++)
		{
			hideBlankPagesAll($('#hidOffersToShow').val(), 'Offer', j + '_', 'dof');
		}
	}
	$(document).ready(function () {
		clickInactiveLPAll({$destinationToShow}, 'LP');
		for (j = 0; j <{$pathsToShow}; j++)
			clickInactiveOfferAll({$offersToShow}, j + '_');
		{if $campaignID}
		initializeCampaignSetupReady();
		{/if}
	});
	{include file='partScriptCommands.tpl'}
</script>

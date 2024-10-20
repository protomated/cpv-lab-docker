{include file="partMessage.tpl"}

<div id="wdgCampaignModifyEF">

	{include file='partCampAddEditControls.tpl' campaignTypeStr='email-follow-up'}

	<div class="card">
		<div class="card-header">
			<div class="float-right">
			  <a data-collapse="#card-landing-offer" class="btn btn-icon d-table-cell">
				<i class="ion ion-minus"></i>
			  </a>
			</div>
			<h4>Landing Pages &amp; Offers</h4>
		</div>

		<div class="collapse show" id="card-landing-offer">
			<div class="card-body">
				<div id="divDestinations" class="mb-3">
					{for $k=0 to $pathsToShow-1}
						{include file='partHtmlNewEmail.tpl' pathID=$k suffix=$k|cat:'_'}
					{/for}
				</div>

				<button onclick="addDestinationEmailFollowUp(0, 0, 1); return false" class="btn btn-primary">
					<i class="fa fa-plus"></i> Add Email
				</button>
			</div>
		</div>
	</div>

	<div id="divHtmlNewlp" class="d-none">{include file='partHtmlNewLP.tpl' i=null}</div>
	<div id="divHtmlNewOffer" class="d-none">{include file='partHtmlNewOffer.tpl' i=null}</div>
	<div id="divHtmlNewEmail" class="d-none">{include file='partHtmlNewEmail.tpl' k=null suffix=null}</div>

	<input type="hidden" name="hidID" id="hidID" value="{$campaignID}"/>
	<input type="hidden" id="hidCampaignTypeID" value="{$campaignTypeID}"/>
	<input type="hidden" name="hidPathsToShow" id="hidPathsToShow" value="{$pathsToShow}"/>
	<input type="hidden" name="hidDestinationToShow" id="hidDestinationToShow" value="{$destinationToShow}"/>
	<input type="hidden" name="hidOffersToShow" id="hidOffersToShow" value="{$offersToShow}"/>
	<input type="hidden" name="hidDestinationIndex" id="hidDestinationIndex" value="{$destinationIndex}"/>
	<input type="hidden" name="hidAssignAutoIDs" id="hidAssignAutoIDs" value="{$assignAutoIDs}"/>
	<input type="hidden" id="hidExtraTokensNumber" value="{$extraTokensNumber}"/>
	{include file='partTrackingPageNames.tpl'}

	{include file='partCtrlCampNotes.tpl'}
	{include file='partCtrlButtons.tpl' campSuffix='EmailFollowUp'}

</div>

<div class="row" id="wdgCampaignLinksPixelsEF">
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

					{include file='partCampaignUrlSection.tpl' title='Link to include in Emails' subtitle="        Replace 'xxx' with the Email # for the email that you are sending." suffix='&id=xxx' testSuffix='&id=1'}

					<div class="mt-4 pt-2">
						{include file='partStep1NextLinks.tpl'}
					</div>
					<div class="mt-4 pt-2">
						{include file='partStep2LPCode.tpl'}
					</div>
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
			var currentIndex = 0;
			var currentDiv = $('#divLandingPages' + currentIndex);
			while (currentDiv.length > 0)
			{
				index == 2 ? currentDiv.slideUp(700) : currentDiv.slideDown(700);
				currentIndex++;
				currentDiv = $('#divLandingPages' + currentIndex);
			}
			index == 2 ? $('#divStep1').slideUp(700) : $('#divStep1').slideDown(700);
			index == 2 ? $('#divStep2').slideUp(700) : $('#divStep2').slideDown(700);
			index == 2 ? $('#divAddDestination').fadeOut(700) : $('#divAddDestination').fadeIn(700).css('display', 'inline');
			index == 2 ? $('.id_divAddDestination').fadeOut(700) : $('.id_divAddDestination').fadeIn(700).css('display', 'inline');
		}
		function addLPBtnDisplaying()
		{
			var index = $('#hidDestinationIndex').val();
			index == 2 ? $('.id_divAddDestination').hide() : $('.id_divAddDestination').show().css('display', 'inline');
		}
	{/literal}
	function clickBlankPages()
	{
		for (j = 0; j < $('#hidPathsToShow').val(); j++)
		{
			hideBlankPagesAll($('#hidDestinationToShow').val(), 'LP', j + '_', 'dlp');
			hideBlankPagesAll($('#hidOffersToShow').val(), 'Offer', j + '_', 'dof');
		}
	}
	$(document).ready(function () {
		for (j = 0; j <{$pathsToShow}; j++)
		{
			clickInactiveLPAll({$destinationToShow}, 'LP' + j + '_');
			clickInactiveOfferAll({$offersToShow}, j + '_');
		}
		initializeCampaignSetupReady();
	});
	{include file='partScriptCommands.tpl'}
</script>

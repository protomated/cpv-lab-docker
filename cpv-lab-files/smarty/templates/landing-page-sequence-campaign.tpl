{if !$campaignID}{include file='partUpdCampaignType.tpl' campaignType='Landing Page Sequence Campaign'}{/if}
{include file="partMessage.tpl"}

<div id="wdgCampaignModifyLPS">

	{include file='partCampAddEditControls.tpl' campaignTypeStr='landing-page-sequence'}

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

			<div class="collapse show" id="card-landings">
	            <div class="card-body" id="sectionlevel">
					{for $k=0 to $pathsToShow-1}
						{include file='partHtmlNewLevel.tpl' pathID=$k suffix=$k|cat:'_' paddingTop=12 showDirectTrafficIcon=($k == 0)}
					{/for}
				</div>
			</div>
		</div>

		<div id="divOptIn1" style="display:{if $destinationIndex == 2 || $trackingIndex != 1}none{else}block{/if}">
			<div class="card">
				{include file='partAfterOptinSection.tpl'}

			</div>
		</div>

		<div id="divOptIn2" style="display:{if $destinationIndex == 4 && $trackingIndex == 3}none{else}block{/if}">
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
		            <div class="card-body">
						<div id="sectionoption">
			            {for $k=0 to $optionsToShow-1}
							{include file='partHtmlNewOption.tpl' pathID=$k suffix=$k|cat:'_' paddingTop=12 includingCampaignType='lps'}
			            {/for}
						</div>

						<div id="divOptIn3" style="display:{if $destinationIndex == 2 || $trackingIndex != 3}none{else}block{/if}">
						</div>
					</div>
				</div>
            </div>

		</div>
	</div>

	<div id="divHtmlNewlp" class="d-none">{include file='partHtmlNewLP.tpl' i=null}</div>
	<div id="divHtmlNewao" class="d-none">{include file='partHtmlNewAfter.tpl' i=null}</div>
	<div id="divHtmlNewOffer" class="d-none">{include file='partHtmlNewOffer.tpl' i=null}</div>
	<div id="divHtmlNewLevel" class="d-none">{include file='partHtmlNewLevel.tpl' k=null suffix=null paddingTop=12 showDirectTrafficIcon=false}</div>
	<div id="divHtmlNewOption" class="d-none">{include file='partHtmlNewOption.tpl' k=null suffix=null paddingTop=12 includingCampaignType='lps'}</div>

	<input type="hidden" name="hidID" id="hidID" value="{$campaignID}"/>
	<input type="hidden" id="hidCampaignTypeID" value="{$campaignTypeID}"/>
	<input type="hidden" name="hidDestinationToShow" id="hidDestinationToShow" value="{$destinationToShow}"/>
	<input type="hidden" name="hidOffersToShow" id="hidOffersToShow" value="{$offersToShow}"/>
	<input type="hidden" name="hidPathsToShow" id="hidPathsToShow" value="{$pathsToShow}"/>
	<input type="hidden" name="hidOptionsToShow" id="hidOptionsToShow" value="{$optionsToShow}"/>
	<input type="hidden" name="hidDestinationIndex" id="hidDestinationIndex" value="{$destinationIndex}"/>
	<input type="hidden" name="hidTrackingIndex" id="hidTrackingIndex" value="{$trackingIndex}"/>
	<input type="hidden" name="hidAssignAutoIDs" id="hidAssignAutoIDs" value="{$assignAutoIDs}"/>
	<input type="hidden" id="hidExtraTokensNumber" value="{$extraTokensNumber}"/>
	{include file='partTrackingPageNames.tpl'}

	{include file='partCtrlCampNotes.tpl'}
	{include file='partCtrlButtons.tpl' campSuffix='PageSequence'}

</div>

{if $campaignID}
<div class="row" id="wdgCampaignLinksPixelsLPS">
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

			        <div class="mt-4 pt-2">
			            <div class="row">
							<div class="col-12">
								<h6 class="font-weight-bold">Step 5: Edit All Offer Links</h6>
								<div class="form-group mb-0">
									<label>Add 'cogid=xxx' only if you have more than one option group.<br/>
											<b>xxx</b> should be the Option #
									</label>
									<div class="input-group">
										<input type="text" id="txtStep5" class="form-control" readonly="readonly" onclick="select_all(this)"/>
										{include file="partCopyClipboard.tpl"}
									</div>
								</div>
							</div>
			            </div>
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
		function clickDestinationTracking(destination, tracking)
		{
			if (destination == -1)
				destination = $('#hidDestinationIndex').val();
			else
				$('#hidDestinationIndex').val(destination);
			if (tracking == -1)
				tracking = $('#hidTrackingIndex').val();
			else
				$('#hidTrackingIndex').val(tracking);

			destination == 4 ? $('#divOptIn').slideDown(700) : $('#divOptIn').slideUp(700);
			destination == 4 ? $('#divLeadCapture').slideDown(700) : $('#divLeadCapture').slideUp(700);
			destination == 4 && tracking == 1 ? $('#divOptIn1').slideDown(700) : $('#divOptIn1').slideUp(700);
			destination == 4 && tracking == 3 ? $('#divOptIn2').slideUp(700) : $('#divOptIn2').slideDown(700);
			destination == 4 && tracking == 3 ? $('#divOptIn3').slideDown(700) : $('#divOptIn3').slideDown(700);
			destination == 4 && tracking == 3 ? $('#divAddOffer').fadeOut(700) : $('#divAddOffer').fadeIn(700).css('display', 'inline');
		}
	{/literal}
	function clickBlankPages()
	{
		for (j = 0; j < $('#hidPathsToShow').val(); j++)
		{
			hideBlankPagesAll($('#hidDestinationToShow').val(), 'LP', j + '_', 'dlp');
		}
		hideBlankPagesAll($('#hidDestinationToShow').val(), 'After', '', 'dao');
		for (j = 0; j < $('#hidOptionsToShow').val(); j++)
		{
			hideBlankPagesAll($('#hidOffersToShow').val(), 'Offer', j + '_', 'dof');
		}
	}
	$(document).ready(function () {
		for (j = 0; j <{$pathsToShow}; j++)
			clickInactiveLPAll({$destinationToShow}, 'LP' + j + '_');
		clickInactiveLPAll({$destinationToShow}, 'After');
		for (j = 0; j <{$optionsToShow}; j++)
			clickInactiveOfferAll({$offersToShow}, j + '_');
		{if $campaignID}
		initializeCampaignSetupReady();
		{/if}
	});
	{include file='partScriptCommands.tpl'}
</script>

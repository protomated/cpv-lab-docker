<!--Form Wizard css-->
<link rel="stylesheet" href="style-spl/plugins/formwizard/smart_wizard.css?v=110">
<link rel="stylesheet" href="style-spl/plugins/formwizard/smart_wizard_theme_arrows.css?v=110">
<link rel="stylesheet" href="style-spl/plugins/formwizard/smart_wizard_theme_circles.css?v=110">
<link rel="stylesheet" href="style-spl/plugins/formwizard/smart_wizard_theme_dots.css?v=110">

<!--row open-->
<div class="row" data-date="2020">
    <div class="col-12">
        <div class="card">
            <div class="card-body pb-4">
                <div id="smartwizard-1">
                    <ul>
                        <li><a href="#step-1">1. Campaign Settings</a></li>
                        <li><a href="#step-2">2. Networks &amp; Pages</a></li>
                        <li><a href="#step-3">3. Tracking Links</a></li>
                    </ul>
                    <div class="mt-4">
                        <div id="step-1" class="border-0">
                            <header class="mb-4">
                                <h3 style="float:left">Step 1 - Campaign Settings</h3>
                                <a href="direct-and-landing-campaign.php?id={$campaignID}" style="float:right">Advanced Setup</a>
                                <div style="clear:both"></div>
                            </header>
                            <div role="content">

                                {include file='partMaxInputsSection.tpl'}

                                <div class="row">
                                <div class="col-12 col-lg-10">
                                    <div class="row align-items-end">
                                        <div class="col-12 col-md-7">
                                            <div class="form-group">
                                                <label>Campaign Name</label>
                                                {include file='partCtrlCampName.tpl'}
                                            </div>
                                        </div>
                                        <div class="col-6 col-md-2">
                                            <div class="form-group">
                                                <label>Campaign ID</label>
                                                {include file='partCtrlCampId.tpl'}
                                            </div>
                                        </div>
                                        <div class="col-6 col-md-3 col-lg-2 mb-4">
                                            {include file='partCtrlCampInactive.tpl'}
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-12 col-md-7">
                                            <div class="form-group">
                                                <label>{include file='partCtrlCampTrackingDomainLabel.tpl'}</label>
                                                {include file='partCtrlCampTrackingDomain.tpl'}
                                            </div>
                                        </div>
                                        <div class="col col-12 col-md-5 col-lg-4">
                                            <div class="form-group">
                                                <label>{include file='partCtrlCampCaptureOptionsLabel.tpl'}</label>
                                                {include file='partCtrlCampCaptureOptions.tpl'}
                                            </div>
                                        </div>
                                    </div>

                                    
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>Campaign Notes</label>
                                            <div class="input-group">
                                            <textarea id="txtNotes" rows="3" class="form-control">{$campaignDetails.Notes|default:''}</textarea>
                                            {include file="partCopyClipboard.tpl"}
                                            <input type="hidden" name="hidNotes" id="hidNotes" />
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            <div clas="col-12 col-lg-2">
                                
                                <div class="row">
                                    <div class="col-12">
                                    <div class="form-group mt-3 mb-0">
                                        <label>Campaign Type {include file='partCampaignTooltip.tpl'}</label>
                                        <div>
                                            <label for="radOffer" class="mr-3">
                                                <input type="radio" class="flat-purple minimal-campaigntype"
                                                    name="radDestinationType" id="radOffer" value="2" {if
                                                    $destinationIndex==2}checked="checked" {/if} />
                                                Direct Link
                                            </label>
                                            <br/>
                                            <label for="radLandingPage" class="mr-3">
                                                <input type="radio" class="flat-purple minimal-campaigntype"
                                                    name="radDestinationType" id="radLandingPage" value="1" {if
                                                    $destinationIndex==1}checked="checked" {/if} />
                                                Landing Page
                                            </label>
                                            <br/>
                                            <label for="radSplit" class="mr-3">
                                                <input type="radio" class="flat-purple minimal-campaigntype"
                                                    name="radDestinationType" id="radSplit" value="3" {if
                                                    $destinationIndex==3}checked="checked" {/if} />
                                                Split
                                            </label>
                                            <br/>
                                            <span id="spanSplit" class="mt-1"
                                                style="display:{if $destinationIndex == 3}inline{else}none{/if}">
                                                <div class="mt-1">
                                                    <input type="text" name="txtSplitShare" class="form-control text-center" value="{$campaignDetails.SplitShare}" onblur="validateInt(this, 0, 100)" style="display: inline-block; width: 50px;" />
                                                    <span>&nbsp;% to LPs</span>
                                                </div>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>

                            </div>
                        </div>

                        <div id="step-2" class="border-0">
                            <header class="mb-4">
                                <h3 style="float:left">Step 2 - Traffic Source &amp; Pages</h3>
                                <a href="direct-and-landing-campaign.php?id={$campaignID}" style="float:right">Advanced Setup</a>
                                <div style="clear:both"></div>
                            </header>
                            <div role="content">

                                
                        <div class="row">
                            <div class="col-md-4 col-xl-2 offset-xl-2-custom pl-xl-2">
                                <div class="form-group">
                                    <label>{include file='partCtrlCampPredefinedSourceLabel.tpl'}</label>

                                    {include file='partCtrlCampPredefinedSource.tpl'}
                                </div>
                                <div id="divSourceSection" style="display: none;">
                                    {include file='partCtrlCampSourceId.tpl'}
                                    {include file='partCtrlCampSource.tpl'}
                                </div>
                            </div>

                            <div class="col-lg-5 col-md-6 mt-3 mt-md-0">
                                <div class="form-group">
                                    <label>Bid | Cost {include file='partTooltip.tpl' tooltipID=8}</label>
                                    {include file='partCtrlCampBid.tpl'}
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>&nbsp;</label>
                                    <a href="javascript:;" data-toggle="modal" data-target="#tokensModal"><i class="fa fa-plus"></i> Tokens</a>
                                </div>
                            </div>
                        </div>

                        
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
					{include file='partLPSectionQk.tpl' pathID='' suffix=''}

					<button type="button" onclick="addDestinationDirectLinkQk(1, 0); return false" class="btn btn-primary btn-sm mt-2">
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
	                {include file='partOfferSectionQk.tpl' pathID='' suffix=''}

					<div id="divAddDestination" class="mt-2">
						<button onclick="addDestinationDirectLinkQk(0, 1); return false" class="btn btn-primary btn-sm">
							<i class="fa fa-plus"></i> Add Offer
						</button>

					</div>
				</div>
			</div>
		</div>
    </div>
	<div id="divHtmlNewlp" class="d-none">{include file='partHtmlNewLPQk.tpl' i=null}</div>
	<div id="divHtmlNewOffer" class="d-none">{include file='partHtmlNewOfferQk.tpl' i=null}</div>

	<input type="hidden" name="hidID" id="hidID" value="{$campaignID}"/>
	<input type="hidden" id="hidCampaignTypeID" value="{$campaignTypeID}"/>
	<input type="hidden" name="hidDestinationToShow" id="hidDestinationToShow" value="{$destinationToShow}"/>
	<input type="hidden" name="hidOffersToShow" id="hidOffersToShow" value="{$offersToShow}"/>
	<input type="hidden" name="hidDestinationIndex" id="hidDestinationIndex" value="{$destinationIndex}"/>
	<input type="hidden" name="hidAssignAutoIDs" id="hidAssignAutoIDs" value="{$assignAutoIDs}"/>
	<input type="hidden" id="hidExtraTokensNumber" value="{$extraTokensNumber}"/>
	<input type="hidden" name="hidExtraTokensToShow" id="hidExtraTokensToShow" value="{$extraTokensToShow}"/>
	<input type="hidden" name="isQkPage" id="isQkPage" value="{$isQkPage}"/>
	{include file='partTrackingPageNames.tpl'}



                            </div>
                        </div>

                        <div id="step-3" class="border-0">
                            <header class="mb-4">
                                <h3 style="float:left">Step 3 - Tracking Links & Conversions Postbacks</h3>
                                <a href="direct-and-landing-campaign.php?id={$campaignID}" style="float:right">Advanced Setup</a>
                                <div style="clear:both"></div>
                            </header>
                            <div role="content">
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
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
	{literal}
		function clickDestination(index)
		{
			$('#hidDestinationIndex').val(index);
			index == 2 ? $('#divLandingPages').slideUp(700) : $('#divLandingPages').slideDown(700);
			index == 2 ? $('#divStep1').slideUp(700) : $('#divStep1').slideDown(700);
			index == 2 ? $('#divStep2').slideUp(700) : $('#divStep2').slideDown(700);
			index == 3 ? $('#spanSplit').fadeIn(700) : $('#spanSplit').fadeOut(700);
		}
		function clickBlankPages()
		{
			
		}
	{/literal}
	$(document).ready(function () {
		clickInactiveLPAll({$destinationToShow}, 'LP');
		clickInactiveOfferAll({$offersToShow}, '');
		initializeCampaignSetupReady();
        $('.sw-btn-group-extra').hide();
	});

	{include file='partScriptCommands.tpl'}
    

	$("#smartwizard-1").on("leaveStep", function(e, anchorObject, currentStepIndex, stepDirection) {
        var validationResult = SaveQkSetup(currentStepIndex, false);
        //console.log(anchorObject + ' - ' + currentStepIndex + ' - ' + stepDirection);
        if (validationResult)
        {
            if (currentStepIndex == 1 && stepDirection == "forward")
            {
                $('.sw-btn-group-extra').show();
            }
            else
            {
                $('.sw-btn-group-extra').hide();
            }
        }
        return validationResult;
	 });

     {literal}
     function SaveQkSetup(currentStepIndex, exitSetup)
     {
        switch(currentStepIndex)
        {
            case 0:
                if (!checkCampaignName())
                    return false;
                break;
            case 1:
                var hidDestinationToShow = $get("hidDestinationToShow");
                var destinationToShow = hidDestinationToShow.value;
                var hidOffersToShow = $get("hidOffersToShow");
                var offersToShow = hidOffersToShow.value;
                var hidDestinationIndex = $get("hidDestinationIndex");
                var destinationIndex = hidDestinationIndex.value;
                
                if (destinationIndex!=2 && !checkUrls('LP', destinationToShow, 'Landing Page', true))
                    return false;
                if (!checkUrls('Offer', offersToShow, 'Offer', true))
                    return false;
                
                if (destinationIndex!=2 && !sumShares('LP', destinationToShow, 'Landing Pages'))
                    return false;
                if (!sumShares('Offer', offersToShow, 'Offers'))
                    return false;
                break;
            case 2:
                break;
        }
        encodeTextareaFields(false);
        ajaxSaveQkCampaignSetup(currentStepIndex, exitSetup);
        return true;
     }

	{/literal}
</script>

{include file='partMaxInputsSection.tpl'}
<div class="row">
    <div class="col-xl-7 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4 class="d-inline-block">General settings</h4>
                <a href="stats.php?camp={$campaignID}" class="btn btn-info btn-sm float-right">Open Stats</a>
            </div>

        	<div class="card-body">
                <div class="row align-items-end">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Campaign Name</label>
                            {include file='partCtrlCampName.tpl'}
                        </div>
                    </div>
                    <div class="col-sm-3 col-6">
                		<div class="form-group">
            				<label>Campaign ID</label>
            				{include file='partCtrlCampId.tpl'}
                		</div>
                	</div>
                    <div class="col-sm-3 col-6 mb-4">
                        <div class="float-right">
                		    {include file='partCampaignTooltip.tpl'}
                		</div>
                        {include file='partCtrlCampInactive.tpl'}
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>{include file='partCtrlCampFailurePageLabel.tpl'}</label>
                            {include file='partCtrlCampFailurePage.tpl'}
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Assign to Group</label>
                            {include file='partCtrlCampGroup.tpl'}
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>{include file='partCtrlCampAlertProfileLabel.tpl'}</label>
                            {include file='partCtrlCampAlertProfile.tpl'}
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>{include file='partCtrlCampOptimizationProfileLabel.tpl'}</label>
                            {include file='partCtrlCampOptimizationProfile.tpl'}
                        </div>
                    </div>

                    <div class="col-sm-6 col-12">
                        <div class="form-group">
                            <label>{include file='partCtrlCampTrackingDomainLabel.tpl'}</label>
                            {if $accessCertifiedDomain|default:false}
                            <div class="col-12 mb-2">
                                {include file='partCtrlCampCertifiedTrackingDomain.tpl'}
                            </div>
                            {/if}
                            {include file='partCtrlCampTrackingDomain.tpl'}
                        </div>
                    </div>
                    
                    <div class="col-sm-6 col-12 mb-4">
                        {include file='partExtraTokensSection.tpl'}
                    </div>
                </div>

                <div class="row align-items-center">
                    <div class="col-sm-6">
                        {if $campaignTypeStr == 'email-follow-up'}
                            <div class="form-group mb-0">
                                <label>Assign to</label>
                                <select name="ddlAssignedTo" class="form-control">
                                    {html_options options=$assignedCampaigns selected=$campaignDetails.AssignedTo}
                                </select>
                            </div>
                        {/if}
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="col-xl-5 mb-30">
        <div class="card mb-0">
            <div class="card-header">
                <h4>Tracking settings</h4>
            </div>

        	<div class="card-body">
                <div class="row">
                    <div class="col form-group">
                        <label>{include file='partCtrlCampCaptureOptionsLabel.tpl'}</label>
                        {include file='partCtrlCampCaptureOptions.tpl'}
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>{include file='partCtrlCampEngageRateLabel.tpl'}</label>
                            {include file='partCtrlCampEngageRate.tpl'}
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>{include file='partCtrlCampPriorityLabel.tpl'}</label>
                            {include file='partCtrlCampPriority.tpl'}
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-12">
                        <div class="d-flex mb-3">
                            <!--<label>{include file='partCtrlCampCaptureIpLabel.tpl'}</label>-->
                            <span class="custom-switch-description ml-0 mr-4">Capture IP Addresses {include file='partTooltip.tpl' tooltipID=18}</span>
							<label class="custom-switch mb-1">
								<input type="checkbox" class="custom-switch-input" name="radCaptureIP" id="radCaptureIP" {if $campaignDetails.CaptureIP|default:1 != 3}checked="checked"{/if} onchange="clickCaptureIP()"/>
                                <span class="custom-switch-indicator"></span>
							</label>
                        </div>
                        <div class="form-group ">
                            {include file='partCtrlCampCaptureIp.tpl'}
                        </div>

                        <div class="form-group mb-0">
                            <label>{include file='partCtrlCampRedirectTypeLabel.tpl'}</label>
                            {include file='partCtrlCampRedirectType.tpl'}
                        </div>
                    </div>

                    <div class="col-12">
                        {if $campaignTypeStr == 'direct-and-landing'}
                        <div class="form-group mt-3 mb-0">
                            <label>Campaign Type</label>
                            <div>
                                <label for="radOffer" class="mr-3">
                                    <input type="radio" class="flat-purple minimal-campaigntype" name="radDestinationType" id="radOffer" value="2" {if $destinationIndex == 2}checked="checked"{/if}/>
                                    Direct Link
                                </label>
                                <label for="radLandingPage" class="mr-3">
                                    <input type="radio" class="flat-purple minimal-campaigntype" name="radDestinationType" id="radLandingPage" value="1" {if $destinationIndex == 1}checked="checked"{/if}/>
                                    Landing Page
                                </label>
                                <label for="radSplit" class="mr-3">
                                    <input type="radio" class="flat-purple minimal-campaigntype" name="radDestinationType" id="radSplit" value="3" {if $destinationIndex == 3}checked="checked"{/if}/>
                                    Split
                                </label>
                                <span id="spanSplit" class="mt-1" style="display:{if $destinationIndex == 3}inline{else}none{/if}">
                                    <div class="mt-1">
                                        <input type="text" name="txtSplitShare" class="form-control text-center" value="{$campaignDetails.SplitShare}" onblur="validateInt(this, 0, 100)" style="display: inline-block; width: 50px;"/>
                                        <span>&nbsp;% to LPs</span>
                                    </div>
                                </span>
                            </div>
                        </div>
                        {elseif $campaignTypeStr == 'landing-page-sequence'}
                        <!--<div class="row">-->
                            <div class="form-group mt-3 mb-0">
                                <label>Lead Capture in Sequence</label>
                                <div>
                                    <label for="radOptIn" class="mr-3">
                                        <input type="radio" class="flat-purple minimal-leadsequence" name="radDestinationType" id="radOptIn" value="4" {if $destinationIndex == 4}checked="checked"{/if}/>
                                        Yes
                                    </label>

                                    <label for="radOffer">
                                        <input type="radio" class="flat-purple minimal-leadsequence" name="radDestinationType" id="radOffer" value="2" {if $destinationIndex == 2}checked="checked"{/if}/>
                                        No
                                    </label>
                                </div>
                            </div>

                            <div class="form-group mt-3 mb-0" id="divOptIn" style="display:{if $destinationIndex == 2}none{else}block{/if}">
                                <label>Thank You Page Tracking</label>
                                <div>
                                    <label for="radTrackingLandingPage" class="mr-3">
                                        <input type="radio" class="flat-purple minimal-campaigntype-seq" name="radTrackingType" id="radTrackingLandingPage" value="1" {if $trackingIndex == 1}checked="checked"{/if}/>
                                        Landing Page
                                    </label>

                                    <label for="radTrackingOffer">
                                        <input type="radio" class="flat-purple minimal-campaigntype-seq" name="radTrackingType" id="radTrackingOffer" value="2" {if $trackingIndex == 2}checked="checked"{/if}/>
                                        Offer
                                    </label>
                                </div>
                            </div>
                        <!--</div>-->
                        {elseif $campaignTypeStr == 'lead-capture'}
                            <div class="form-group mt-3 mb-0" id="divOptIn">
                                <label>Thank You Page Tracking</label>
                                <div>
                                    <label for="radTrackingLandingPage" class="mr-3">
                                        <input type="radio" class="flat-purple minimal-campaigntype-lead" name="radTrackingType" id="radTrackingLandingPage" value="1" {if $trackingIndex == 1}checked="checked"{/if}/>
                                        Landing Page
                                    </label>

                                    <label for="radTrackingOffer" class="mr-3">
                                        <input type="radio" class="flat-purple minimal-campaigntype-lead" name="radTrackingType" id="radTrackingOffer" value="2" {if $trackingIndex == 2}checked="checked"{/if}/>
                                        Offer
                                    </label>

                                    <label for="radTrackingNone">
                                        <input type="radio" class="flat-purple minimal-campaigntype-lead" name="radTrackingType" id="radTrackingNone" value="4" {if $trackingIndex == 4}checked="checked"{/if}/>
                                        None
                                    </label>
                                </div>
                            </div>
                        {elseif $campaignTypeStr == 'email-follow-up'}
                        <!--<div class="form-group">-->
                            <div class="form-group mt-3 mb-0">
                                <label>Link/Redirect Destination</label>
                                <div>
                                    <label for="radLandingPage" class="mr-3">
                                        <input type="radio" class="flat-purple minimal-campaigntype" name="radDestinationType" id="radLandingPage" value="1" {if $destinationIndex == 1}checked="checked"{/if}/>
                                        Landing Page
                                    </label>

                                    <label for="radOffer">
                                        <input type="radio" class="flat-purple minimal-campaigntype" name="radDestinationType" id="radOffer" value="2" {if $destinationIndex == 2}checked="checked"{/if}/>
                                        Offer
                                    </label>
                                </div>
                            </div>
                        <!--</div>-->
    					{else}

                        {/if}

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-12 col-sm-12">
        <div class="form-horizontal">


            {if $campaignTypeStr != 'email-follow-up'}
            <div id="divSourceSection" style="display:none">
                <div class="row">
                    <div class="col-xs-12 col-sm-4">
                        <div class="form-group">
                            <div class="col-xs-12">
                                <label>{include file='partCtrlCampSourceLabel.tpl'}</label>
                                {include file='partCtrlCampSource.tpl'}
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <div class="form-group">
                            <div class="col-xs-12">
                                <label>Source ID</label>
                                {include file='partCtrlCampSourceId.tpl'}
                            </div>
                        </div>
                    </div>
                </div>
			</div>
			{/if}


            <div class="row d-none">
                <div class="col-xs-12 col-sm-4">
                    <div class="form-group">
                        <div class="col-xs-12">
                            <label>{include file='partCtrlCampAppendSubIdLabel.tpl'}</label>
                            {include file='partCtrlCampAppendSubId.tpl'}
                        </div>
                    </div>
                </div>
            </div>

            <div class="row d-none">

                <div class="col-xs-12 col-sm-4">
                    <div id="wdgCampaignPassThroughOptions-{$campaignTypeStr}">
                        <header><h2>Pass-Through Options {include file='partTooltip.tpl' tooltipID=201}</h2></header>
                        <div class="inner-spacer">
                            <div class="form-horizontal">
                                {if $campaignTypeStr != 'email-follow-up'}
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        {include file='partCtrlCampPassTargetToLp.tpl'}
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        {include file='partCtrlCampPassTargetToOffer.tpl'}
                                    </div>
                                </div>
                                {/if}
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        {include file='partCtrlCampPassCookieToOffer.tpl'}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
			<div class="card">
				<div class="card-header">
                    <div class="float-right">
                      <a data-collapse="#card-macros-tokens" class="btn btn-icon d-table-cell">
                        <i class="ion ion-minus"></i>
                      </a>
                    </div>
					<h4>Macros &amp; Tokens</h4>
				</div>

                <div class="collapse show" id="card-macros-tokens">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 col-xl-4 offset-xl-2-custom pl-xl-2">
                                <div class="form-group">
                                    {if $campaignTypeStr != 'email-follow-up'}
                                        <label>{include file='partCtrlCampPredefinedSourceLabel.tpl'}</label>

                                        {include file='partCtrlCampPredefinedSource.tpl'}
                                    {/if}
                                </div>
                            </div>

                            <div class="col-lg-5 col-md-6 mt-3 mt-md-0">
                                {if $campaignTypeStr != 'email-follow-up'}
                                <div class="form-group">
                                    <label>Bid | Cost {include file='partTooltip.tpl' tooltipID=8}</label>
                                    {include file='partCtrlCampBid.tpl'}
                                </div>
                                {/if}
                            </div>
                        </div>

                        <div class="tokens-form">

                            <div class="row font-weight-bold d-none d-xl-flex mb-xl-2">
                                <div class="col-xl-1 col-width-10 pr-md-2">&nbsp;</div>
                        		{if $campaignTypeStr != ''}
                                    <div class="col-xl-1 col-width-10">&nbsp;</div>
                                {/if}
                                <div class="col-xl-2 text-center pr-md-2 pl-xl-2">Name</div>
                                <div class="col-xl-2 text-center pr-md-1">Parameter</div>
                                <div class="col-xl-2 text-center pr-md-1">Placeholder</div>
                                <div class="col-xl-2 text-center">URL Append</div>
                                <div class="col-sm-2 pl-xl-1 col-width-10">
                            		<div class="d-flex justify-content-around">
                                        <span>LP</span>
                                        <span>Offer</span>
                                    </div>
                                    {include file='partTooltip.tpl' tooltipID=202}
                                </div>
                                <!--<div class="col-sm-05 text-center"> {include file='partTooltip.tpl' tooltipID=202} </div>-->
                            </div>
                			{if $campaignTypeStr != 'email-follow-up'}
                			{include file='partCtrlCampKeywordToken.tpl'}
                			{include file='partCtrlCampCostToken.tpl'}
                			{include file='partCtrlCampTsHiddenToken2.tpl'}
                			<div id="divAdToken">
                				{include file='partCtrlCampAdToken.tpl'}
                			</div>
                			{/if}
                            <div id="divExtraTokens">
                                {if $campaignTypeStr != ''}
                                    {include file='partExtraTokensSectionDiv.tpl' displayPredefinedTokens=true}
                                {else}
                                    {include file='partExtraTokensSectionDiv.tpl' displayPredefinedTokens=false}
                                {/if}
                            </div>
                        </div>
                    </div>
                </div>
			</div>

        </div>
    </div>
</div>

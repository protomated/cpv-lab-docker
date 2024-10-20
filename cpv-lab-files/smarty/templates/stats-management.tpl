{include file="partMessage.tpl"}

<div class="row">
    <div class="col-xl-6 mb-30">
        <div class="card mb-0" id="wdgStatsManagementRemoveStats">
            <div class="card-header">
                <h4>Remove Stats</h4>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label>Campaign</label>
                            <select name="ddlCampaigns" id="ddlCampaigns" class="form-control" onchange="ajaxLoadExtraTokens(); ajaxCalculateRemoveClicks();">
                                {html_options options=$campaignsArrayAll selected=$selectedCampaignID}
                            </select>
                        </div>

                        <div class="row">
                            <div class="col-lg-6 col-xl-12">
                                <div class="form-group">
                                    <label>Target/Keyword</label>
                                    <input type="text" name="txtTarget" id="txtTarget" class="form-control" value="{$txtTarget|default:''}" onblur="ajaxCalculateRemoveClicks();"/>
                                </div>
                            </div>

                            <div class="col-lg-6 col-xl-12">
                                <div class="form-group extra-token">
                                    <label>Extra Token<img src="images/spinner.gif" alt="Working..." id="spin2" class="ml-4" style="display:none"/></label>
                                    <div class="form-inline">
                                        <select name="ddlExtraToken" id="ddlExtraToken" class="form-control d-inline-block" onchange="ajaxCalculateRemoveClicks();">
                                        </select>
                                        <span class="ml-1 mr-1">is</span>
                                        <input type="text" name="txtExtraTokenValue" id="txtExtraTokenValue" class="form-control extra-token" value="{$txtExtraTokenValue|default:''}" onblur="ajaxCalculateRemoveClicks();"/>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-xl-12">
                                <div class="form-group">
                                    <label>SubID or Click ID <small class="text-muted">(one per line)</small></label>
                                    <textarea name="txtSubIdClickID" id="txtSubIdClickID" rows="5" class="form-control" onblur="ajaxCalculateRemoveClicks();">{$txtSubIdClickID|default:''}</textarea>
                                </div>
                            </div>

                            <div class="col-sm-6 col-xl-12 mb-3">
								{include file='partControlIntervalRangeSimple.tpl' customID=''
									customIntervalFrom=$txtIntervalFrom|default:'' customIntervalTo=$txtIntervalTo|default:''}
                            </div>

                            <div class="col-md-6 col-xl-12">
                                <div class="form-group mb-4">
                                    <label>IP Address <small class="text-muted">(one per line)</small></label>
                                    <textarea name="txtIPAddress" id="txtIPAddress" rows="5" class="form-control" onblur="ajaxCalculateRemoveClicks();">{$txtIPAddress|default:''}</textarea>
                                </div>
                            </div>

                            {if $useCaching}
                                <div class="md-6 col-xl-12">
                                    <div class="form-group mb-2">
                                        <label for="chkRemoveFromCache">
                                            <input type="checkbox" class="flat-purple minimal-remove" name="chkRemoveFromCache" id="chkRemoveFromCache" {if $chkRemoveFromCache == 1}checked="checked"{/if}/>
                                            Remove from cached records
                                        </label>
                                    </div>
                                    <p class="text-orange">Warning: Records will be removed from cached data 
                                            <b>only based on the Campaign and Date conditions!</b></p>
                                </div>
                            {/if}
                        </div>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col-12 text-danger font-weight-bold" id="divRemoveClicksCount"></div>
                </div>
                <button id="btnSave_x" name="btnSave_x" class="btn btn-success btn-lg d-none"><i class="fa fa-check"></i> Save</button>
                <button type="button" onclick="confirmClickRemove()" class="btn btn-primary">Remove Clicks</button>
            </div>
        </div>
    </div>

    <div class="col-xl-6 mb-30">
        <div class="card h-100 mb-0" id="wdgStatsManagementOfferPayoutBumpsDecrease">
            <div class="card-header">
                <h4>Offer Payout Bumps &amp; Decreases</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-9 col-xl-12">
                        <div class="form-group">
                            <label>Campaign</label>
                            <select name="ddlCampaignsRevenue" id="ddlCampaignsRevenue" class="form-control" onchange="ajaxLoadOffers()">
                                {html_options options=$campaignsArray selected=$selectedCampaignIDRevenue}
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Offer<img src="images/spinner.gif" alt="Working..." id="spin1" class="ml-4" style="display:none"/></label>
                            <select name="ddlOffersRevenue" id="ddlOffersRevenue" class="form-control">
                            </select>
                        </div>

                        <div>
                            <div class="d-inline-block mr-3 max-w-110">
                                <div class="form-group">
                                    <label>Set Payout to</label>
                                    <input type="text" name="txtRevenue" class="form-control" value="{$txtRevenue|default:''}" onblur="validateFloat(this, 0)"/>
                                </div>
                            </div>

                            <div class="d-sm-inline-block">
                                <div class="form-group hide-default-label mb-4">
                                    <label class="d-block">Conversion occured between</label>
                                    {include file='partControlIntervalRangeSimple.tpl' customID='Revenue'
										customIntervalFrom=$txtIntervalFromRevenue|default:'' customIntervalTo=$txtIntervalToRevenue|default:''}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit" name="btnSaveRevenue_x" class="btn btn-primary absolute-bottom-xl">Save</button>
            </div>
        </div>
    </div>

    <div class="col-xl-6 mb-30">
        <div class="card mb-0 h-100" id="wdgStatsManagementRemoveFalseConv">
            <div class="card-header">
                <h4>Remove False Conversions</h4>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-lg-9 col-xl-12">
                        <div class="form-group mb-4">
                            <label>SubID or Click ID <small class="text-muted">(one per line)</small></label>
                            <textarea name="txtFalseConversions" class="form-control" rows="5" ></textarea>
                        </div>
                    </div>
                </div>
                <button type="submit" name="btnSaveFalse_x" class="btn btn-primary absolute-bottom-xl">Save</button>
            </div>
        </div>
    </div>

    <div class="col-xl-6 mb-30">
        <div class="card mb-0" id="wdgStatsManagementRemoveReferrerRecords">
            <div class="card-header">
                <h4>Remove Referrer Records from Database</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-9 col-xl-12">
                        <div class="form-group">
                            <label>Campaign</label>
                            <select name="ddlCampaignsReferrer" id="ddlCampaignsReferrer" class="form-control">
                                {html_options options=$campaignsArrayAll selected=$selectedCampaignIDReferrer}
                            </select>
                        </div>

                        <div class="form-group hide-default-label mb-4">
                            <label class="d-block">Click Date between</label>
							{include file='partControlIntervalRangeSimple.tpl' customID='Referrer'
								customIntervalFrom=$txtIntervalFromReferrer|default:'' customIntervalTo=$txtIntervalToReferrer|default:''}
                        </div>

                        <button type="submit" name="btnSaveReferrer_x" class="btn btn-primary">Save</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    {literal}
	$(document).ready(function () {
		ajaxLoadExtraTokens();
		ajaxLoadOffers();
		initializeDaterangeSimple();
        $('#daterange-btn-simple').on('apply.daterangepicker', function(ev, picker) {
            ajaxCalculateRemoveClicks();
        });
		$('#chkRemoveFromCache').on('ifChanged', function(event){
            ajaxCalculateRemoveClicks();
		});

	});
	function confirmClickRemove()
	{
        var confirmMessage = $('#hidClicksToRemove').length > 0 ? $('#hidClicksToRemove').val() : "Are you sure you want to remove clicks for the selected campaign?";
        confirm(confirmMessage, function(){
                        $('#btnSave_x').click();
                    });
	}
    {/literal}
</script>

{if is_null($i)}
	{assign var="i" value='tmpCount'}
	{assign var="suffix" value='tmpSuffix'}
	{assign var="defaultID" value='tmpDefaultID'}
{else}
	{assign var="defaultID" value=0}
	{if $offersToShow==1 && $i==0}
		{assign var="defaultShare" value=100}
	{/if}
{/if}
{if !isset($pathID) || is_null($pathID)}
	{assign var="pathID" value=''}
{/if}
{if $pathID !== ''}
	{assign var=offerObject value=$offerDetails[$pathID][$i]|default:null}
{else}
	{assign var=offerObject value=$offerDetails[$i]|default:null}
{/if}
<div id="dof{$suffix}{$i}" class="lp-offer-item qkPage">
	<input type="hidden" name="hidOfferID{$suffix}{$i}" id="hidOfferID{$suffix}{$i}" value="{$offerObject["DestinationID"]|default:0}"/>
	<div class="row">
		<div class="col-lg-4 col-sm-6">
			<div class="form-group">
				<select name="ddlPredefOffer{$suffix}{$i}" id="ddlPredefOffer{$suffix}{$i}" dataparam="{$offerObject["OfferParameter"]|default:'subid'}" dataending="{$offerObject["OfferEnding"]|default:''}" class="form-control" onchange="loadPredefOffer('{$suffix}{$i}')">
					{html_options options=$predefOffersArray selected=$offerObject["PredefOfferID"]|default:0}
				</select>
			</div>
		</div>
        
        <div class="col-lg-2 col-3 max-w-lg-140">
			<div class="form-group">
				<input type="text" name="txtPageIDOffer{$suffix}{$i}" id="txtPageIDOffer{$suffix}{$i}" class="form-control max-w-lg-110" value="{$offerObject["LandingPageID"]|default:$defaultID}"/>
			</div>
		</div>

		<div class="col-lg-2 col-3 max-w-lg-140">
			<div class="form-group">
				<input name="txtShareOffer{$suffix}{$i}" id="txtShareOffer{$suffix}{$i}" type="text" class="form-control max-w-lg-110" value="{$offerObject["Share"]|default:$defaultShare|default:0}" onblur="validateInt(this, 0, 100)"/>
			</div>
		</div>

		<div class="col-lg-2 col-md-3 col-sm-4 col-2">
			<div class="form-group">
                <div>
                    <label class="custom-switch">
                        <input type="checkbox" class="custom-switch-input" name="chkInactiveOffer{$suffix}{$i}" id="chkInactiveOffer{$suffix}{$i}" onclick="clickInactiveOffer(this.checked, '{$suffix}{$i}')" {if $offerObject["Active"]|default:1}checked="checked"{/if}/>
                        <span class="custom-switch-indicator" data-toggle="tooltip" data-placement="right" title="" data-original-title="Active Status"></span>
                        <span class="custom-switch-description"></span>
                    </label>
                </div>
            </div>
        </div>
		
		<div class="col-lg-1 col-md-1 col-sm-4 mb-3 mb-lg-0 col-2 text-center">
            <button class="btn btn-sm btn-primary badge" type="button" data-toggle="tooltip" data-placement="right" title="" data-original-title="Delete" onclick="clickDeleteOffer('Offer{$suffix}{$i}')"><i class="fa fa-trash"></i></button>
		</div>

		<div class="col-lg-1 col-md-2 col-sm-4 col-2">
			<span class="btn btn-outline-info generateCodeHandler w-100 max-w-lg-110 d-flex align-items-center justify-content-center" rel="modalpostbackurl" data-toggle="tooltip" data-placement="right" title="" data-original-title="Get Postback URL" data-item="Offer{$suffix}{$i}"><i class="fa fa-code"></i></span>
		</div>
        <input style="display:none" name="txtPageNameOffer{$suffix}{$i}" id="txtPageNameOffer{$suffix}{$i}" type="text" class="form-control" value="{$offerObject["Offer"]|default:''}" />
        <select style="display:none" name="ddlNetwork{$suffix}{$i}" id="ddlNetwork{$suffix}{$i}" class="form-control" onchange="updateSpecificPostbacks()">
            {html_options options=$networksArray selected=$offerObject["AffiliateSourceID"]|default:1}
        </select>
        <input style="display:none" name="txtPageUrlOffer{$suffix}{$i}" id="txtPageUrlOffer{$suffix}{$i}" placeholder="https://" type="text" class="form-control" value="{$offerObject["Url"]|default:''}" autocomplete="off"/>
        <input style="display:none" name="txtPayout{$suffix}{$i}" id="txtPayout{$suffix}{$i}" type="text" class="form-control" value="{$offerObject["Payout"]|default:0}" onblur="validateFloat(this, 0)" />
	</div>

</div>

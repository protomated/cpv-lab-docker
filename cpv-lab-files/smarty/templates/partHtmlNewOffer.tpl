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
<div id="dof{$suffix}{$i}" class="lp-offer-item">
	<input type="hidden" name="hidOfferID{$suffix}{$i}" id="hidOfferID{$suffix}{$i}" value="{$offerObject["DestinationID"]|default:0}"/>
	<div class="row align-items-end mb-lg-3">
		<div class="col-lg-3 col-sm-6">
			<div class="form-group mb-lg-0">
				<label>Select Predefined Offer<img src="images/spinner.gif" alt="Working..." id="spno{$suffix}{$i}" class="ml-4" style="display:none"/></label>
				<select name="ddlPredefOffer{$suffix}{$i}" id="ddlPredefOffer{$suffix}{$i}" class="form-control" onchange="loadPredefOffer('{$suffix}{$i}')">
					{html_options options=$predefOffersArray selected=$offerObject["PredefOfferID"]|default:0}
				</select>
			</div>
		</div>

		<div class="col-lg-3 col-sm-6">
			<div class="form-group mb-lg-0">
				<label>Offer</label>
				<input name="txtPageNameOffer{$suffix}{$i}" id="txtPageNameOffer{$suffix}{$i}" type="text" class="form-control" value="{$offerObject["Offer"]|default:''}" />
			</div>
		</div>

		<div class="col-lg-2">
			<div class="form-group mb-lg-0">
				<label>Source/Network</label>
				<select name="ddlNetwork{$suffix}{$i}" id="ddlNetwork{$suffix}{$i}" dataparam="{$offerObject["OfferParameter"]|default:'subid'}" dataending="{$offerObject["OfferEnding"]|default:''}" class="form-control" onchange="updateSpecificPostbacks(); ajaxGetOfferSourceUrlEnding(this)">
					{html_options options=$networksArray selected=$offerObject["AffiliateSourceID"]|default:1}
				</select>
			</div>
		</div>

		<div class="col-lg-2 offset-lg-0 mb-4 mb-lg-2 col-md-3 offset-md-6 col-6 max-w-lg-140">
			<label class="custom-switch">
				<input type="checkbox" class="custom-switch-input" name="chkInactiveOffer{$suffix}{$i}" id="chkInactiveOffer{$suffix}{$i}" onclick="clickInactiveOffer(this.checked, '{$suffix}{$i}')" {if $offerObject["Active"]|default:1}checked="checked"{/if}/>
				<span class="custom-switch-indicator"></span>
                <span class="custom-switch-description">Active</span>
			</label>
		</div>

		<div class="col-lg-1 col-md-1 mb-3 mb-lg-0 col-2 text-center">
			<button class="btn btn-sm btn-primary badge" type="button" data-toggle="tooltip" data-placement="right" title="" data-original-title="Delete" onclick="clickDeleteOffer('Offer{$suffix}{$i}')"><i class="fa fa-trash"></i></button>
		</div>

		<div class="col-lg-1 col-md-2 mb-3 mb-lg-0 col-4">
			<span class="btn btn-outline-info generateCodeHandler w-100 max-w-lg-110 d-flex align-items-center justify-content-center" rel="modalpostbackurl" data-toggle="tooltip" data-placement="right" title="" data-original-title="Get Postback URL" data-item="Offer{$suffix}{$i}"><i class="fa fa-code"></i></span>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-6">
			<div class="form-group">
				<label>URL&nbsp;&nbsp;&nbsp;<small class="text-muted" id="txtEndingOffer{$suffix}{$i}">{if $offerObject["OfferTemplate"]|default:''}End the {$offerObject["Affiliate"]|default:''} URLs with <b>{$offerObject["OfferTemplate"]}</b>{/if}</small></label>
				<input name="txtPageUrlOffer{$suffix}{$i}" id="txtPageUrlOffer{$suffix}{$i}" placeholder="https://" type="text" class="form-control" value="{$offerObject["Url"]|default:''}" autocomplete="off"/>
			</div>
		</div>

		<div class="col-lg-2 col-4">
			<div class="form-group">
				<label>Payout $</label>
				<input name="txtPayout{$suffix}{$i}" id="txtPayout{$suffix}{$i}" type="text" class="form-control" value="{$offerObject["Payout"]|default:0}" onblur="validateFloat(this, 0)" />
			</div>
		</div>

		<div class="col-lg-2 col-4 max-w-lg-140">
			<div class="form-group">
				<label>ID</label>
				<input type="text" name="txtPageIDOffer{$suffix}{$i}" id="txtPageIDOffer{$suffix}{$i}" class="form-control max-w-lg-110" value="{$offerObject["LandingPageID"]|default:$defaultID}"/>
			</div>
		</div>

		<div class="col-lg-2 col-4">
			<div class="form-group">
				<label>Share %</label>
				<input name="txtShareOffer{$suffix}{$i}" id="txtShareOffer{$suffix}{$i}" type="text" class="form-control max-w-lg-110" value="{$offerObject["Share"]|default:$defaultShare|default:0}" onblur="validateInt(this, 0, 100)"/>
			</div>
		</div>

	</div>

</div>

<div class="row align-items-center mb-3 mb-xl-2">
	<label class="control-label {if $isQkPage}col-xl-3{else}col-xl-2 col-2-custom-width{/if} text-xl-right pr-xl-2 mb-2 mb-xl-0">Ad Token {include file='partTooltip.tpl' tooltipID=19}</label>
	<div class="{if $isQkPage}col-xl-3{else}col-xl-2{/if} pr-xl-2 pl-xl-2 mb-2 mb-xl-0">
		<input name="txtAdTokenName" id="txtAdTokenName" type="text" value="{$campaignDetails.AdTokenName}" class="form-control"/>
	</div>
	<div class="{if $isQkPage}col-xl-6{else}col-xl-4{/if} col-sm-12 mb-2 mb-xl-0">
		<input name="txtAdTokenParam" id="txtAdTokenParam" type="text" value="{$campaignDetails.AdTokenParam|default:''}" onblur="checkExtraTokenParam(this); updateAppendUrl('','Ad'); updateDestinationUrl();" class="form-control eqInput" placeholder="Parameter"/>
		<span class="d-inline-block">=</span>
		<input name="txtAdTokenPlace" id="txtAdTokenPlace" type="text" value="{$campaignDetails.AdTokenPlace|default:''}" onblur="updateAppendUrl('','Ad'); updateDestinationUrl()" class="form-control eqInput" placeholder="Placeholder"/>
	</div>
	<div class="col-xl-2 pl-xl-2 mb-2 mb-xl-0" {if $isQkPage}style="display:none"{/if}>
		<input name="txtAdTokenUrl" id="txtAdTokenUrl" type="text" value="" class="form-control" disabled="disabled"/>
	</div>

	<div class="col-xl-2 col-sm-6 col-12 pl-xl-1 col-width-10 t" {if $isQkPage}style="display:none"{/if}>
		<div class="d-xl-flex justify-content-around">
			<label class="mr-4 mr-xl-0">
				<input name="chkAdTokenLP" class="flat-purple" id="chkAdTokenLP" type="checkbox" {if $campaignDetails.AdTokenPass & 2}checked="checked"{/if} />
				<span class="d-xl-none">LP</span>
			</label>

			<label>
				<input name="chkAdTokenOffer" class="flat-purple" id="chkAdTokenOffer" type="checkbox" {if $campaignDetails.AdTokenPass & 1}checked="checked"{/if} />
				<span class="d-xl-none">Offer</span>
			</label>
		</div>
	</div>
</div>

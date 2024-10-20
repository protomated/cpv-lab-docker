<div class="row align-items-center mb-3 mb-xl-2">
	<label class="control-label {if $isQkPage}col-xl-3{else}col-xl-2 col-2-custom-width{/if} text-xl-right pr-xl-2 mb-2 mb-xl-0">External ID Token{include file='partTooltip.tpl' tooltipID=5}</label>
	<div class="{if $isQkPage}col-xl-3{else}col-xl-2{/if} pr-xl-2 pl-xl-2 mb-2 mb-xl-0">
		<input name="txtUniqueTokenName" id="txtUniqueTokenName" type="text" value="External ID" class="form-control" disabled="disabled"/>
	</div>
	<div class="{if $isQkPage}col-xl-6{else}col-xl-4{/if} col-sm-12 mb-2 mb-xl-0">
		<input name="txtUniqueTokenParam" id="txtUniqueTokenParam" type="text" value="{$campaignDetails.UniqueTokenParam|default:''}" onblur="checkExtraTokenParam(this); updateAppendUrl('','Unique'); updateDestinationUrl();" class="form-control eqInput" placeholder="Parameter"/>
		<span class="d-inline-block">=</span>
		<input name="txtUniqueTokenPlace" id="txtUniqueTokenPlace" type="text" value="{$campaignDetails.UniqueTokenPlace|default:''}" onblur="updateAppendUrl('','Unique'); updateDestinationUrl()" class="form-control eqInput" placeholder="Placeholder"/>
	</div>
	<div class="col-xl-2 pl-xl-2 mb-2 mb-xl-0" {if $isQkPage}style="display:none"{/if}>
		<input name="txtUniqueTokenUrl" id="txtUniqueTokenUrl" type="text" value="" class="form-control" disabled="disabled"/>
	</div>

	<div class="col-xl-2 col-sm-6 col-12 pl-xl-1 col-width-10" {if $isQkPage}style="display:none"{/if}>
		<div class="d-xl-flex justify-content-around">
			<label class="mr-4 mr-xl-0">
				<input type="checkbox" class="flat-purple" name="chkPassUniqueLP" id="chkPassUniqueLP" {if $campaignDetails.UniqueTokenPass & 2}checked="checked"{/if}/>
				<span class="d-xl-none">LP</span>
			</label>
			<label>
				<input type="checkbox" class="flat-purple" name="chkPassUniqueOffer" id="chkPassUniqueOffer" {if $campaignDetails.UniqueTokenPass & 1}checked="checked"{/if}/>
				<span class="d-xl-none">Offer</span>
			</label>
			<!--{include file='partTooltip.tpl' tooltipID=202 addClass='d-xl-none'}-->
		</div>
	</div>
</div>

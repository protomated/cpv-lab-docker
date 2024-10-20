<div class="row align-items-center mb-3 mb-xl-2">
	<label class="control-label {if $isQkPage}col-xl-3{else}col-xl-2 col-2-custom-width{/if} text-xl-right pr-xl-2 mb-2 mb-xl-0">Cost Token {include file='partTooltip.tpl' tooltipID=204}</label>
	<div class="{if $isQkPage}col-xl-3{else}col-xl-2{/if} pr-xl-2 pl-xl-2 mb-2 mb-xl-0">
		<input name="txtCostTokenName" id="txtCostTokenName" type="text" value="Cost" class="form-control" disabled="disabled"/>
	</div>
	<div class="{if $isQkPage}col-xl-6{else}col-xl-4{/if} col-sm-12 mb-2 mb-xl-0">
		<input name="txtCostTokenParam" id="txtCostTokenParam" type="text" value="{$campaignDetails.CostTokenParam|default:''}" onblur="checkExtraTokenParam(this); updateAppendUrl('','Cost'); updateDestinationUrl();" class="form-control eqInput" placeholder="Parameter"/>
		<span class="d-inline-block">=</span>
		<input name="txtCostTokenPlace" id="txtCostTokenPlace" type="text" value="{$campaignDetails.CostTokenPlace|default:''}" onblur="updateAppendUrl('','Cost'); updateDestinationUrl()" class="form-control eqInput" placeholder="Placeholder"/>
	</div>
	<div class="col-xl-2 pl-xl-2 mb-2 mb-xl-0" {if $isQkPage}style="display:none"{/if}>
		<input name="txtCostTokenUrl" id="txtCostTokenUrl" type="text" value="" class="form-control" disabled="disabled"/>
	</div>
	<div class="col-sm-2 pl-xl-1 col-width-10" {if $isQkPage}style="display:none"{/if}></div>
</div>

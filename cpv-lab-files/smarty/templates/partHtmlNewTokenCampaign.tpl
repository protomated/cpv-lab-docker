{if is_null($i)}
	{assign var="i" value='tmpCount'}
{/if}
<div class="row align-items-center mb-3 mb-xl-2">
	<label class="control-label {if $isQkPage}col-xl-1{else}col-xl-1 col-width-10{/if} text-xl-right pr-xl-2 mb-2 mb-xl-0">
		Token&nbsp;{$i}&nbsp;{if $i==1}{include file='partTooltip.tpl' tooltipID=15}{/if}
	</label>
	{if $displayPredefinedTokens}
		<div class="{if $isQkPage}col-xl-2{else}col-xl-1 col-width-10{/if} pr-xl-2 pl-xl-1 mb-2 mb-xl-0">
			<select id="ddlExtraTokenSelect{$i}" onchange="ajaxGetTokenDetails(this)" class="form-control etText4s">
				{foreach $predefinedTokens as $token}
					{if ($token@key == -1 || $token@key == -31)}
					<option disabled>──────────</option>
					{/if}
					<option value="{$token@key}">{$token}</option>
				{/foreach}
			</select>
		</div>
	{/if}
	<div class="{if $isQkPage}col-xl-3{else}col-xl-2{/if} pr-xl-2 pl-xl-2 mb-2 mb-xl-0">
		<input name="txtExtraTokenName{$i}" id="txtExtraTokenName{$i}" type="text" value="{$campaignDetails["ExtraTokenName{$i}"]|default:''}" class="form-control"/>
	</div>
	<div class="{if $isQkPage}col-xl-6{else}col-xl-4{/if} col-sm-12 mb-2 mb-xl-0">
		<input name="txtExtraTokenParam{$i}" id="txtExtraTokenParam{$i}" type="text" value="{$campaignDetails["ExtraTokenParam{$i}"]|default:''}" onblur="checkExtraTokenParam(this); updateAppendUrl({$i});
			updateDestinationUrl();" class="form-control eqInput" placeholder="Parameter"/>
		<span class="d-inline-block">=</span>
		<input name="txtExtraTokenPlace{$i}" id="txtExtraTokenPlace{$i}" type="text" value="{$campaignDetails["ExtraTokenPlace{$i}"]|default:''}" onblur="updateAppendUrl({$i}); updateDestinationUrl()" class="form-control eqInput" placeholder="Placeholder"/>
	</div>
	<div class="col-xl-2 pl-xl-2 mb-2 mb-xl-0" {if $isQkPage}style="display:none"{/if}>
		<input name="txtExtraTokenUrl{$i}" id="txtExtraTokenUrl{$i}" type="text" value="" class="form-control" disabled="disabled"/>
	</div>
	<div class="col-xl-2 col-sm-6 col-12 pl-xl-1 col-width-10" {if $isQkPage}style="display:none"{/if}>
		<div class="d-xl-flex justify-content-around">
			<label class="mr-4 mr-xl-0">
				<input name="chkExtraTokenLP{$i}" id="chkExtraTokenLP{$i}" type="checkbox" class="flat-purple" {if $campaignDetails["ExtraTokenPass{$i}"]|default:0 & 2}checked="checked"{/if}/>
				<span class="d-xl-none">LP</span>
			</label>
			<label>
				<input name="chkExtraTokenOffer{$i}" id="chkExtraTokenOffer{$i}" type="checkbox" class="flat-purple" {if $campaignDetails["ExtraTokenPass{$i}"]|default:0 & 1}checked="checked"{/if}/>
				<span class="d-xl-none">Offer</span>
			</label>
		</div>
	</div>
</div>

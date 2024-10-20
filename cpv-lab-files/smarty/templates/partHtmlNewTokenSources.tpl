{if is_null($i)}
	{assign var="i" value='tmpCount'}
	{assign var="index" value='tmpIndex'}
{else}
	{assign var="index" value=$i-1}
{/if}
<div class="row align-items-center mb-3 mb-lg-2">
	<label class="control-label col-lg-2 text-lg-right pr-lg-2 mb-2 mb-lg-0">
		Token {$i}
	</label>
	<div class="col-lg-3 pr-lg-2 mb-2 mb-lg-0">
		<input name="txtExtraTokenName{$index}" id="txtExtraTokenName{$index}" type="text" value="{$currentTokens.$index.ExtraTokenName|default:''}" class="form-control"/>
	</div>
	<div class="col-lg-4 col-sm-12 mb-2 mb-lg-0">
		<input name="txtExtraTokenParam{$index}" id="txtExtraTokenParam{$index}" type="text" value="{$currentTokens.$index.ExtraTokenParam|default:''}" onblur="checkExtraTokenParam(this); updateAppendUrl({$index})" class="form-control eqInput" placeholder="Parameter"/>
		<span class="d-inline-block">=</span>
		<input name="txtExtraTokenPlace{$index}" id="txtExtraTokenPlace{$index}" type="text" value="{$currentTokens.$index.ExtraTokenPlace|default:''}" onblur="updateAppendUrl({$index})" class="form-control eqInput" placeholder="Placeholder"/>
	</div>
	<div class="col-lg-3 pl-lg-2 mb-2 mb-lg-0">
		<input name="txtExtraTokenUrl{$index}" id="txtExtraTokenUrl{$index}" type="text" value="{$currentTokens.$index.ExtraTokenUrl|default:''}" class="form-control" disabled="disabled"/>
	</div>
	<input type="hidden" name="hidExtraTokenID{$index}" id="hidExtraTokenID{$index}" value="{$currentTokens.$index.CpvSourceTokenID|default:'0'}" />
</div>

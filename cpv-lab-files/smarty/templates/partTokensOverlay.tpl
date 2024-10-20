<div id="tokensLP" class="tokensOverlay bootstrap-tagsinput">
	{foreach from=$lpPlaceholders item=k}
	<button type="button" rel="overlaytoken" class="label label-primary btn-add-place {if $k.0=='subid'}overlay-token-subid{/if}" tabindex="-1" datavalue="{$k.0}" dataparam="{$k.3|default:''}" data-placement="right" data-toggle="tooltip" title="" data-original-title="{$k.2}">+ {$k.1}</button>
	{/foreach}
	<span class="tokensOverlayClose" onclick="hideOverlayTokens()" data-placement="right" data-toggle="tooltip" title="" data-original-title="Close Window">&times;</span>
</div>
<input type="hidden" id="hidTokensLP" value=""/>

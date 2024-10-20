<div id="tokensAdd" class="tokensOverlay">
	{foreach from=$additionalPlaceholders item=k}
	<button type="button" rel="overlayaddtoken" class="label label-primary btn-add-place" tabindex="-1" datavalue="{$k.0}" data-placement="right" data-toggle="tooltip" title="" data-original-title="{$k.2}">+ {$k.1}</button>
	{/foreach}
	&nbsp;&nbsp;&nbsp;
	<img class="tokensOverlayClose" src="images/close.png" onclick="hideOverlayAdditionalTokens()" data-placement="right" data-toggle="tooltip" title="" data-original-title="Close Window"/>
</div>
<input type="hidden" id="hidTokensAdd" value=""/>

<div id="divExtraTokensContainer">
	{for $i=1 to $extraTokensToShow}
		{include file='partHtmlNewTokenCampaign.tpl'}
	{/for}
</div>
{if $extraTokensToShow != $extraTokensNumber}
	<div class="text-right" id="divAddExtraToken">
		<button type="button" onclick="addExtraToken()" class="btn btn-primary btn-add-token" data-placement="right" data-toggle="tooltip" title="" data-original-title="Add New Token"><i class="fe fe-plus"></i></button>
	</div>
{/if}
<div id="divHtmlNewTokenTemplate" class="d-none">{include file='partHtmlNewTokenCampaign.tpl' i=null}</div>
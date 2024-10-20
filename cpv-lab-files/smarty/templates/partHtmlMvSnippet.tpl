{if is_null($i)}
	{assign var="k" value='tmpVarK'}
	{assign var="i" value='tmpVarI'}
	{assign var="groups" value=null}
	{assign var="assignedMessage" value='tmpAssignedMessage'}
{/if}
<div id="divMVSnippet{$k}_{$i}">
	<div class="row rowMVsnip align-items-center form-group bg-light-gray pt-2 pb-2">
		<label class="control-label col-12 col-lg-2 mb-0 custom-color">SNIPPET {$i}</label>
		<div class="col-lg-4 col-sm-6">
			<div class="form-group row mb-lg-0 align-items-center">
				<label class="fform-label col-lg-auto col-12 custom-color">Tag</label>
				<div class="col-lg pl-lg-0 col-12">
					<input type="text" class="form-control" name="txtSnippetTag{$k}_{$i}" id="txtSnippetTag{$k}_{$i}" value="{$groups[$k]["snippet"][$i]["tag"]|default:''}"/>
				</div>
			</div>
		</div>

		<div class="col-sm-6 text-center rowMVassigned">{if $assignedMessage|default:''}{$assignedMessage}{else}{if $assignedTokens.$i|default:''}Assigned to Extra Token {$assignedTokens.$i}{else}<span class="rowMVnotassigned custom-color"><em>Not Assigned to an Extra Token</em></span>{/if}{/if}
		</div>
	</div>
	<div id="divMVSnippetVariations{$k}_{$i}">
		{for $j=1 to $groups.$k.snippet.$i.max|default:1}
			{include file='partHtmlMvVariation.tpl'}
		{/for}
	</div>

	<div class="col-12 text-right mb-2" id="divAddMVVariation{$k}_{$i}">
		<button type="button" id="btnAddVar{$k}_{$i}" onclick="addMVVariation({$k},{$i})" class="btn btn-primary btn-add-mv btn-add-mv-var btn-sm" data-placement="right" data-toggle="tooltip" title="" data-original-title="Add New Variation"><i class="fe fe-plus"></i> var</button>
	</div>

	<input type="hidden" name="hidVariationsMax{$k}_{$i}" id="hidVariationsMax{$k}_{$i}" value="{$groups.$k.snippet.$i.max|default:1}"/>
</div>

{if is_null($k)}
	{assign var="k" value='tmpVarK'}
	{assign var="groups" value=null}
{/if}
<div id="divMVGroup{$k}" class="border mb-3">
	<div class="row rowMVgrp align-items-center form-group bg-light-purple mb-0 pt-2 pb-2">
		<label class="control-label col-12 col-lg-2 mb-0 custom-color">GROUP {$k}</label>
		<div class="col-lg-4 col-sm-6 col-12">
			<div class="form-group row mb-lg-0 align-items-center">
				<label class="form-label col-lg-auto col-12 custom-color">Tag</label>
				<div class="col-lg pl-lg-0 col-12">
					<input type="text" class="form-control" name="txtGroupTag{$k}" id="txtGroupTag{$k}" value="{$groups[$k]["tag"]|default:''}"/>
				</div>
			</div>
		</div>

		<div class="col-lg-4 col-sm-6 col-12">
			<div class="form-group row mb-lg-0 align-items-center">
				<label class="form-label col-lg-5 text-lg-right pr-lg-0 col-12 custom-color">Group Share</label>
				<div class="col-lg-7 col-12">
					<input type="text" id="txtGroupShare{$k}" name="txtGroupShare{$k}" onblur="validateInt(this, 0, 100000, '')" value="{$groups[$k]["share"]|default:''}" class="form-control text-center"/>
				</div>
			</div>
		</div>

		<div class="col-lg-2 text-right" id="divAddMVSnippet{$k}">
			<button type="button" onclick="addMVSnippet({$k})" class="btn btn-primary btn-add-mv btn-add-mv-snip btn-sm" data-placement="right" data-toggle="tooltip" title="" data-original-title="Add New Snippet"><i class="fe fe-plus"></i> snip</button>
		</div>
	</div>

	<div class="divsnippets">
		<div id="divMVGroupSnippets{$k}">
			{for $i=1 to $groups.$k.snippet.max|default:1}
				{include file='partHtmlMvSnippet.tpl'}
			{/for}
		</div>
		<div class="col-12 text-right mt-2 mb-3" id="divAddMVSnippetBtm{$k}">
			<button type="button" onclick="addMVSnippet({$k})" class="btn btn-primary btn-add-mv btn-add-mv-snip btn-sm" data-placement="right" data-toggle="tooltip" title="" data-original-title="Add New Snippet"><i class="fe fe-plus"></i> snip</button>
		</div>
	</div>

	<input type="hidden" name="hidSnippetsMax{$k}" id="hidSnippetsMax{$k}" value="{$groups.$k.snippet.max|default:1}"/>
</div>

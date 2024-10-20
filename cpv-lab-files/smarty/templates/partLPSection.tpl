{if is_null($suffix)}
	{assign var="suffix" value='tmpSuffix'}
	{assign var="destinationToShow" value=0}
{/if}
<div class="form-horizontal">
    <div class="row mb-3">
        <div class="col-lg-8 col-md-6 d-none d-md-block">&nbsp;</div>
		<div class="col-lg-2 col-md-3 max-w-lg-140 d-none d-md-block">&nbsp;</div>
		<div class="col-lg-2 col-md-3 col-6 offset-6 offset-md-0">
			<div class="evenDiv" {if $paddingTop|default:0}style="padding-top:{$paddingTop}px;"{/if}>
                <button type="button" onclick="evenShares('LP{$suffix}')" class="btn btn-primary w-100 max-w-lg-110" data-toggle="tooltip" data-placement="right" title="Even Shares">
					<span class="h3 d-block">⚌</span>
				</button>
            </div>
		</div>
    </div>
</div>

<div class="form-horizontal" id="sectionlp{$suffix}">
	{for $i=0 to $destinationToShow-1}
		{include file='partHtmlNewLP.tpl'}
	{/for}
</div>

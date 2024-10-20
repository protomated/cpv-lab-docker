{if is_null($j)}
	{assign var="k" value='tmpVarK'}
	{assign var="i" value='tmpVarI'}
	{assign var="j" value='tmpVarJ'}
	{assign var="groups" value=null}
{/if}
<div class="row rowMVvar align-items-center form-group" id="divMVVariation{$k}_{$i}_{$j}">
	<label class="control-label col-lg-2 col-12">Variation {$j}</label>
	<div class="col-lg-4 col-12">
		<input type="text" class="form-control" name="txtVariation{$k}_{$i}_{$j}" id="txtVariation{$k}_{$i}_{$j}" value="{$groups[$k]["snippet"][$i]["var"][$j]|default:''}" autocomplete="off"/>
	</div>

	<div class="col-lg-4 col-md-5 col-sm-6 col-12">
		<div class="form-group row mb-md-0 mt-3 mt-lg-0">
			<label class="form-label col-lg-5 text-lg-right pr-lg-0 col-md-6 col-5">Share {$j}</label>
			<div class="col-xl-4 col-sm-6 col-7">
				<input type="text" class="form-control text-center" name="txtShare{$k}_{$i}_{$j}" id="txtShare{$k}_{$i}_{$j}" onblur="validateInt(this, 0, 100000, '')" value="{$groups[$k]["snippet"][$i]["share"][$j]|default:''}"/>
			</div>
		</div>
	</div>
</div>

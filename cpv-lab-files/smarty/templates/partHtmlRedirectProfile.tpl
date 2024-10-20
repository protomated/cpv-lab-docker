{if is_null($i)}
	{assign var="i" value='tmpCount'}
	{assign var="multiselectClass" value=''}
{else}
	{assign var="multiselectClass" value='slect-redirect'}
{/if}
<div class="row">
	<div class="col-lg-3 pr-lg-0 col-sm-6 mb-2">
		<input type="hidden" name="hidConditionID{$i}" id="hidConditionID{$i}" value ="{$currentConditions.$i.RedirectConditionID|default:0}" />
		<select name="ddlCondition{$i}" id="ddlCondition{$i}" class="conditionTypeBox form-control" onchange="ajaxChangeConditionType(this)">
			{html_options options=$conditionTypesArray selected=$currentConditions.$i.RedirectTypeID|default:7}
		</select>
	</div>
	<div class="col-lg-2 pr-lg-0 col-sm-6 mb-2">
		<select name="ddlOperator{$i}" id="ddlOperator{$i}" class="form-control">
			{html_options options=[1 => 'is', 2 => 'is not', 3 => 'contains', 4 => 'doesn\'t contain'] selected=$currentConditions.$i.RedirectOperatorID|default:1}
		</select>
	</div>
	<div class="col-lg-3 pr-lg-0 col-sm-6 mb-2">
		<input type="text" name="txtValue{$i}" id="txtValue{$i}" class="form-control" value="{$currentConditions.$i.ValueCondition|default:''}" onchange="changeValues(this)"/>
	</div>
	<div id="divRowValue{$i}" class="col col-lg-4 col-sm-6 mb-2">
		<select id="ddlValue{$i}" multiple="multiple" class="{$multiselectClass} ddlValue{$i}"></select>
	</div>
	<div id="divRowExtra{$i}" class="col col-lg-4 col-sm-6 mb-2" style="display:none">
		<input type="text" name="txtExtra{$i}" id="txtExtra{$i}" class="form-control" value="{$currentConditions.$i.ExtraCondition|default:''}"/>
	</div>

	<div class="col-12">
		<div class="divider-dotted mt-3 mb-4 d-lg-none"></div>
	</div>
</div>

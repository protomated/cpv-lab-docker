{if is_null($k)}
	{assign var="k" value='tmpCount'}
	{assign var="optionNumber" value='tmpCntPlus'}
{else}
	{assign var="optionNumber" value=$k+1}
{/if}
<div id="partLvl{$k}" class="level-item">
	<div class="item-header">
		<div class="form-group row mb-0">
			<label class="col-auto form-label font-weight-bold custom-color">LEVEL {$optionNumber}</label>
			<div class="col-lg-4 col-sm-9">
				<input type="text" id="txtLevel{$k}" name="txtLevel{$k}" class="form-control" value="{$levelNames[$optionNumber]|default:''}"/>
			</div>
		</div>
	</div>
	{include file='partLPSection.tpl'}
	{include file='partHtmlNewLevelButtons.tpl'}
</div>

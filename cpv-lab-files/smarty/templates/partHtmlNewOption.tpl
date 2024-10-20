{if is_null($k)}
	{assign var="k" value='tmpCount'}
	{assign var="optionNumber" value='tmpCntPlus'}
{else}
	{assign var="optionNumber" value=$k+1}
{/if}
<div id="partOpt{$k}" class="option-item">
	<div class="item-header">
		<div class="form-group row mb-0">
			<label class="col-auto form-label font-weight-bold custom-color">
				OPTION {$optionNumber}
			</label>
			<div class="col-lg-4 col-sm-9">
				<input type="text" id="txtOption{$k}" name="txtOption{$k}" class="form-control" value="{$optionNames[$optionNumber]|default:''}"/>
			</div>
		</div>
	</div>
	{include file='partOfferSection.tpl'}
	{if $includingCampaignType|default:'' == "mo"}
		<div class="row">
			<div class="col-sm-offset-2 col-sm-10" style="margin-top: 0px; margin-bottom: 30px;">
				<button onclick="addDestinationMultipleOptions(0, 1, 0); return false" class="btn btn-primary btn-sm mr-3">
					<i class="fa fa-plus"></i> Add Offer
				</button>

				<button onclick="addDestinationMultipleOptions(0, 0, 1); return false" class="btn btn-primary btn-sm">
					<i class="fa fa-plus"></i> Add Option
				</button>
			</div>
		</div>
	{/if}
	{if $includingCampaignType|default:'' == "lps"}
		<div class="row">
			<div class="col-sm-offset-2 col-sm-10" style="margin-top: 0px; margin-bottom: 30px;">
				<button onclick="addDestinationPageSequence(0, 1, 0, 0); return false" class="btn btn-primary btn-sm">
					<i class="fa fa-plus"></i> Add Offer
				</button>
				&nbsp;&nbsp;
				<button onclick="addDestinationPageSequence(0, 0, 0, 1); return false" class="btn btn-primary btn-sm">
					<i class="fa fa-plus"></i> Add Option
				</button>
			</div>
		</div>
	{/if}
</div>

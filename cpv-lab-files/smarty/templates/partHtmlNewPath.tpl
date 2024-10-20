{if is_null($k)}
	{assign var="k" value='tmpCount'}
	{assign var="optionNumber" value='tmpCntPlus'}
{else}
	{assign var="optionNumber" value=$k+1}
{/if}
<div id="partPth{$k}" class="path-item">
	<div class="form-horizontal mb-2">
		<div class="path-header pl-0 pr-0">
			<div class="row align-items-center">
				<div class="col-lg-8 col-6">
					<label class="font-weight-bold mb-0 pl-3 custom-color">PATH {$optionNumber}</label>
				</div>
				<div class="col-lg-2 col-md-3 max-w-lg-140 d-none d-md-block">
					<div class="form-group mb-0">
						<label class="mb-0 custom-color">Share %</label>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-6">
					<input type="text" onblur="validateInt(this, 0, 100)" value="{$destinationDetails[$k][0]["SharePath"]|default:0}" id="txtSharePath{$k}" name="txtSharePath{$k}" class="form-control max-w-lg-110"/>
				</div>
			</div>
		</div>
	</div>

	<div>
		<p class="font-weight-bold position-absolute mt-3 mb-0">Landing Pages in Path {$optionNumber}</p>
		{include file='partLPSection.tpl'}
		<button onclick="addDestinationMultiplePaths(1, 0, 0); return false" class="btn btn-primary btn-sm mr-3">
			<i class="fa fa-plus"></i> Add Landing Page
		</button>
	</div>

	<div class="mt-4 pt-2">
		<p class="font-weight-bold position-absolute mt-3 mb-0">Offers in Path {$optionNumber}</p>
		{include file='partOfferSection.tpl'}
		<button onclick="addDestinationMultiplePaths(0, 1, 0); return false" class="btn btn-primary btn-sm mr-3">
			<i class="fa fa-plus"></i> Add Offer
		</button>
	</div>
	{include file='partHtmlNewPathButtons.tpl'}
</div>

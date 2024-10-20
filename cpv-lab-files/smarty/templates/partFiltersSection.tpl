<!--<a href="javascript:;" onclick="resetFilters()" class="mr-2 mb-2" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Remove All Filters">
    <i class="fe fe-x-circle"></i>
</a>-->
{if isset($assignedVisitorsTypes)}
	{include file='partFilterMultiselect.tpl' name='Visitors' items=$assignedVisitorsTypes selectedItems=$selectedVisitorsTypes captionPlural='Visitors'}
{/if}

{include file='partFilterMultiselect.tpl' name='Target' items=$assignedTargets selectedItems=$selectedTargets captionPlural='Targets'}

{if !(($campaignTypeID == 8 || $campaignTypeID == 9) && $destinationType == 2)}
	{include file='partFilterMultiselect.tpl' name='LP' items=$assignedLPs selectedItems=$selectedLPs captionPlural='Pages'}
{/if}

{include file='partFilterMultiselect.tpl' name='Offer' items=$assignedOffers selectedItems=$selectedOffers captionPlural='Offers'}

<script type="text/javascript">
	{literal}
		function applyFilter()
		{
			var selectedItems = $(this).val();
			var control = $(this).attr('id').replace("ddlFilter","");
			if (selectedItems == null || selectedItems == '' || selectedItems == $('#hidFilter' + control).val())
			{
				return;
			}
	{/literal}
			{if $useAjax|default:false}
			$('#hidFilter' + control).val(selectedItems);
			reloadTargetSection();
			{else}
			changeCampaign(true);
			{/if}
	{literal}
		};
	{/literal}
	function resetFilters()
	{
		{if $useAjax|default:false}
		$('#ddlFilterVisitors')[0].sumo.selectAll();
		$('#ddlFilterTarget')[0].sumo.selectAll();
		$('#ddlFilterLP')[0].sumo.selectAll();
		$('#ddlFilterOffer')[0].sumo.selectAll();
		reloadTargetSection();
		{else}
		changeCampaign(false);
		{/if}
	}
</script>

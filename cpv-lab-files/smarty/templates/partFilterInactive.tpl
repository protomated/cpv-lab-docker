<select id="ddlFilterInactive" class="slect-filter" multiple="multiple">
	<option value="0" selected="selected">Active Items</option>
	<option value="1" selected="selected">Inactive Items</option>
</select>
<script type="text/javascript">
	$(document).ready(function () {
		$('#ddlFilterInactive').SumoSelect({ 
			csvDispCount: 1, 
			forceCustomRendering: true,
			floatWidth: 1,
			placeholder:'Item Types', 
			search: false, 
			searchText:'Quick filter', 
			selectAll:true, 
			captionFormatAllSelected: "All Items" 
		});
		$('select#ddlFilterInactive').on('sumo:closed', applyFilterInactive);
	});
	{literal}
		function applyFilterInactive()
		{
			var selectedItems = $(this).val();
			if (selectedItems == null || selectedItems == '' || selectedItems == $('#hidFilterInactive').val())
			{
				return;
			}
	{/literal}
			$('#hidFilterInactive').val(selectedItems);
			reloadTargetSection();
			reloadAdSection();
			reloadLandingSection();
			reloadOfferSection();
	{literal}
		};
	{/literal}
</script>

<input type="hidden" id="hidFilterInactive" value="0,1"/>

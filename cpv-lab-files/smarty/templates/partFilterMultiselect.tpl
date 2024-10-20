<select id="ddlFilter{$name}" class="slect-filter" multiple="multiple">
	{html_options options=$items selected=$selectedItems}
</select>
<script type="text/javascript">
	$(document).ready(function () {
		$('#ddlFilter{$name}').SumoSelect({ 
			csvDispCount: 1, 
			forceCustomRendering: true,
			floatWidth: 1,
			placeholder:'Select {$captionPlural}', 
			search: true, 
			searchText:'Search {$captionPlural}', 
			selectAll:true, 
			captionFormat:'{literal}{{/literal}0{literal}}{/literal} {$captionPlural} Selected', 
			captionFormatAllSelected: "All {$captionPlural}" 
		});
		$('select#ddlFilter{$name}').on('sumo:closed', applyFilter);
	});
</script>
<input type="hidden" id="hidFilter{$name}" value="{implode(',', $selectedItems)}"/>
<input type="hidden" id="hidFilter{$name}Total" value="{count($items)}"/>

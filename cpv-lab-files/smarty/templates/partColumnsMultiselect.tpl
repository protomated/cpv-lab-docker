{assign var="closeFunction" value=($closeFunction|default:''!='') ? $closeFunction : 'changeColumn'}
<select id="ddlColumns{$reportTypeID}" class="slect-columns" multiple="multiple">
        {html_options options=$allColumns selected=$selectedColumns}
</select>
<script type="text/javascript">
	$(document).ready(function() {
		$("#ddlColumns{$reportTypeID}").SumoSelect({ 
				csvDispCount: -1, 
				forceCustomRendering: true,
				floatWidth: 1,
				placeholder:'Select Columns', 
				search: true, 
				searchText: 'Search for columns', 
				selectAll: true, 
				defaultOptions: true,
				defaultOptionsHtml: '<label style="float:left" onclick="{$closeFunction}(this, {$reportTypeID},true);" title="Show Default Columns">Default</label>' +
						{if $reportTypeID != 4}'<label style="float:right" onclick="removeDragCookie({if $selectedCampaignID}{$selectedCampaignID}{else}0{/if}, {$reportTypeID}); return false;" title="Reset Columns Order to Default">Reset</label>'{else}''{/if},
				{literal}captionFormat: '{0} Columns Selected',{/literal}
				captionFormatAllSelected: "All Columns" }
		);
		 
		$("select#ddlColumns{$reportTypeID}").on('sumo:closed', function() {
			var reportID = {$reportTypeID}; // this.id.replace("ddlColumns","");
			//console.log(this.id + ' - ' + reportID);
			{$closeFunction}("#ddlColumns" + reportID, reportID);
		  });

		//select all items in a group in 
		/*$(".group>label").click(function(e) {
			//console.log($(this).parent().children("ul").children("li.opt").length);
			$(this).parent().children("ul").children("li.opt").addClass('selected');
		  });*/
	});
</script>
<input type="hidden" id="hidCurrentColumn{$reportTypeID}" value="{implode(',', $selectedColumns)}"/>

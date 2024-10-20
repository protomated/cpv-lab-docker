<tr>
	<td colspan="{if $reportType|default:1 == 1}10{else if $showSelectedMetricColumn}8{else}7{/if}" 
		style="padding-top:10px;" {if $className}class="{$className}"{/if}>
		<img src="images/{$rowImage}" alt="{$rowCaption}"/>
	</td>
</tr>
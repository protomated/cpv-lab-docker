{if $resetCycle|default:false}{cycle values="normalRow,altRow" reset=true advance=false print=false}{/if}
{foreach $rows as $row}
	<tr class="{cycle values="normalRow,altRow"} {$rowStyle|default:''}">
		<td class="left">{if $dontEncode|default:false}{$row.Caption nofilter}{else}{$row.Caption}{/if}</td>
		{if $reportType|default:1 == 2 && $showSelectedMetricColumn}
			<td>{$row.$sortField}</td>
		{/if}
		<td>{$row.PercentViews nofilter}</td>
		<td>{$row.Views nofilter}</td>
		{if $reportType|default:1 == 1}
			<td>{$row.CTR nofilter}</td>
			<td>{$row.CR nofilter}</td>
			<td>{$row.Conversion nofilter}</td>
		{/if}
		<td>{$row.Cost nofilter}</td>
		<td>{$row.Revenue nofilter}</td>
		<td>{$row.Profit nofilter}</td>
		<td>{$row.ROI nofilter}</td>
	</tr>
{/foreach}
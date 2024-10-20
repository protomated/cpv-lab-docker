{cycle values="normalRow,altRow" reset=true advance=false print=false}
{foreach $rows as $row}
	<tr class="{if $row.IsHighlight|default:false} highlightRow{/if}{if $row.RowStyle|default:''} {$row.RowStyle}{/if}">
		{foreach $columns as $column}
			<td{if $column.ClassName} class="{$column.ClassName} {if $column@first}{$row.FirstColStyle|default:''}{/if}"{/if}>{$row.{$column.ColumnName} nofilter}</td>
		{/foreach}
	</tr>
{/foreach}
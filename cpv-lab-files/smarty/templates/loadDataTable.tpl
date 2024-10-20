{if $extraDetails|default:''}{$extraDetails}|||{/if}
{if $exportLink|default:''}{$exportLink}|||{/if}
{include file='partHeaderRow.tpl' columns=$visibleColumns}
{include file='partNormalRows.tpl' columns=$visibleColumns rows=$reportRows}
{if $totalsRow}
{include file='partTotalsRow.tpl' columns=$visibleColumns totals=$totalsRow}
{/if}
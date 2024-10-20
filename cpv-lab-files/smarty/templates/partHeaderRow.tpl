{assign var=sortColumnID value=-1}
<thead>
	<tr class="headerRow center">
		{foreach $columns as $column}
			{if $writeSimpleHeader|default:false}
				<th>{$column.ColumnHeader nofilter}</th>
				{if $sortField|default:'' == $column.ColumnSort}{assign 'sortColumnID' $column@index}{/if}
			{else}
				<th{$column.ExtraIDText nofilter} {if $column.Style|default:""}style="{$column.Style}"{/if} class="text-nowrap {$column.ExtraClass}" data-sorter="false">{$column.ColumnHeaderFormatted nofilter}</th>
			{/if}
		{/foreach}
		{if $writeEndTag|default:true}
		</tr>
	</thead>
{/if}
{if $sortColumnID!=-1}
<input type="hidden" id="hidSortColumnID" value="{$sortColumnID}" />
{/if}
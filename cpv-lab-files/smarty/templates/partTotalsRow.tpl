<tfoot>
    <tr>
        {foreach $columns as $column}
            <th class="tc-r">{if isset($totals.{$column.ColumnName})}{$totals.{$column.ColumnName} nofilter}{/if}</th>
        {/foreach}
    </tr>
</tfoot>
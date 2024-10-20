{foreach $allColumns as $column}
	{if $column.ColumnCategoryID == $categoryID}
            <label>
                <input type="checkbox" class="flat-purple minimal-column" name="chkColumns[]" id="chkColumn{$column.ColumnID}" value="{$column.ColumnID}"
                    {if $column.IsSelected} checked="checked"{/if}/>
            </label>
            <label id="lblColumn{$column.ColumnID}" for="chkColumn{$column.ColumnID}" class="font-weight-normal cursor-pointer">{$column.ColumnCaption}
                    {if $column.ColumnCaption != $column.ColumnCaption2}/{$column.ColumnCaption2}{/if}</label>
            <br/>
	{/if}
{/foreach}

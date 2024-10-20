{if $isDisabled|default:false}
<button type="button" class="btn btn-danger btn-sm {$extraDeleteClass|default:''}" disabled data-toggle="tooltip" data-placement="top" title="{$disabledTooltip|default:''}"><i class="fe fe-x"></i>&nbsp;{$deleteText|default:'Delete'}</button>
{else}
<button type="button" class="btn btn-danger btn-sm {$extraDeleteClass|default:''}" {if $isDefaultItem|default:false}disabled {/if} data-toggle="modal" data-target="#deleteItemModal" onclick="openDeleteWindow({$itemID}, this)"><i class="fe fe-x"></i>&nbsp;{$deleteText|default:'Delete'}</button>
{/if}
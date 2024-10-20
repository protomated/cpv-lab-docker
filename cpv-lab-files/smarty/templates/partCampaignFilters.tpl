{assign var=controlsNotInline value=empty($controlsInline)}
<div>
    <div class="form-horizontal">
        <div class="form-group">
            <label for="ddlFilterType" class="col-md-{if $labelColMd|default:false}{$labelColMd}{else}{if $controlsNotInline}3{else}2{/if}{/if} control-label">View</label>
            <div class="col-md-{if $controlsNotInline}7{else}3{/if}">
                <select name="ddlFilterType" id="ddlFilterType" class="form-control" onchange="changeFilter()">
                    {html_options options=$filterTypes selected=$filterType}
                </select>
            </div>
        {if $controlsNotInline}
        </div>
        <div class="form-group">
        {/if}
            <label for="ddlFilterGroup" class="col-md-{if $labelColMd|default:false}{$labelColMd}{else}{if $controlsNotInline}3{else}1{/if}{/if} control-label">Group</label>
            <div class="col-md-{if $controlsNotInline}7{else}3{/if}">
                <select name="ddlFilterGroup" id="ddlFilterGroup" class="form-control" onchange="changeFilter()">
                    {html_options options=$filterGroups selected=$filterGroup}
                </select>
            </div>
        </div>
    </div>
</div>
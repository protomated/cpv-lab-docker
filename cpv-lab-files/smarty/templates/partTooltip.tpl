{if !isset($tooltipsType)}
    {assign 'tooltipsType' 'popover'}
{/if}
{if $useVarTooltipText|default:false}
    {assign 'hereTooltipText' $tooltipText}
{else}
    {assign 'hereTooltipText' $tooltips.$tooltipID|default:''}
{/if}
{if !isset($tooltipPlace)}
    {assign 'tooltipPlace' 'right'}
{/if}
{if $tooltipsType == 'old'}
    <span class="tooltipIcon">
	&nbsp;<span class="fa fa-info-circle cursor-pointer text-larger" alt="Details" onclick="ShowPopUp('tip{$tooltipID}'); return false;"></span>
	<span id="tip{$tooltipID}" class="tooltipBox" style="display:none">
                <span class="glyphicon glyphicon-remove-circle cursor-pointer text-larger tooltipClose" onclick="HidePopUp('tip{$tooltipID}')"></span>
                {$hereTooltipText nofilter}
	</span>
    </span>
{elseif $tooltipsType == 'popoverold'}
    <span class="tooltipIcon" style="position: static;">
        &nbsp;<a tabindex="-1" id="ctrl-tip{$tooltipID}" class="a-popover-tooltip-ctrl" alt="Details" data-placement="{$tooltipPlacement|default:'bottom'}" data-html="true" onclick="return false;">
            <span class="fa fa-info-circle text-larger"></span>
        </a>
        &nbsp;
        <span id="tip{$tooltipID}" class="tooltipBox" style="display:none;">
            {$hereTooltipText nofilter}
        </span>
    </span>
    <script>
        (function(){ldelim}
            var tooltipId = '{$tooltipID}';
            {literal}
            $(document).ready(function(){
                $('#ctrl-tip'+tooltipId).popover({
                    trigger: 'focus',
                    content: $('#tip'+tooltipId).html()
                });
                /*
                $('#ctrl-tip'+tooltipId).click(function(){
                    $(this).popover('toggle');
                });
                */
            });
            {/literal}
        {rdelim})();
    </script>

{elseif $tooltipsType == 'popoverclick'}
	<span {if $tooltipControlID|default:''}id="{$tooltipControlID}"{/if} class="fa fa-info-circle text-larger" data-placement="{$tooltipPlace}" data-toggle="popover" data-html="true" title="" data-content="{$hereTooltipText}" data-original-title=""></span>
{elseif $tooltipsType == 'popover'}
	<a {if $tooltipControlID|default:''}id="{$tooltipControlID}"{/if} tabindex="-1" class="fa fa-info-circle" data-placement="{$tooltipPlace}" data-toggle="popover" data-trigger="focus" data-html="true" title="" data-content="{$hereTooltipText}" data-original-title=""></a>
{elseif $tooltipsType == 'modal'}
{elseif $tooltipsType == 'jquery'}
	<span {if $tooltipControlID|default:''}id="{$tooltipControlID}"{/if} class="fa fa-info-circle text-larger" data-placement="{$tooltipPlace}" data-toggle="tooltip" data-html="true" title="" data-original-title="{$hereTooltipText}"></span>
{/if}

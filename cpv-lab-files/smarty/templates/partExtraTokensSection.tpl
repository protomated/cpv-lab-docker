<div class="d-flex mt-3 mb-0">
    <span class="custom-switch-description ml-0 mr-4">Hide Inactive &amp; Unused {include file='partTooltip.tpl' tooltipID=203}</span>
    <label class="custom-switch">
        <input type="checkbox" class="custom-switch-input" name="chkBlankPages" id="chkBlankPages" {if $campaignDetails.HideBlankPages}checked="checked"{/if} onclick="clickBlankPages()"/>
        <span class="custom-switch-indicator"></span>
    </label>
	<input type="hidden" name="hidExtraTokensToShow" id="hidExtraTokensToShow" value="{$extraTokensToShow}"/>
</div>

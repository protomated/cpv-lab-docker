<select name="ddlInterval" id="ddlInterval" onchange="if ($(this).val() != 4) changeCampaign({if $withInterval|default:false}true{/if})" class="form-control" {if $intervalSelectWidth|default:false}style="width: {$intervalSelectWidth}px;"{/if}>
    <option value="1" {if $intervalType == "1"}selected="selected"{/if}>Today</option>
    <option value="2" {if $intervalType == "2"}selected="selected"{/if}>Yesterday</option>
    <option value="3" {if $intervalType == "3"}selected="selected"{/if}>Past 7 Days</option>
    <option value="5" {if $intervalType == "5"}selected="selected"{/if}>Past 14 Days</option>
    <option value="6" {if $intervalType == "6"}selected="selected"{/if}>Past 30 Days</option>
    <option value="7" {if $intervalType == "7"}selected="selected"{/if}>This Month</option>
    <option value="9" {if $intervalType == "9"}selected="selected"{/if}>Last Month</option>
    <option value="8" {if $intervalType == "8"}selected="selected"{/if}>All Time</option>
    <option value="4" {if $intervalType == "4"}selected="selected"{/if}>Custom</option>
</select>
<select name="{$selectName|default:'ddlCampaigns'}" id="{$selectId|default:'ddlCampaigns'}" onchange="changeCampaign({$onchangeParam|default:'' nofilter})" class="form-control">
    {html_options options=$campaignsArray selected=$selectedCampaignID}
</select>
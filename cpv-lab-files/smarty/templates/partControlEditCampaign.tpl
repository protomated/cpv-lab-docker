{if $showCampaignEditBox|default:true}
	{if $selectedCampaignID}
		<a href="{if $campaignPageName}{$campaignPageName}?id={$selectedCampaignID}{else}#{/if}" class="btn btn-primary {$extraClass|default:''}"><i class="fa fa-edit"></i> {$buttonText|default:'Edit'}</a>
	{else if isset($campaignControl)}
		<a href="javascript:;" onclick="editCampaign('{$campaignControl}')" class="btn btn-primary {$extraClass|default:''}"><i class="fa fa-edit"></i> {$buttonText|default:'Edit'}</a>
	{/if}
{/if}

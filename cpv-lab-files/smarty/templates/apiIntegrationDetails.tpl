<h5>{$integration.ApiIntegrationName}</h5>
<p>Type: <b>{$integration.ApiTypeName}</b></p>
<p>{if $integration.LastRunDate}Last run on {$integration.LastRunDate|date_format:$globalDateFormat}
        with Status {$integration.Status}.
    {else}This API Integration never ran. Please make sure that you have setup the API Integration Cron job.{/if}
</p>

<p>Matched Campaigns and number of Keywords imported:</p>

<table class="table table-striped table-bordered table-hover border-t0 text-nowrap dtSettings" style="width:100%">
    <thead>
    <th>ID</th>
    <th>Campaign Name</th>
    <th>Keywords</th>
    <th>Status</th>
    </thead>
    <tbody>
    {foreach $campaigns as $campaign}
        <tr>
            <td>{$campaign.CampaignID}</td>
            <td><a href="campaign-edit.php?id={$campaign.CampaignID}">{$campaign.CampaignName}</a></td>
            <td>{$campaign.KeywordsImportedCount}</td>
            <td>{$campaign.Status}</td>
        </tr>
    {/foreach}
    </tbody>
</table>

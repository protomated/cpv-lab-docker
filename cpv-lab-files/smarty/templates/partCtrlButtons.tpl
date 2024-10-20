<div class="card">
    <div class="card-body pb-2">
        <button name="btnSubmit_x" id="btnSubmit_x" onclick="return checkShares{$campSuffix}()" class="btn btn-primary mr-3 mb-3" {if !$campaignID}disabled="disabled"{/if}>Save Campaign</button>

        <button name="btnSubmitExit_x" id="btnSubmitExit_x" onclick="return checkShares{$campSuffix}()" class="btn btn-primary mr-3 mb-3" {if !$campaignID}disabled="disabled"{/if}>Save &amp; Exit</button>

        <button name="btnCancel_x" onclick="return redirectToCampaigns()" class="btn btn-secondary mb-3" {if !$campaignID}disabled="disabled"{/if}>Cancel</button>
    </div>
</div>

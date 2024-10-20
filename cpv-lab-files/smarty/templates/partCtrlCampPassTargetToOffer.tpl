<div class="input-group">
    <span class="input-group-addon">
        <label>
            <input type="checkbox" name="chkPassTargetOffer" id="chkPassTargetOffer" {if $campaignDetails.PassTargetOffer}checked="checked"{/if}/>
            <i></i>
        </label>
    </span>
    <span class="input-group-addon" style="border-right: none; width: 50%; text-align: left;">
        <label for="chkPassTargetOffer" class="font-weight-normal cursor-pointer" style="padding-top: 1px; margin-bottom:0">Pass Target to Offer as</label>
    </span>
    <input type="text" name="txtPassTargetOfferParam" class="form-control" value="{$campaignDetails.PassTargetOfferParam}"/>
</div>
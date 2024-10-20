<div class="input-group">
    <span class="input-group-addon">
        <label>
            <input type="checkbox" name="chkPassCookie" id="chkPassCookie" {if $campaignDetails.PassCookie}checked="checked"{/if}/>
            <i></i>
        </label>
    </span>
    <span class="input-group-addon" style="border-right: none; width: 50%; text-align: left;">
        <label for="chkPassCookie" class="font-weight-normal cursor-pointer" style="padding-top: 1px; margin-bottom:0">Pass Cookie to Offer as</label>
    </span>
    <input type="text" name="txtPassCookieParam" class="form-control" value="{$campaignDetails.PassCookieParam}"/>
</div>
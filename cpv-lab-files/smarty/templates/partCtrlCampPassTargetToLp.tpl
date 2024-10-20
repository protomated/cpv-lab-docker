<div class="input-group">
    <span class="input-group-addon">
        <label>
            <input type="checkbox" name="chkPassTarget" id="chkPassTarget" {if $campaignDetails.PassTarget}checked="checked"{/if}/>
            <i></i>
        </label>
    </span>
    <span class="input-group-addon" style="border-right: none; width: 50%; text-align: left;">
        <label for="chkPassTarget" class="font-weight-normal cursor-pointer" style="padding-top: 1px; margin-bottom:0">Pass Target to LP as</label>
    </span>
    <input type="text" name="txtPassTargetParam" class="form-control" value="{$campaignDetails.PassTargetParam}"/>
</div>
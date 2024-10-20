<div class="mt-2">
    <label for="chkCaptureIPEU" class="mr-3">
        <input type="checkbox" class="flat-purple" name="chkCaptureIPOptions[]" id="chkCaptureIPEU" value="2" {if $campaignDetails.CaptureIPEU}checked="checked"{/if}/>
        European Union
    </label>

    <label for="chkCaptureIPCA">
        <input type="checkbox" class="flat-purple" name="chkCaptureIPOptions[]" id="chkCaptureIPCA" value="4" {if $campaignDetails.CaptureIPCA}checked="checked"{/if}/>
        California
    </label>
</div>

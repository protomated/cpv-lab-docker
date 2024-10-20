<div>
    <label for="radRedirectTypeDirect" class="mr-3">
        <input type="radio" class="flat-purple" name="radRedirectType" id="radRedirectTypeDirect" value="1" {if $campaignDetails.RedirectType == 1}checked="checked"{/if}/>
        Direct Redirect (send)
    </label>
    <label for="radRedirectTypeMeta" class="mr-3">
        <input type="radio" class="flat-purple" name="radRedirectType" id="radRedirectTypeMeta" value="2" {if $campaignDetails.RedirectType == 2}checked="checked"{/if}/>
        Double Meta Refresh (hide)
    </label>
    <label for="radRedirectTypeLoop">
        <input type="radio" class="flat-purple" name="radRedirectType" id="radRedirectTypeLoop" value="3" {if $campaignDetails.RedirectType == 3}checked="checked"{/if}/>
        Redirect Loop (hide)
    </label>
</div>


<div class="card" id="wdgMultivariateRedirectModify">
    <div class="card-header">
        <h4>Generate Landing Page Rotator Code <span class="ml-2">{include file='partCampaignTooltip.tpl'}</span></h4>
    </div>
    <div class="card-body max-w-850">
        <div class="row align-items-end mb-4">
            <div class="col-lg-8">
                 <div class="form-group mb-3 mb-lg-0">
            		  <label>Select the Campaign to generate Landing Page Rotator Code for<br/><small>(the Landing Pages from this campaign and their corresponding share% will be used)</small></label>
                      <select name="ddlCampaignsRedirect" id="ddlCampaignsRedirect" onchange="" class="form-control">
    						{html_options options=$campaignsArray selected=$selectedCampaignID}
    				  </select>
		          </div>
		     </div>

             <div class="col-lg-4">
                {include file='partControlEditCampaign.tpl' campaignControl='ddlCampaignsRedirect' selectedCampaignID=''}
             </div>
			  </div>

        <div class="row">
            <div class="col-xl-7 col-lg-8">
                <div class="form-group mb-4">
                  <label for="chkPassPageID">
                    <input type="checkbox" class="flat-purple" name="chkPassPageID" id="chkPassPageID"/>
                    Pass the Landing Page ID in the URL using parameter
                  </label>
                  <input class="form-control" type="text" name="txtParamPageID" id="txtParamPageID" value="lpid"/>
                </div>
            </div>
        </div>

		
		<div class="row">
			<div class="col-12 form-group">
				<label for="chkPassParameters" class="mb-0 mb-xl-2">
					<input type="checkbox" class="flat-purple" name="chkPassParameters" id="chkPassParameters" checked="checked">
					Pass parameters to next page (required for tracking traffic source tokens)</label>
				</label>
			</div>
		</div>

		<div>
			<button name="btnGenerateRedirect_x" class="btn btn-primary" onclick="ajaxGenerateLPRedirectorCode();
				return false;">Generate Landing Page Rotator Code</button>
			<img src="images/spinner.gif" alt="Working..." id="spinr" class="ml-4" style="display:none"/>
		</div>


		<div class="row">
			<div id="divResultR" class="col-12 mt-3" style="display:none">
				<label><span class="text-danger">GENERATED LANDING PAGE ROTATOR CODE:</span><br/>
					Copy and pase the code below in a blank *.php page, save the page and upload it on your server (where the Landing Pages are located).</label>
				<div class="input-group">
					<textarea name="txtGeneratedRedirectCode" id="txtGeneratedRedirectCode" class="form-control" rows="10">{$code|default:''}</textarea>
					{include file="partCopyClipboard.tpl"}
				</div>
			</div>
		</div>

		</div>
	</div>
</div>

<script type="text/javascript">
	{literal}
		function changeCampaign()
		{
			window.location.href = getFullUrl();
		}

		function getFullUrl()
		{
			return redirectUrl = 'multivariate-generate.php?camp=' + $("#ddlCampaigns").val();
		}

	{/literal}
		$(document).ready(function () {
			initializeCopyToClipboard();
		initializeQrCode();
		});
</script>


<div class="card" id="wdgMultivariateRedirectModify">
    <div class="card-header">
        <h4>Generate Landing Page Rotator Code</h4>
    </div>
    <div class="card-body">
      <div class="row align-items-end mb-4">
          <div class="col-lg-8">
               <div class="form-group mb-3 mb-lg-0">
					          <label>Select the Campaign to generate Landing Page Rotator Code for<br/><small class="text-warning">(the Landing Pages from this campaign and their corresponding share% will be used)</small></label>
                    <select name="ddlCampaignsRedirect" id="ddlCampaignsRedirect" onchange="" class="form-control">
          						{html_options options=$campaignsArray selected=$selectedCampaignID}
          					</select>
				        </div>
			     </div>

           <div class="col-lg-4">
              {include file='partControlEditCampaign.tpl' campaignControl='ddlCampaignsRedirect' selectedCampaignID=''}
           </div>
      </div>

      <button name="btnGenerateRedirect_x" class="btn btn-primary" onclick="return false;">Generate Landing Page Rotator Code</button>


			<div class="alert alert-warning text-center mt-5 mb-0" role="alert">
					<p class="mb-0">In order to use the MV Lab Multivariate Tool you need to have a valid license for it first.<br/>
            Get a MV Lab license from <a href="https://cpvlab.pro/mvlab-multivariate-testing-tool.php" target="_blank"><u>the dedicated MV Lab page</u></a> on our website!</p>
			</div>

		</div>
</div>

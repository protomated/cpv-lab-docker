{include file="partMessage.tpl"}

<div class="card" id="wdgMultivariateGenerateModify">
    <div class="card-header">
        <h4>Generate Multivariate Tool Code</h4>
    </div>
    <div class="card-body">
		    <div class="row">
            <div class="col-xl-8 col-lg-10">
				         <div class="form-group">
					            <label>Select the Campaign to generate MultiVariate Code for<br/><small class="text-warning">(make sure that you already defined Multivariate Extra Tokens for this campaign)</small></label>

                      {include file='partControlSelectCampaign.tpl'}
				          </div>
            </div>
        </div>

        {include file='partControlEditCampaign.tpl'}

        <div class="row mt-4">
    				<div class="col-xl-8 col-lg-10">
                <div class="form-group mb-4">
          					<label>(Optional) If you have an existing Multivariate PHP Code that you want to modify, paste it in the box below:</label>
          					<textarea name="txtExistingCode" id="txtExistingCode" class="form-control" rows="3">{$txtExistingCode}</textarea>
    				     </div>
            </div>
        </div>

				<button name="btnImport_x" class="btn btn-primary">Parse existing code</button>

				<div class="alert alert-warning text-center mt-5 mb-0" role="alert">
					<p class="mb-0">In order to use the MV Lab Multivariate Tool you need to have a valid license for it first.<br/>
					Get a MV Lab license from <a href="https://cpvlab.pro/mvlab-multivariate-testing-tool.php" target="_blank"><u>the dedicated MV Lab page</u></a> on our website!</p>
				</div>

		</div>
	</div>
</div>

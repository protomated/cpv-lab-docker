{include file="partMessage.tpl" errorMessageNotAutoclose=$errorMessageType==1 }

<div class="card" id="wdgLoginDataGeneralSettings">
    <div class="card-header">
        <h4>General Settings &amp; Login Details</h4>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-xl-4 col-sm-6">
                <div class="form-group">
                    <label>Username</label>
                    <input name="txtUsername" type="text" class="form-control" value="{$currentAdmin.Username|default:''}" />
                </div>
                <div class="form-group mb-4">
                    <label>Password</label>
                    <input type="password" name="txtPassword" class="form-control"/>
                </div>

                <h6 class="pt-1 mb-3">CHANGE PASSWORD &amp; SAVE</h6>
                <div class="form-group">
                    <label>New Password</label>
                    <input type="password" name="txtNewPassword" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" name="txtConfirmPassword" class="form-control"/>
                </div>
            </div>

            <div class="col-xl-4 col-sm-6">
                <div class="form-group">
                    <label>Select Time Zone <small class="text-muted">Server timezone is {$serverTimezone}</small></label>
                    <select name="ddlTimezone" class="form-control">
                        {html_options options=$timezoneOptions selected=$currentAdmin.Timezone|default:''}
                    </select>
                </div>
                <div class="form-group">
                    <label>Login Page Name</label>
                    <input type="text" name="txtLoginPage" value="{$loginPage|default:'login.php'}" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>Default Page</label>
                    <select name="ddlDefaultPage" class="form-control">
                        {html_options options=$defaultPages selected=$currentAdmin.DefaultPage|default:''}
                    </select>
                </div>
                <div class="form-group">
                    <label>Tracking Domains</label>
                    <p>Setup Custom Tracking Domains in the 
                        <a href="custom-domains.php">dedicated Custom Domains page</a>.</p>
                </div>
            </div>

            <div class="col-xl-4">
                <div class="col form-group">
                    <label>Default Capture Options</label>
                    <div>
                        <select name="ddlCaptureOptions[]" id="ddlCaptureOptions" class="slect-captureoptions" multiple="multiple">
                            {html_options options=$captureOptions selected=$selectedCaptureOptions}
                        </select>
                    </div>
                </div>

                <div class="pb-2">
                    <div class="form-group mb-0">
                        <label for="chkRemoveBlockedClicks">
                            <input type="checkbox" class="flat-purple minimal-remove" name="chkRemoveBlockedClicks" id="chkRemoveBlockedClicks" {if $blockedClicksRemoveChecked} checked="checked"{/if}/>
                            Remove Blocked Clicks
                        </label>
                    </div>
                    <div class="form-inline inline-mobile mb-3">
                        <div class="form-group ml-4">
                            <label class="font-weight-normal">Older Than</label>
                            <input type="text" name="txtRemoveBlockedClicks" id="txtRemoveBlockedClicks" value="{$blockedClicksRemove|default:'30'}" class="form-control text-center w-50px" onblur="validateInt(this, 1)"/>
                            <label class="font-weight-normal">days</label>
                        </div>
                    </div>
                </div>

                <div class="pb-2">
                    <div class="form-group mb-0">
                        <label for="chkRemoveErrors">
                            <input type="checkbox" class="flat-purple minimal-remove" name="chkRemoveErrors" id="chkRemoveErrors" {if $errorRemoveChecked} checked="checked"{/if}/>
                            Remove Error Log Entries
                        </label>
                    </div>
                    <div class="form-inline inline-mobile mb-3">
                        <div class="form-group ml-4">
                            <label class="font-weight-normal">Older Than</label>
                            <input type="text" name="txtRemoveErrors" id="txtRemoveErrors" value="{$errorRemove|default:'30'}" class="form-control text-center w-50px" onblur="validateInt(this, 1)"/>
                            <label class="font-weight-normal">days</label>
                        </div>
                    </div>
                </div>

                <div class="pb-2">
                    <div class="form-group mb-0">
                        <label for="chkRemoveClicksips">
                            <input type="checkbox" class="flat-purple minimal-remove" name="chkRemoveClicksips" id="chkRemoveClicksips" {if $clicksipsRemoveChecked}checked="checked"{/if}/>
                            Remove Non-Cookie Details for Visitors
                        </label>
                    </div>
                    <div class="form-inline inline-mobile mb-3">
                        <div class="form-group ml-4">
                            <label class="font-weight-normal">Older Than</label>
                            <input type="text" name="txtRemoveClicksips" id="txtRemoveClicksips" value="{$clicksipsRemove|default:'30'}" onblur="validateInt(this, 1)" class="form-control text-center w-50px"/>
                            <label class="mr-2 font-weight-normal">days</label>
                            {include file='partTooltip.tpl' tooltipID=$removeTooltipID tooltipText=$removeTooltipText useVarTooltipText=true}
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="chkCronCampaigns">
                        <input type="checkbox" class="flat-purple" name="chkCronCampaigns" id="chkCronCampaigns" {if $cronCampaignsChecked}checked="checked"{/if}/>
                        Use Cron Job for data on campaigns.php
                    </label>
                </div>
            </div>
        </div>

        <div class="mt-3">
            <button type="submit" name="btnSubmit_x" class="btn btn-primary mr-3">Save</button>
            <button type="button" name="btnCancel_x" class="btn btn-secondary" onclick="return redirectToCampaigns()">Cancel</button>
        </div>
    </div>
</div>

<div class="card" id="wdgLoginDataApi">
    <div class="card-header">
        <h4>API Access</h4>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-xl-7 col-lg-10">
				{if $showupdstobj.apiaccess|default:0}{include file='partUpdPage.tpl' name='API'}{/if}
		         <p>You can enable API access to your CPV Lab Pro instance.</p>
		         <p>Doing this you will be able to integrate external tools with CPV Lab Pro and provide those tools with information from the database.</p>
		         <p>You need to define an API Key that will be passed in all API calls in order to authenticate the requests.</p>

                <div class="form-group">
                    <label for="chkEnableApi">
                        <input type="checkbox" class="flat-purple" name="chkEnableApi" id="chkEnableApi" {if $enableApiChecked}checked="checked"{/if}{if $showupdstobj.apiaccess|default:0} disabled="disabled"{/if}/>
                        Enable API Access
                    </label>
                </div>

                <div class="form-group mb-4 row">
					<label class="col-auto form-label">API Key:</label>
                    <div class="col-sm-5 pl-sm-1">
						<input class="form-control" type="text" name="txtApiKey" id="txtApiKey" value="{$apiKey}"{if $showupdstobj.apiaccess|default:0} disabled="disabled"{/if}/>
                    </div>
                    <div class="col-3 mt-2 mt-sm-0">
                        <button onclick="generateApiKey(); return false" class="btn btn-primary" id="btnGenerateApiKey"{if $showupdstobj.apiaccess|default:0} disabled="disabled"{/if}>
                          <i class="fe fe-repeat"></i> Generate
                        </button>
                    </div>
                </div>

                <button type="submit" name="btnSubmitApi_x" class="btn btn-primary"{if $showupdstobj.apiaccess|default:0} disabled="disabled"{/if}>Save</button>
            </div>
      </div>

			<p class="mt-4 mb-0">For More Details, review <a href="https://doc.cpvlab.pro/cpv-lab-pro-api.html" target="_blank">this guide</a>.</p>
    </div>
</div>

<div class="card" id="wdgLoginDataBackupDatabase">
    <div class="card-header">
        <h4>Backup Database</h4>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-xl-7 col-lg-10">
                <p>Use the Buttons Below to generate a backup file of your database.</p>
                <p>Use this file when moving to a new server.</p>
				<p class="mb-0">For large Databases, only the Structure Backup is available.</p>
                <button onclick="window.location.href = 'database-backup.php?type=structure'; return false" class="btn btn-primary mt-3 mr-3">Save Database Structure</button>
				{if $enableDatabaseBackup}
                <button onclick="window.location.href = 'database-backup.php'; return false" class="btn btn-primary mt-3">Save Entire Database</button>
				{/if}

		        <p class="mt-4">Users with Medium/Large Databases should use the database backup features</p>
		        <p>within Cpanel and PHPMyAdmin in order to avoid potential page timeouts.</p>
		        <p class="mb-0">For More Details, review <a href="https://doc.cpvlab.pro/database-backup.html" target="_blank">this guide</a>.</p>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
	{literal}
		function clickErrorRemove(control)
		{
			var senderChecked = $(control).prop("checked");
			var txtRemoveErrors = $(control).prop("id").replace("chk", "txt");
			$('#' + txtRemoveErrors).prop("disabled", !senderChecked);
		}

		clickErrorRemove($('#chkRemoveBlockedClicks'));
		clickErrorRemove($('#chkRemoveErrors'));
		clickErrorRemove($('#chkRemoveClicksips'));
		checkApiKey();
		
		$('#chkEnableApi').on('ifChanged', function(event){
			checkApiKey();
		});
		$('.minimal-remove').on('ifChanged', function(event){
			clickErrorRemove(event.target);
		});
	{/literal}
</script>
<style>
h6 {
    margin-bottom: 0;
    margin-top: 14px;
}
</style>

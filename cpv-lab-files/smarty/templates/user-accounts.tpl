{if $showupdstobj.useraccounts|default:0}{include file='partUpdPage.tpl'}{/if}
{include file="partMessage.tpl"}

<div class="card" id="wdgUserAccountsModify">
    <div class="card-header">
        <h4>{if $editMode}Edit{else}Add{/if} User Account</h4>
    </div>
    <div class="card-body">
        <p>Define additional User Accounts with specific permissions to all or just part of the campaigns. More details about User Accounts in <a href="https://doc.cpvlab.pro/multi-user.html" target="_blank">our Online Documentation</a>.</p>
        {if $usersLimit>0}<p><b>Your license allows up to {$usersLimit} User Accounts to be created.</b></p>
        {else}<p class="profitRed font-weight-bold">Your current plan doesn't allow setting up additional User Accounts. Please <a href="{if $iscldvrs|default:0}https://billing.stripe.com/p/login/9AQeWsa2Z32D8x2144{else}https://cpvlab.pro/pricing-signup.php?utm_source=starter-domains{/if}" target="_blank" class="font-weight-bold">upgrade your plan</a> in order to use this feature.</p>
        {/if}
        <div class="row mt-4">
            <div class="col-sm-4">
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="txtUsername" id="txtUsername" class="form-control" value="{$currentUser.Username|default:''}"/>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label>Password {if $editMode}<small class="text-muted">(leave blank for no change)</small>{/if}</label>
                    <input type="password" name="txtPassword" class="form-control"  autocomplete="new-password"/>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label>Role</label>
                    <select name="ddlUserRoles" id="ddlUserRoles" class="form-control">
                        {html_options options=$rolesArray selected=$currentUser.UserRoleID|default:3}
                    </select>
                </div>
            </div>
        </div>

        <div class="row align-items-end">
            <div class="col-sm-6 col-xl-4">
                <div class="form-group">
                    <label>Select Time Zone <small><i>(Server timezone is {$serverTimezone})</i></small></label>
                    <select name="ddlTimezone" class="form-control">
                        {html_options options=$timezoneOptions selected=$currentUser.Timezone|default:$serverTimezone}
                    </select>
                </div>
            </div>
            <div class="col-sm-6 col-xl-4">
                <div class="form-group">
                    <label>Default Page</label>
                    <select name="ddlDefaultPage" class="form-control">
                        {html_options options=$defaultPages selected=$currentUser.DefaultPage|default:'campaigns.php'}
                    </select>
                </div>
            </div>
        </div>

        <div class="row mt-3 mb-4 access-level">
            <div class="col-12">
                <p>Select access level for account</p>
            </div>
            <div class="col-xl-4 col-12 all-camp">
                <div class="form-group">
                    <label>
                        <input class="flat-purple" type="radio" name="radUserAccess" id="radUserAccessFull" value="1" {if $currentUser.UserAccessType|default:1 == 1}checked="checked"{/if}/>
                        Access to all campaigns
                    </label>
                    {include file='partTooltip.tpl' tooltipID=221}
                </div>
            </div>

            <div class="col col-xl-4 col-12">
                <div class="form-group mb-2">
                    <label>
                        <input class="flat-purple" type="radio" name="radUserAccess" id="radUserAccessAllow" value="2" {if $currentUser.UserAccessType|default:1 == 2}checked="checked"{/if}/>
                        Access only to these campaigns:
                    </label>
                    {include file='partTooltip.tpl' tooltipID=222}
                </div>

                <select name="ddlCampaignsAllow[]" id="ddlCampaignsAllow" class="slect-campaign" multiple="multiple">
                    {html_options options=$campaignsArray selected=$allowedCampaigns}
                </select>
            </div>

            <div class="col col-xl-4 col-12 mt-4 mt-lg-0">
                <div class="form-group mb-2">
					<label>
                        <input class="flat-purple" type="radio" name="radUserAccess" id="radUserAccessDisallow" value="3" {if $currentUser.UserAccessType|default:1 == 3}checked="checked"{/if}/>
				        Access to all campaigns except these:
			        </label>
                    {include file='partTooltip.tpl' tooltipID=223}
                </div>
                <select name="ddlCampaignsDisallow[]" id="ddlCampaignsDisallow" class="slect-campaign" multiple="multiple">
                    {html_options options=$campaignsArray selected=$disallowedCampaigns}
                </select>
            </div>
        </div>

        <div class="row mt-3 mb-4 access-level">
            <div class="col-xl-4 col-12 all-camp">
                <div class="form-group">
                    <label>
                        <input class="flat-purple" type="radio" name="radUserAccessDomains" id="radUserAccessDomainsFull" value="1" {if $currentUser.UserAccessTypeDomains|default:1 == 1}checked="checked"{/if}/>
                        Access to all custom domains
                    </label>
                    {include file='partTooltip.tpl' tooltipID=224}
                </div>
            </div>

            <div class="col col-xl-4 col-12">
                <div class="form-group mb-2">
                    <label>
                        <input class="flat-purple" type="radio" name="radUserAccessDomains" id="radUserAccessDomainsAllow" value="2" {if $currentUser.UserAccessTypeDomains|default:1 == 2}checked="checked"{/if}/>
                        Access only to these custom domains:
                    </label>
                    {include file='partTooltip.tpl' tooltipID=225}
                </div>

                <select name="ddlDomainsAllow[]" id="ddlDomainsAllow" class="slect-customdomains" multiple="multiple">
                    {html_options options=$domainsArray selected=$allowedDomains}
                </select>
            </div>

            <div class="col col-xl-4 col-12 mt-4 mt-lg-0">
                <div class="form-group mb-2">
					<label>
                        <input class="flat-purple" type="radio" name="radUserAccessDomains" id="radUserAccessDomainsDisallow" value="3" {if $currentUser.UserAccessTypeDomains|default:1 == 3}checked="checked"{/if}/>
				        Access to all custom domains except these:
			        </label>
                    {include file='partTooltip.tpl' tooltipID=226}
                </div>
                <select name="ddlDomainsDisallow[]" id="ddlDomainsDisallow" class="slect-customdomains" multiple="multiple">
                    {html_options options=$domainsArray selected=$disallowedDomains}
                </select>
            </div>
        </div>

        <button name="btnSave_x" onclick="return validateName('txtUsername', 'User')" class="btn btn-primary mr-3"{if $showupdstobj.useraccounts|default:0} disabled="disabled"{/if}>Save</button>
        {if $editMode}
            <button name="btnCancel" onclick="window.location.href = 'user-accounts.php';
		return false" class="btn btn-secondary">Cancel</button>
        {/if}
    </div>
</div>

<div class="card" id="wdgUserAccountsCurrent">
    <div class="card-header">
        <h4>Current User Accounts</h4>
    </div>
    <div class="card-body">
        <table id="tblUserAccounts" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Role</th>
                    <th>Date Added</th>
                    <th>Last Login</th>
                    <th>Campaigns</th>
                    <th>Domains</th>
                    <th class="text-right">Actions</th>
                </tr>
            </thead>
            <tbody>
                {foreach $users as $user}
                    <tr>
                        <td>{$user.Username}</td>
                        <td>{$user.UserRoleName}</td>
                        <td>{$user.DateAdded|date_format:$globalDateFormat}</td>
                        <td>{$user.LastLogin|date_format:$globalDateFormat}</td>
                        <td>{$user.Campaigns}</td>
                        <td>{$user.Domains}</td>
                        <td class="text-right">
							{if $user.UserID != 1}
                            <a href="user-accounts.php?id={$user.UserID}" class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i>&nbsp;Edit</a>
							{include file='partButtonDelete.tpl' itemID=$user.UserID}
							{/if}
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    </div>
</div>

<input type="hidden" name="hidEditID" value="{$editID}"/>


<script type="text/javascript">
	{literal}
		function clickUserRole()
		{
			var roleID = $('#ddlUserRoles').val();
			if (roleID == 1)
			{
				$('#radUserAccessFull').prop("checked", true);
				$('#radUserAccessAllow').prop("disabled", true);
				$("#ddlCampaignsAllow")[0].sumo.disable();
				$('#radUserAccessDisallow').prop("disabled", true);
				$("#ddlCampaignsDisallow")[0].sumo.disable();

				$('#radUserAccessDomainsFull').prop("checked", true);
				$('#radUserAccessDomainsAllow').prop("disabled", true);
				$("#ddlDomainsAllow")[0].sumo.disable();
				$('#radUserAccessDomainsDisallow').prop("disabled", true);
				$("#ddlDomainsDisallow")[0].sumo.disable();
			}
			else
			{
				$('#radUserAccessAllow').prop("disabled", false);
				$("#ddlCampaignsAllow")[0].sumo.enable();
				$('#radUserAccessDisallow').prop("disabled", false);
				$("#ddlCampaignsDisallow")[0].sumo.enable();
                
				$('#radUserAccessDomainsAllow').prop("disabled", false);
				$("#ddlDomainsAllow")[0].sumo.enable();
				$('#radUserAccessDomainsDisallow').prop("disabled", false);
				$("#ddlDomainsDisallow")[0].sumo.enable();
			}
			initializeIcheckControls();
		}
		$(document).ready(function(){
			clickUserRole();
		});
		$("#ddlUserRoles").on("change", function() {
			clickUserRole();
	   } );
	{/literal}
</script>

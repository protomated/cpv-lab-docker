{include file='partUpdPage.tpl'}
{include file="partMessage.tpl"}

<div class="row">
    <div class="col-xl-8 mb-30">
        <div class="card mb-0" id="wdgRedirectProfilesModify">
            <div class="card-header">
                <h4>Redirect Profile</h4>
            </div>
            <div class="card-body">
                <div class="row align-items-end select-btn-check mb-sm-3">
                    <div class="col-sm-7">
                        <div class="form-group mb-sm-0">
                            <label>Select Campaign</label>

                            {include file='partControlSelectCampaign.tpl'}
                        </div>
                    </div>

                    <div class="col-sm-5 pl-sm-0 pr-sm-0">

                        {include file='partControlEditCampaign.tpl'}

                        <div class="d-inline-block ml-2 align-middle line-h-38">
                            <label class="custom-switch">
                                <input type="checkbox" class="custom-switch-input" name="chkActive" {if $selectedActive == 1}checked="checked"{/if}/>
                                <span class="custom-switch-indicator"></span>
                                <span class="custom-switch-description">Active</span>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Profile Name</label>
                            <input type="text" name="txtProfileName" id="txtProfileName" class="form-control" value="{$currentProfile.RedirectProfileName|default:''}"/>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="form-group">
                            <label>Operator to apply between conditions</label>
                            <div class="mt-lg-1">
                                <label for="radOperatorAnd" class="mr-3">
                                    <input type="radio" class="flat-purple" name="radOperator" id="radOperatorAnd" value="1" {if $selectedOperator == 1}checked="checked"{/if}/>
                                    AND
                                </label>
                                <label for="radOperatorOr">
                                    <input type="radio" class="flat-purple" name="radOperator" id="radOperatorOr" value="0" {if $selectedOperator == 0}checked="checked"{/if}/>
                                    OR
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="mt-4">
                    <h4 class="mb-3">&quot;IF&quot; - select redirect conditions<img src="images/spinner.gif" alt="Working..." id="spinrc" class="ml-4" style="display:none;"/></h4>
                    <div id="divConditions">
                        {for $i=0 to $countConditions-1}
                            {include file='partHtmlRedirectProfile.tpl'}
                        {/for}
                    </div>
                    <div>
                        <a href="javascript:;" onclick="addRedirectCondition()" class="btn btn-primary btn-sm"><i class="fe fe-plus"></i>&nbsp;add condition</a>
                    </div>
                    <input type="hidden" name="hidConditionsToShow" id="hidConditionsToShow" value="{$countConditions}" />
                    <input type="hidden" name="hidCampaignID" id="hidCampaignID" value="{$selectedCampaignID}" />
    				        <div id="divHtmlNewRedirectProfile" class="d-none">{include file='partHtmlRedirectProfile.tpl' i=null}</div>
                </div>

                <div class="mt-4 pt-2">
                    <h4 class="mb-3">&quot;THEN&quot; - select redirect destination</h4>
                        {if $campaignTypeID == 5}
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Redirect to Path</label>
                                    <select name="ddlPaths" id="ddlPaths" class="form-control">
                                        {html_options options=$pathsArray selected=$currentProfile.PathID|default:0}
                                    </select>
                                </div>
                            </div>
                        </div>
                        {/if}
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Redirect to LP</label>
                                <select name="ddlLps" id="ddlLps" class="form-control">
                                    {html_options options=$lpsArray selected=$currentProfile.LandingPageID|default:0}
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Redirect to Offer</label>
                                <select name="ddlOffers" id="ddlOffers" class="form-control">
                                    {html_options options=$offersArray selected=$currentProfile.OfferID|default:0}
                                </select>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-4">
                                <label>Redirect to URL</label>
                                <input type="text" name="txtRedirectUrl" class="form-control" value="{$currentProfile.RedirectUrl|default:''}"/>
                            </div>
                        </div>
                    </div>
                </div>

          			<button name="btnSave_x" onclick="return validateName('txtProfileName', 'Visitor Redirect Profile')" class="btn btn-primary mr-3" disabled="disabled">Save</button>
          			{if $editMode}
          				<button name="btnCancel" onclick="window.location.href = 'redirect-profiles.php?camp={$selectedCampaignID}'; return false" class="btn btn-secondary" disabled="disabled">Cancel</button>
          			{/if}

            </div>
        </div>
    </div>

    <div class="col-xl-4 mb-30">
        <input type="hidden" name="hidEditID" value="{$editID}"/>

        <div class="card mb-0 h-100" id="wdgRedirectProfilesImport">
            <div class="card-header">
                <h4>Import Redirect Profiles</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-xl-12 col-sm-6">
                        <div class="form-group">
                            <label>Import from campaign</label>
                            <select name="ddlImportCampaign" id="ddlImportCampaign" class="form-control">
                                {html_options options=$campaignsArray selected=$previousImportCampaign}
                            </select>
                        </div>
                    </div>

                    <div class="col-xl-12 col-sm-6">
                        <div class="form-group mb-4">
                            <label>Profile to import</label>
                            <select name="ddlImportProfile" id="ddlImportProfile" class="form-control">
                                <option value="0">All Redirect Profiles</option>
                            </select>
                        </div>
                    </div>
                </div>

                <button type="submit" name="btnSaveImport_x" class="btn btn-primary absolute-bottom-xl" disabled="disabled">Import</button>
            </div>
        </div>
    </div>
</div>

<div class="card" id="wdgRedirectProfilesCurrent">
    <div class="card-header">
        <h4>Current Redirect Profiles</h4>
    </div>
    <div class="card-body">
        <table id="tblRedirectProfiles" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
                    <th>Profile Name</th>
                    <th class="text-center">Active</th>
                    <th class="text-center">Date Added</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                {foreach $profiles as $profile}
                    <tr>
                        <td class="left">{$profile.RedirectProfileName}</td>
                        <td class="text-center">
                            <label>
                                <input type="checkbox" class="flat-purple" {if $profile.Active == 1}checked="checked"{/if} disabled="disabled" />
                            </label>
                        </td>
                        <td class="text-center">{$profile.CreateDate|date_format:$globalDateFormat}</td>
                        <td class="text-right">
                            <a href="redirect-profiles.php?id={$profile.RedirectProfileID}" class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i>&nbsp;Edit</a>
							{include file='partButtonDelete.tpl' itemID=$profile.RedirectProfileID extraDeleteClass='mr-2'}
                            <a href="redirect-profiles.php?clone={$profile.RedirectProfileID}" class="btn btn-default btn-sm"><i class="fe fe-copy"></i>&nbsp;Clone</a>
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
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
			return redirectUrl = 'redirect-profiles.php?camp=' + $("#ddlCampaigns").val();
		}

		$(document).ready(function () {
			$('.conditionTypeBox').each(function () {
				ajaxChangeConditionType($get($(this).attr('id')));
			});
		});
	{/literal}
</script>


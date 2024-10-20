{include file="partMessage.tpl"}

<div class="row">
    <div class="col-lg-6 mb-30">
        <div class="card mb-0" id="wdgAlertProfilesModify">
            <div class="card-header">
                <h4>{if $editMode}Edit{else}Add{/if} Alert Profile</h4>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label>Alert Profile Name</label>
                    <input type="text" name="txtProfileName" id="txtProfileName" class="form-control"
                           value="{$currentProfile.AlertProfileName|default:''}"/>
                </div>

                <div class="form-group mb-0">
                    <label>Send Email Alerts to these emails:</label>
                    <input type="text" name="txtEmailAddresses" id="txtEmailAddresses" class="form-control"
                           value="{$currentProfile.EmailAddresses|default:''}"/>
                    <small class="text-muted">multiple emails can be separated by comma</small>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Import Alert</h4>
            </div>
            <div class="card-body">
                <div class="form-group mb-3">
                    <label>Upload Alert Profile <small class="text-muted">(xml file)</small></label>
                    <div class="custom-file">
                        <input type="file" class="custom-file-input form-control-file" name="uplExportFile">
                        <label for="file" class="custom-file-label">Choose file</label>
                    </div>
                </div>
                <button type="submit" name="btnUploadExportFile" class="btn btn-primary"><i class="fa fa-upload"></i>
                    Upload
                </button>
            </div>
        </div>
    </div>
</div>

<div class="row alerts">
    <div class="col-xl-6 mb-30">
        <div class="card mb-0">
            <div class="card-header">
                <h4>Target Alerts</h4>
            </div>
            <div class="card-body">
                <p><b>Alert me when a target has...</b></p>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtAlert1Views" value="{$currentProfile.alert1Views|default:''}"
                               class="form-control width-80px"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtAlert1Conversion"
                                   value="{$currentProfile.alert1Conversion|default:''}"
                                   class="form-control width-80px"/>
                            <label>Conversions</label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtAlert2Views" value="{$currentProfile.alert2Views|default:''}"
                               class="form-control width-80px"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtAlert2Clicks" value="{$currentProfile.alert2Clicks|default:''}"
                                   class="form-control width-80px"/>
                            <label>LP Clicks</label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtAlert3Views" value="{$currentProfile.alert3Views|default:''}"
                               class="form-control width-80px"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtAlert3Subscribers"
                                   value="{$currentProfile.alert3Subscribers|default:''}"
                                   class="form-control width-80px"/>
                            <label>Subscribers</label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtAlert4Views" value="{$currentProfile.alert4Views|default:''}"
                               class="form-control width-80px"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtAlert4SR" value="{$currentProfile.alert4SR|default:''}"
                                   class="form-control width-80px"/>
                            <label>% SR</label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtAlert5Views" value="{$currentProfile.alert5Views|default:''}"
                               class="form-control width-80px"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtAlert5CTR" value="{$currentProfile.alert5CTR|default:''}"
                                   class="form-control width-80px"/>
                            <label>% CTR</label>
                        </div>
                    </div>
                </div>

                <div class="form-group mb-0">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtAlert6Views" value="{$currentProfile.alert6Views|default:''}"
                               class="form-control width-80px"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtAlert6CR" value="{$currentProfile.alert6CR|default:''}"
                                   class="form-control width-80px"/>
                            <label>% Conversion Rate</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-6 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Campaign Alerts</h4>
            </div>
            <div class="card-body">

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>When a campaign receives</label>
                        <div class="d-inline-block">
                            <input type="text" name="txtCalert1Views" value="{$currentProfile.calert1Views|default:''}"
                                   class="form-control width-80px ml-custom"/>
                            <label>Views/Visitors for the first time</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-inline-long">
                        <label>Every time a campaign receives</label>
                        <div class="d-inline-block">
                            <input type="text" name="txtCalert2Views" value="{$currentProfile.calert2Views|default:''}"
                                   class="form-control width-80px ml-custom"/>
                            <label>Views/Visitors</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-body">
        <button name="btnSave_x" onclick="return validateName('txtProfileName', 'Alert Profile')"
                class="btn btn-primary mr-3">Save
        </button>
        {if $editMode}
            <button name="btnCancel" onclick="window.location.href = 'alert-profiles.php'; return false"
                    class="btn btn-secondary">Cancel
            </button>
        {/if}
    </div>
</div>

<div class="card" id="wdgAlertProfilesCurrent">
    <div class="card-header">
        <h4>Current Alert Profiles<img src="images/spinner.gif" alt="Working..." id="spin1" class="ml-4"
                                       style="display:none"/></h4>
    </div>
    <div class="card-body search-with-btn-export">
        <a href="xml-export.php?type=a" class="btn btn-default btn-sm btn-export d-flex align-items-center"><i
                    class="fe fe-share"></i></a>

        <table id="tblAlertProfiles" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
            <tr class="headerRow left">
                <th>Profile Name</th>
                <th class="text-center">Default</th>
                <th class="text-center">Emails</th>
                <th class="text-center">Date Added</th>
                <th class="text-center">Actions</th>
            </tr>
            </thead>
            <tbody>
            {foreach $profiles as $profile}
                <tr>
                    <td>{$profile.AlertProfileName}</td>
                    <td class="text-center">
                        <label class="mb-0">
                            <input class="flat-purple minimal-defaultoption" type="radio" name="radDefaultProfile"
                                   id="radDefaultProfile{$profile.AlertProfileID}"
                                   value="{$profile.AlertProfileID}"
                                   {if $profile.DefaultProfile == 1}checked="checked"{/if} />
                        </label>
                    </td>
                    <td class="text-center">{$profile.EmailAddresses}</td>
                    <td class="text-center">{$profile.CreateDate|date_format:$globalDateFormat}</td>
                    <td class="text-right">
                        <a href="alert-profiles.php?id={$profile.AlertProfileID}" class="btn btn-primary btn-sm mr-2"><i
                                    class="fe fe-edit"></i>&nbsp;Edit</a>
                        {include file='partButtonDelete.tpl' itemID=$profile.AlertProfileID extraDeleteClass='mr-2' isDefaultItem=$profile.DefaultProfile==1}
                        <a href="xml-export.php?type=a&id={$profile.AlertProfileID}" class="btn btn-default btn-sm"><i
                                    class="fe fe-share"></i>&nbsp;Export</a>
                    </td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
</div>

<input type="hidden" name="hidEditID" value="{$editID}"/>

{include file='partFileUploadJS.tpl'}

<script type="text/javascript">
    {literal}
    $(document).ready(function () {
        $('.minimal-defaultoption').on('ifChecked', function (event) {
            ajaxSetDefaultProfile(event.target.value, 'a', event.target);
        });
    });
    {/literal}
</script>

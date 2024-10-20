{include file="partMessage.tpl"}

<div class="row">
    <div class="col-lg-6 mb-30">
        <div class="card h-100 mb-0" id="wdgOptimizationProfilesModify">
            <div class="card-header">
                <h4>{if $editMode}Edit{else}Add{/if} Optimization Profile</h4>
            </div>
            <div class="card-body">
                <div class="form-group mb-0">
                    <label>Optimization Profile Name</label>
                    <input type="text" name="txtProfileName" id="txtProfileName" class="form-control" value="{$currentProfile.OptimizationProfileName|default:''}"/>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6 mb-30">
        <div class="card mb-0">
            <div class="card-header">
                <h4>Upload Optimization Profile</h4>
            </div>

            <div class="card-body">
                <div class="form-group">
                    <label>Upload Optimization Profile <small class="text-muted">(xml file)</small></label>
                    <div class="custom-file">
                        <input type="file" class="custom-file-input form-control-file" name="uplExportFile">
                        <label for="file" class="custom-file-label">Choose file</label>
                    </div>
                </div>
                <button type="submit" name="btnUploadExportFile" class="btn btn-primary"><i class="fa fa-upload"></i> Upload</button>
                {include file='partFileUploadJS.tpl'}
            </div>
        </div>
    </div>
</div>

<div class="row profiles">
    <div class="col-xl-6 mb-30">
        <div class="card mb-0">
            <div class="card-header">
                <h4>Remove / Change Filters</h4>
            </div>

            <div class="card-body">
                <p class="mb-3"><b>Remove Targets with ...</b></p>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtTopt4Views" value="{$currentProfile.topt4Views|default:''}" class="form-control width-80px" maxlength="10"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtTopt4Clicks" value="{$currentProfile.topt4Clicks|default:''}" class="form-control width-80px" maxlength="10"/>
                            <label>LP Clicks</label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtTopt5Views" value="{$currentProfile.topt5Views|default:''}" class="form-control width-80px" maxlength="10"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtTopt5Conversion" value="{$currentProfile.topt5Conversion|default:''}" class="form-control width-80px" maxlength="10"/>
                            <label>Conversions</label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtTopt6Views" value="{$currentProfile.topt6Views|default:''}" class="form-control width-80px" maxlength="10"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtTopt6ROI" value="{$currentProfile.topt6ROI|default:''}" class="form-control width-80px" maxlength="10"/>
                            <label class="mr-0">%ROI and/or </label>
                        </div>
                        <div class="d-inline-block">
                            <label>a PPV less than $</label>
                            <input type="text" name="txtTopt6PPV" value="{$currentProfile.topt6PPV|default:''}" class="form-control width-80px" maxlength="10"/>
                        </div>
                    </div>
                </div>

                <p class="pt-1 mt-4 mb-3"><b>Remove / Change Landing Pages with ...</b></p>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtLopt7Views" value="{$currentProfile.lopt7Views|default:''}" class="form-control width-80px" maxlength="10"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtLopt7Clicks" value="{$currentProfile.lopt7Clicks|default:''}" class="form-control width-80px" maxlength="10"/>
                            <label>LP Clicks</label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtLopt8Views" value="{$currentProfile.lopt8Views|default:''}" class="form-control width-80px" maxlength="10"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtLopt8Conversion" value="{$currentProfile.lopt8Conversion|default:''}" class="form-control width-80px" maxlength="10"/>
                            <label>Conversions</label>
                        </div>
                    </div>
                </div>

                <p class="pt-1 mt-4 mb-3"><b>Remove / Change Offers with ...</b></p>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtOopt9Views" value="{$currentProfile.oopt9Views|default:''}" class="form-control width-80px" maxlength="10"/>
                        <label class="mr-0">Views/Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtOopt9Conversion" value="{$currentProfile.oopt9Conversion|default:''}" class="form-control width-80px" maxlength="10"/>
                            <label>Conversions (Direct Link)</label>
                        </div>
                    </div>
                </div>

                <div class="form-group mb-0">
                    <div class="form-inline-long">
                        <label>More than</label>
                        <input type="text" name="txtOopt10Visitors" value="{$currentProfile.oopt10Visitors|default:''}" class="form-control width-80px" maxlength="10"/>
                        <label class="mr-0">Visitors &</label>
                        <div class="d-inline-block">
                            <label>less than</label>
                            <input type="text" name="txtOopt10Conversion" value="{$currentProfile.oopt10Conversion|default:''}" class="form-control width-80px" maxlength="10"/>
                            <label>Conversions (Landing Page)</label>
                        </div>
                    </div>
                </div>
            </div> <!-- end card-body -->
        </div>
    </div>

    <div class="col-xl-6 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Winner Filters</h4>
            </div>

            <div class="card-body">
                <div class="form-group">
                    <div class="form-inline-long">
                        <label>Targets with ROI% of</label>
                        <input type="text" name="txtTopt1ROI" value="{$currentProfile.topt1ROI|default:''}" class="form-control width-80px" maxlength="10" maxlength="10"/>
                        <label class="mr-0">or more</label>
                        <div class="d-inline-block">
                            <label>and/or a PPV of</label>
                            <input type="text" name="txtTopt1PPV" value="{$currentProfile.topt1PPV|default:''}" class="form-control width-80px" maxlength="10"/>
                            <label>or more</label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>Landing Pages with ROI% of</label>
                        <input type="text" name="txtLopt2ROI" value="{$currentProfile.lopt2ROI|default:''}" class="form-control width-80px" maxlength="10"/>
                        <label class="mr-0">or more</label>
                        <div class="d-inline-block">
                            <label>and/or a PPV of</label>
                            <input type="text" name="txtLopt2PPV" value="{$currentProfile.lopt2PPV|default:''}" class="form-control width-80px" maxlength="10"/>
                            <label>or more</label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-inline-long">
                        <label>Offers with ROI% of</label>
                        <input type="text" name="txtOopt3ROI" value="{$currentProfile.oopt3ROI|default:''}" class="form-control width-80px" maxlength="10"/>
                        <label>or more</label>
                    </div>
                </div>
            </div> <!-- card body -->
        </div>
    </div>

    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <button name="btnSave_x" onclick="return validateName('txtProfileName', 'Optimization Profile')" class="btn btn-primary mr-3">Save</button>
                {if $editMode}
                    <button name="btnCancel" onclick="window.location.href = 'optimization-profiles.php'; return false" class="btn btn-secondary">Cancel</button>
                {/if}
            </div>
        </div>
    </div>
</div>

<div class="card" id="wdgOptimizationProfilesCurrent">
    <div class="card-header">
        <h4>Current Optimization Profiles<img src="images/spinner.gif" alt="Working..." id="spin1" class="ml-4" style="display:none"/></h4>
    </div>
    <div class="card-body search-with-btn-export">
        <a href="xml-export.php?type=o" class="btn btn-default btn-sm btn-export d-flex align-items-center"><i class="fe fe-share"></i></a>

        <table id="tblOptimizationProfiles" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
                    <th>Profile Name</th>
                    <th class="text-center">Default</th>
                    <th class="text-center">Date Added</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                {foreach $profiles as $profile}
                    <tr>
                        <td class="left">{$profile.OptimizationProfileName}</td>
                        <td class="text-center">
                            <label class="mb-0">
                                <input type="radio" class="flat-purple minimal-defaultoption" name="radDefaultProfile" id="radDefaultProfile{$profile.OptimizationProfileID}"
									   value="{$profile.OptimizationProfileID}" {if $profile.DefaultProfile == 1}checked="checked"{/if} />
                            </label>
                        </td>
                        <td class="text-center">{$profile.CreateDate|date_format:$globalDateFormat}</td>
                        <td class="text-right">
                            <a href="optimization-profiles.php?id={$profile.OptimizationProfileID}" class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i>&nbsp;Edit</a>
							{include file='partButtonDelete.tpl' itemID=$profile.OptimizationProfileID extraDeleteClass='mr-2' isDefaultItem=$profile.DefaultProfile==1}
                            <a href="xml-export.php?type=o&id={$profile.OptimizationProfileID}" class="btn btn-default btn-sm"><i class="fe fe-share"></i>&nbsp;Export</a>
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
	$(document).ready(function () {
		$('.minimal-defaultoption').on('ifChecked', function(event){
			ajaxSetDefaultProfile(event.target.value, 'o', event.target);
		});
	});
	{/literal}
</script>

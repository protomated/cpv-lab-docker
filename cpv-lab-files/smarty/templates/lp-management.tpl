{include file="partMessage.tpl"}

<div class="row">
    <div class="col-lg-8 mb-30">
        <div class="card h-100 mb-0" id="wdgLpManagementModify">
            <div class="card-header">
                <h4>{if $editMode}Edit Existing{else}Add New{/if} Landing Page</h4>
            </div>
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col-7 col-xl-9">
                        <div class="form-group">
                            <label>Landing Page Name</label>
                            <input type="text" name="txtPageName" id="txtPageName" class="form-control"
                                value="{$currentLp.LpName|default:''}" />
                        </div>
                    </div>
                    <div class="col-3 col-md-3">
                        <label class="custom-switch">
                            <input type="checkbox" class="custom-switch-input" name="chkActive" id="chkActive"
                                {if $currentLp.Inactive|default:0==0}checked="checked" {/if} />
                            <span class="custom-switch-indicator"></span>
                            <span class="custom-switch-description">Active</span>
                        </label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label>URL</label>
                            <input type="text" name="txtPageUrl" id="txtPageUrl" class="form-control" value="{$currentLp.LpUrl|default:''}" />
                        </div>

                        <div class="form-group mb-4">
                            <label>Notes</label>
                            <textarea name="txtPageNotes" id="txtPageNotes" rows="3" class="form-control">{$currentLp.Notes|default:''}</textarea>
                        </div>
                    </div>
                </div>

                {* selector *}
                <div class="row">
                    <div id="selector" class="col-md-6 mb-2">
                        <label>Group {include file='partTooltip.tpl' tooltipID=235}</label>
                        <select id="select-item" class="form-control" name="txtGroupID">
                            {if !empty($landingPageGroups) } {foreach $landingPageGroups as $lpg}
                                <option data-name="{$lpg.LandingPageGroup}" value="{$lpg.LandingPageGroupID}"
                                    {if !empty($currentLp.GroupID) && $currentLp.GroupID === $lpg.LandingPageGroupID}selected{/if}>
                                    {$lpg.LandingPageGroup}
                                </option>
                            {/foreach} {/if}
                            <option value="addNew">Add new</option>
                        </select>
                    </div>
                    <div id="newGroup" class="col-md-6">
                        <label for="txtNewGroup">New Group</label>
                        <input class="form-control" name="txtNewGroup" id="txtNewGroup" type="text"
                            placeholder="Name of new group" value="{$currentLp.LandingPageGroup|default:''}" />
                    </div>
                </div>

                <div class="mt-3">
                    <button type="submit" name="btnSave_x" onclick="return validateName('txtPageName', 'Predefined Landing Page')" class="btn btn-primary mr-3">Save</button>
                    {if $editMode}
                        <button type="button" name="btnCancel_x" onclick="window.location.href = 'lp-management.php'; return false;" class="btn btn-secondary">Cancel</button>
                    {/if}
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-4 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Bulk Import {include file='partTooltip.tpl' tooltipID=236}</h4>
            </div>
            <div class="card-body">
                <div>
                    <a href="resources/LandingPagesBulkImport.csv">1. Download the sample CSV file.</a><br/>
                    2. Fill the landing pages in the CSV file.<br/>
                    3. Copy and paste the CSV file contents in the box below.<br/>
                    4. Click the "Save" button to complete the import.
                </div>

                <div class="mt-2">
                    <div class="form-group mb-4">
                        <label>Line Format: Name|URL [|Group|Notes] <small class="text-muted">[] - optional</small></label>
                        <textarea placeholder="CSV" name="csvInput" id="csvInput" rows="8" class="form-control"></textarea>
                    </div>
                </div>
                <div class="mt-3">
                    <button onclick="bulkImport();" type="button" class="btn btn-primary mr-3">Save</button>
                    <button id="doneButton" style="display:none" onclick="location.href='lp-management.php';" type="button" class="btn btn-default mr-3">Done</button>
                </div>
                <div id="bulkImportRes" class="mt-2"></div>
                
            </div>
        </div>
    </div>

</div>

<div class="card" id="wdgLpManagementCurrent">
    <div class="card-header">
        <h4>Current Landing Pages <img src="images/spinner.gif" alt="Working..." id="spinL" class="ml-4" style="display:none"/></h4>
    </div>
    <div class="card-body">
        <div>
            <table id="tblLpManagement" class="{$theme_table_classes} icheckbox-whitebg dtSettings" style="width:100%">
                <thead>
                    <tr class="headerRow left">
                        <th class="text-center" data-orderable="false">
                            <label class="mb-1">
                                <input type="checkbox" class="flat-purple" id="chkTAll" />
                            </label>
                        </th>
                        <th>Landing Page</th>
                        <th class="text-center">Group</th>
                        <th class="text-center">Active</th>
                        <th class="text-center">Date Added</th>
                        <th>Used in</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $predefinedLps as $predefinedLp}
                        <tr>
                            <td class="text-center">
                                <label class="mb-1">
                                    <input type="checkbox" class="flat-purple chkcolT"
                                        id="chkT{$predefinedLp.PredefLpID}" />
                                </label>
                            </td>
                            <td class="left">{$predefinedLp.LpName}</td>
                            <td class="left">{$predefinedLp.LandingPageGroup}</td>
                            <td class="text-center">
                                <label class="custom-switch">
                                    <input id="{$predefinedLp.PredefLpID}" type="checkbox"
                                        class="inactiveCheckbox custom-switch-input" name="chkInactiveCheckbox"
                                        {if $predefinedLp.Inactive == 0}checked="checked" {/if} />
                                    <span class="custom-switch-indicator"></span>
                                </label>
                            </td>
                            <td class="text-center">{$predefinedLp.DateAdded|date_format:$globalDateFormat}</td>
                            <td data-order="{$predefinedLp.CampaignsNumber}">{$predefinedLp.CampaignsNumber} campaign{if $predefinedLp.CampaignsNumber!=1}s{/if}</td>
                            <td class="text-right text-nowrap">
                                <a href="lp-management.php?id={$predefinedLp.PredefLpID}"
                                    class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i> Edit</a>
                                {include file='partButtonDelete.tpl' itemID=$predefinedLp.PredefLpID deleteText='Remove' isDisabled=$predefinedLp.CampaignsNumber>0 disabledTooltip='Cannot delete page that is used in campaigns'}
                                <!--<a href="lp-management-add.php?id={$predefinedLp.PredefLpID}" class="btn btn-default btn-sm"><i class="fa fa-plus"></i> Add to Campaign</a>-->
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
        <div class="form-inline justify-content-left">
            <div class="form-group">
                <label class="control-label">Remove Selected Predefined Landing Pages</label>
                <button type="button" onclick="removePredefPages('L')" class="btn btn-primary btn-sm ml-2">GO</button>
            </div>
        </div>
    </div>
</div>
<input type="hidden" name="hidRemovePages" id="hidRemovePages" value="" />
<button type="submit" name="btnRemove_x" id="btnRemove_x" style="display:none">Remove</button>

{include file="partTokensOverlay.tpl"}
<input type="hidden" name="hidEditID" value="{$editID}" />

<script type="text/javascript">
    function bulkImport() {
        if ( $('#csvInput').val() ) {
            $.ajax({
                url: 'lp-management.php',
                type: 'POST',
                data: {
                    csv: $('#csvInput').val()
                },
                beforeSend: function() {
                    $('#bulkImportRes').html('Loading...');
                },
                complete: function() {},
                error: function(x, t, m) { },
                success: function (response) {
                    $('#bulkImportRes').html(response);
                    $('#doneButton').show();
                }
            });
        } else {
            toastr.error('Please fill the CSV field!', 'Import Error!');
        }
    }

    $(document).ready(function() {
        initializeOverlayTokens();
        $('#chkTAll').on('ifChanged', function(event) {
            checkAllStats('chkT');
        });

        var url = window.location.href;
        var id = url.substring(url.lastIndexOf('=') + 1) || "";

        if (!isInt(id)) {
            $('#select-item').find('[data-name="Default"]').prop('selected', true);
        }


        $('#newGroup').hide();

        $('#select-item').on('change', function() {
            if ($(this).val() == 'addNew') {
                $('#newGroup').show();
            } else {
                $('#newGroup').hide();
            }
        });

        $('.inactiveCheckbox').on('change', function(e) {
	        e.preventDefault();
            ajaxSetObjectActiveState("lp", $(this).attr('id'), $(this).is(':checked'));
        });
    });
</script>

<style>
    #bulkImportRes {
        max-height: 100px;
        overflow-y: auto;
    }
</style>
{include file="partMessage.tpl"}


<div class="row">
    <div class="col-lg-8 mb-30">
        <div class="card h-100 mb-0" id="wdgOfferManagementModify">
            <div class="card-header">
                <h4>{if $editMode}Edit Existing{else}Add New{/if} Offer</h4>
            </div>
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col-7 col-xl-9">
                        <div class="form-group">
                            <label>Offer Name</label>
                            <input type="text" name="txtPageName" id="txtPageName" class="form-control" value="{$currentOffer.OfferName|default:''}"/>
                        </div>
                    </div>
                    <div class="col-3 col-md-3">
                        <label class="custom-switch">
                            <input type="checkbox" class="custom-switch-input" name="chkActive" id="chkActive" {if $currentOffer.Inactive|default:0==0}checked="checked"{/if}/>
                            <span class="custom-switch-indicator"></span>
                            <span class="custom-switch-description">Active</span>
                        </label>
                    </div>
                </div>
                    
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group">
                            <label>Source/Network</label>
                            <select name="ddlNetwork" id="ddlNetwork" class="form-control" onchange="ajaxGetOfferSourceUrlEnding(this)">
                                {html_options options=$sourcesArray selected=$currentOffer.AffiliateSourceID|default:1}
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group">
                            <label>Payout</label>
                            <input name="txtPayout" id="txtPayout" type="text" class="form-control" value="{$currentOffer.Payout|default:0}" onblur="validateFloat(this, 0)" />
                        </div>
                    </div>
                </div>
                    
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label>URL&nbsp;&nbsp;&nbsp;<small class="text-danger" id="txtEndingOffer"></small></label>
                            <input type="text" name="txtPageUrlOffer" id="txtPageUrlOffer" class="form-control" value="{$currentOffer.OfferUrl|default:''}"/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="form-group mb-4">
                            <label>Notes</label>
                            <textarea name="txtPageNotes" id="txtPageNotes" rows="3" class="form-control">{$currentOffer.Notes|default:''}</textarea>
                        </div>
                    </div>
                </div>

                {* selector *}
                <div class="row">
                    <div id="selector" class="col-md-6 mb-2">
                        <label>Group {include file='partTooltip.tpl' tooltipID=237}</label>
                        <select id="select-item" class="form-control" name="txtGroupID">
                            {if !empty($offerGroups) } {foreach $offerGroups as $offerg}
                                <option data-name="{$offerg.OfferGroup}" value="{$offerg.OfferGroupID}"
                                    {if !empty($currentOffer.GroupID) && $currentOffer.GroupID === $offerg.OfferGroupID}selected{/if}>
                                    {$offerg.OfferGroup}
                                </option>
                            {/foreach} {/if}
                            <option value="addNew">Add new</option>
                        </select>
                    </div>
                    <div id="newGroup" class="col-md-6">
                        <label for="txtNewGroup">New Group</label>
                        <input class="form-control" name="txtNewGroup" id="txtNewGroup" type="text"
                            placeholder="Name of new group" value="{$currentOffer.OfferGroup|default:''}" />
                    </div>
                </div>

                <div class="mt-3">
                    <button type="sumit" name="btnSave_x" onclick="return validateName('txtPageName', 'Predefined Offer')" class="btn btn-primary mr-3">Save</button>
                    {if $editMode}
                        <button type="button" name="btnCancel_x" onclick="window.location.href = 'offer-management.php'; return false;" class="btn btn-secondary">Cancel</button>
                    {/if}
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-4 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Bulk Import {include file='partTooltip.tpl' tooltipID=238}</h4>
            </div>
            <div class="card-body">
                <div>
                    <a href="resources/OffersBulkImport.csv">1. Download the sample CSV file.</a><br/>
                    2. Fill the offers in the CSV file.<br/>
                    3. Copy and paste the CSV file contents in the box below.<br/>
                    4. Click the "Save" button to complete the import.
                </div>

                <div class="mt-2">
                    <div class="form-group mb-4">
                        <label>Line Format: Name|URL|Payout [|Source|Group|Notes] <small class="text-muted">[] - optional</small></label>
                        <textarea placeholder="CSV" name="csvInput" id="csvInput" rows="8" class="form-control"></textarea>
                    </div>
                </div>
                <div class="mt-3">
                    <button onclick="bulkImport();" type="button" class="btn btn-primary mr-3">Save</button>
                    <button id="doneButton" style="display:none" onclick="location.href='offer-management.php';" type="button" class="btn btn-default mr-3">Done</button>
                </div>
                <div id="bulkImportRes" class="mt-2"></div>
                
            </div>
        </div>
    </div>
</div>

<div class="card" id="wdgOfferManagementCurrent">
    <div class="card-header">
        <h4>Current Offers <img src="images/spinner.gif" alt="Working..." id="spinL" class="ml-4" style="display:none"/></h4>
    </div>
    <div class="card-body">
        <div>
            <table id="tblOfferManagement" class="{$theme_table_classes} icheckbox-whitebg dtSettings" style="width:100%">
                <thead>
                    <tr class="headerRow left">
                        <th class="text-center" data-orderable="false">
                            <label class="mb-1">
                                <input type="checkbox" class="flat-purple" id="chkTAll"/>
                            </label>
                        </th>
                        <th>Offer</th>
                        <th>Source</th>
                        <th class="text-center">Payout</th>
                        <th class="text-center">Group</th>
                        <th class="text-center">Active</th>
                        <th class="text-center">Date Added</th>
                        <th>Used in</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $predefinedOffers as $predefinedOffer}
                        <tr>
                            <td class="text-center">
                                <label class="mb-1">
                                    <input type="checkbox" class="flat-purple chkcolT" id="chkT{$predefinedOffer.PredefOfferID}"/>
                                </label>
                            </td>
                            <td class="left">{$predefinedOffer.OfferName}</td>
                            <td>{$predefinedOffer.Affiliate}</td>
                            <td class="text-center">{$displayCurrencySign}{$predefinedOffer.Payout|number_format:2}</td>
                            <td class="left">{$predefinedOffer.OfferGroup}</td>
                            <td class="text-center">
                                <label class="custom-switch">
                                    <input data-id="{$predefinedOffer.PredefOfferID}" type="checkbox"
                                        class="inactiveCheckbox custom-switch-input" name="chkInactiveCheckbox"
                                        {if $predefinedOffer.Inactive == 0}checked="checked" {/if} />
                                    <span class="custom-switch-indicator"></span>
                                </label>
                            </td>
                            <td class="text-center">{$predefinedOffer.DateAdded|date_format:$globalDateFormat}</td>
                            <td data-order="{$predefinedOffer.CampaignsNumber}">{$predefinedOffer.CampaignsNumber} campaign{if $predefinedOffer.CampaignsNumber!=1}s{/if}</td>
                            <td class="text-right text-nowrap">
                                <a href="offer-management-add.php?id={$predefinedOffer.PredefOfferID}" class="btn btn-primary btn-sm mr-2"><i class="fe fe-plus"></i> Add to Campaign</a>
                                <a href="offer-management.php?id={$predefinedOffer.PredefOfferID}" class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i> Edit</a>
                                {include file='partButtonDelete.tpl' itemID=$predefinedOffer.PredefOfferID deleteText='Remove' isDisabled=$predefinedOffer.CampaignsNumber>0 disabledTooltip='Cannot delete offer that is used in campaigns'}
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
		<div class="form-inline justify-content-left">
			<div class="form-group">
				<label class="control-label">Remove Selected Predefined Offers</label>
				<button type="button" onclick="removePredefPages('O')" class="btn btn-primary btn-sm ml-2">GO</button>
			</div>
		</div>
    </div>
</div>
<input type="hidden" name="hidRemovePages" id="hidRemovePages" value=""/>
<button type="submit" name="btnRemove_x" id="btnRemove_x" style="display:none">Remove</button>

{include file="partTokensOverlay.tpl"}
<input type="hidden" name="hidEditID" value="{$editID}"/>

<script type="text/javascript">
    function bulkImport() {
        if ( $('#csvInput').val() ) {
            $.ajax({
                url: 'offer-management.php',
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

	$(document).ready(function () {
		initializeOverlayTokens();
		$('#chkTAll').on('ifChanged', function(event){
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
            ajaxSetObjectActiveState("of", $(this).attr('data-id'), $(this).is(':checked'));
        });
        ajaxGetOfferSourceUrlEnding($('#ddlNetwork'));
	});
</script>


<style>
    #bulkImportRes {
        max-height: 100px;
        overflow-y: auto;
    }
</style>
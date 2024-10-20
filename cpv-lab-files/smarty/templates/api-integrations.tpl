{include file="partMessage.tpl"}

<div class="row" id="wdgApiIntegrationsModify">
    {if $editMode}
        <div class="col-12 mb-30">
            <div class="card mb-0">
                <div class="card-header">
                    <h4>{if $editMode}Edit{else}Add{/if} {$currentApiIntegration.ApiTypeName|default:''} API
                        Integration</h4>
                </div>
                <div class="card-body">

                    <div class="row align-items-center">

                        <div class="col-8">
                            <div class="col-12">
                                <div class="form-group">
                                    <label>API Integration Name</label>
                                    <input type="text" name="txtApiIntegrationName" id="txtApiIntegrationName"
                                           class="form-control"
                                           value="{$currentApiIntegration.ApiIntegrationName|default:''}"/>
                                </div>
                            </div>
                            {if $currentApiIntegration.ApiTypeID|default:1 == 1}
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Developer Key {include file='partTooltip.tpl' tooltipID=234}</label>
                                        <input type="text" name="txtDeveloperKey" id="txtDeveloperKey"
                                               class="form-control"
                                               value="{$currentApiIntegration.DeveloperKey|default:''}"/>
                                    </div>
                                </div>
                            {/if}
                        </div>

                        <div class="col-4">
                            <div class="row">
                                <div class="form-group">
                                    <label class="custom-switch">
                                        <input type="checkbox" class="custom-switch-input" id="checkbox-1"
                                               name="chkActive"
                                               {if $currentApiIntegration.Active|default:1==1}checked="checked"{/if}>
                                        <span class="custom-switch-indicator"></span>
                                        <span class="custom-switch-description">Active</span>
                                    </label>
                                    <div style="clear:both">&nbsp;</div>

                                    <div class="form-group d-flex align-items-center">
                                        <label class="custom-switch">
                                            <input type="checkbox" class="custom-switch-input" name="chkOptionSyncCosts"
                                                   {if $currentApiIntegration.OptionSyncCosts|default:true}checked="checked"{/if}>
                                            <span class="custom-switch-indicator"></span>
                                            <span class="custom-switch-description">Synchronize costs</span>
                                        </label>
                                        &nbsp;{include file='partTooltip.tpl' tooltipID=232}
                                    </div>

                                    <div class="form-group d-flex align-items-center">
                                        <label class="custom-switch">
                                            <input type="checkbox" class="custom-switch-input"
                                                   name="chkOptionPassConversions"
                                                   {if $currentApiIntegration.OptionPassConversions|default:true}checked="checked"{/if}>
                                            <span class="custom-switch-indicator"></span>
                                            <span class="custom-switch-description">Pass Conversions</span>
                                        </label>
                                        &nbsp;{include file='partTooltip.tpl' tooltipID=233}
                                    </div>
                                    <div style="clear:both">&nbsp;</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    {else}
        <div class="col-12 mb-30">
            <div class="card mb-0 h-100">
                <div class="card-header">
                    <h4>Add new API Integration <span class="ml-2">{include file='partTooltip.tpl' tooltipID=231}</span>
                    </h4>
                </div>

                <div class="card-body">
                    <h5 class="mb-3">Quick add API Integration</h5>
                    <div class="integrationBox col-sm-12 col-md-6 col-lg-4 col-xl-3 ml-2 mr-2 text-center border border-primary"
                         style="float:left">
                        <a href="{$bingApiUrl}"><img src="images/integrations/microsoft-ads.png" class="img-fluid"
                                                     alt="Microsoft (Bing) Ads API Integration"/></a>
                        <br/>
                        <span class="badge badge-dark m-b-5">Costs</span>
                        <span class="badge badge-dark m-b-5 ml-2">Conversions</span>
                    </div>
                    <div class="integrationBox col-sm-12 col-md-6 col-lg-4 col-xl-3 ml-2 mr-2 text-center border border-primary"
                         style="float:left">
                        <a href="{$googleApiUrl}"><img src="images/integrations/google-ads.png" class="img-fluid"
                                                       alt="Google Ads API Integration"/></a>
                        <br/>
                        <span class="badge badge-dark m-b-5">Costs</span>
                        <span class="badge badge-dark m-b-5 ml-2">Conversions</span>
                    </div>
                </div>
            </div>
        </div>
    {/if}
</div>

{if $editMode}
    <div class="card">
        <div class="card-body">
            <button name="btnSave_x" class="btn btn-primary mr-3"
                    onclick="return validateName('txtApiIntegrationName', 'API Integration') && validateName('txtDeveloperKey', 'Developer Key')">
                Save
            </button>
            <button class="btn btn-secondary" name="btnCancel"
                    onclick="window.location.href = 'api-integrations.php'; return false">Cancel
            </button>
        </div>
    </div>
{/if}

<div class="card" id="wdgApiIntegrationsCurrent">
    <div class="card-header">
        <h4>Current API integrations</h4>
    </div>
    <div class="card-body">
        <table id="tblApiIntegrations" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
            <tr>
                <th>Integration Name</th>
                <th>API Provider</th>
                <th class="text-center">Active</th>
                <th class="text-center">Date Added</th>
                <th class="text-center">Last Run</th>
                <th class="text-center">Last Status</th>
                <th class="text-center">Campaigns</th>
                <th class="text-center">Actions</th>
            </tr>
            </thead>
            <tbody>
            {foreach $apiIntegrations as $apiIntegration}
                <tr>
                    <td>{$apiIntegration.ApiIntegrationName}</td>
                    <td>{$apiIntegration.ApiTypeName}</td>
                    <td class="text-center">
                        <label>
                            <input type="checkbox" data-checkboxes="mygroup" class="flat-purple"
                                   {if $apiIntegration.Active == 1}checked="checked"{/if} disabled="disabled">
                        </label>
                    </td>
                    <td class="text-center">{$apiIntegration.DateAdded|date_format:$globalDateFormat}</td>
                    <td class="text-center">{if $apiIntegration.LastRunDate}{$apiIntegration.LastRunDate|date_format:$globalDateFormat}{else}---{/if}</td>
                    <td class="text-center">{$apiIntegration.Status}</td>
                    <td class="text-center">{$apiIntegration.CampaignsMatchedCount}</td>
                    <td class="text-right">
                        <a href="api-integrations.php?id={$apiIntegration.ApiIntegrationID}"
                           class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i>&nbsp;Edit</a>
                        {include file='partButtonDelete.tpl' itemID=$apiIntegration.ApiIntegrationID}
                        <button type="button" class="btn btn-default btn-sm ml-2" data-toggle="modal"
                                data-target="#mdlIntegrationDetails"
                                onclick="ajaxLoadApiIntegrationDetails({$apiIntegration.ApiIntegrationID})"><i
                                    class="fe fe-info"></i>&nbsp;Details
                        </button>
                    </td>
                </tr>
            {/foreach}
            </tbody>
        </table>
        <input type="hidden" name="hidEditID" value="{$editID}"/>
    </div>
</div>
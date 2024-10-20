{include file="partMessage.tpl"}

<div class="card" id="wdgBlockRulesModify">
    <div class="card-header">
        <h4>{if $editMode}Edit{else}Add{/if} Blocked Traffic Rule</h4>
    </div>
    <div class="card-body">
        <div class="row align-items-center">
            <div class="col-lg-5 col-md-9 col-sm-9">
                <div class="form-group">
                    <label>Rule Name</label>
                    <input type="text" name="txtName" id="txtName" class="form-control"
                           value="{$currentRule.BlockName|default:''}"/>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-3 mb-3 mb-sm-0">
                <label class="custom-switch">
                    <input type="checkbox" class="custom-switch-input" id="checkbox-1" name="chkActive"
                           {if $currentRule.Active|default:1==1}checked="checked"{/if}>
                    <span class="custom-switch-indicator"></span>
                    <span class="custom-switch-description">Active</span>
                </label>
            </div>
        </div> <!-- end row -->

        <div class="row">
            <div class="col-xl-6 col-lg-8 col-md-12">
                <div class="form-group block-range">
                    <label>Block range of IPs (only for IPv4 addresses)</label>
                    <div class="form-inline">
                        <span class="mr-2">from</span>
                        <input type="text" name="txtStartIP" class="form-control"
                               value="{$currentRule.StartIPFormatted|default:''}"/>
                        <span class="ml-2 mr-2">to</span>
                        <input type="text" name="txtEndIP" class="form-control"
                               value="{$currentRule.EndIPFormatted|default:''}"/>
                    </div>
                </div>

                <div class="form-group">
                    <label>Block User Agents containing</label>
                    <input type="text" name="txtBlockUA" class="form-control"
                           value="{$currentRule.BlockUA|default:''}"/>
                </div>

                <div class="form-group mb-4">
                    <label>Block Referrers containing</label>
                    <input type="text" name="txtReferrer" class="form-control"
                           value="{$currentRule.BlockReferrer|default:''}"/>
                </div>

                <button name="btnSave_x" onclick="return validateName('txtName', 'Blocked Traffic Rule')"
                        class="btn btn-primary mr-3">Save
                </button>
                {if ($editMode)}
                    <button name="btnCancel" onclick="window.location.href = 'block-rules.php'; return false"
                            class="btn btn-secondary">Cancel
                    </button>
                {/if}
            </div>

        </div>
    </div>
</div>

<div class="card" id="wdgBlockRulesCurrent">
    <div class="card-header">
        <h4>Current Blocked Traffic Rules</h4>
    </div>
    <div class="card-body">
        <table id="tblBlockRules" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
            <tr>
                <th>Rule Name</th>
                <th>Blocked IPs/User Agents/Referrers</th>
                <th class="text-center">Active</th>
                <th class="text-center">Actions</th>
            </tr>
            </thead>
            <tbody>
            {foreach $rules as $rule}
                <tr>
                    <td>{$rule.BlockName}</td>
                    <td>{$rule.IpRange} / {$rule.BlockUA} / {$rule.BlockReferrer}</td>
                    <td class="text-center">
                        <label>
                            <input type="checkbox" data-checkboxes="mygroup" class="flat-purple"
                                   {if $rule.Active == 1}checked="checked"{/if} disabled="disabled">
                        </label>
                    </td>
                    <td class="text-right">
                        <a href="block-rules.php?id={$rule.BlockRuleID}" class="btn btn-primary btn-sm mr-2"><i
                                    class="fe fe-edit"></i>&nbsp;Edit</a>
                        {include file='partButtonDelete.tpl' itemID=$rule.BlockRuleID}
                    </td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
</div>

<input type="hidden" name="hidEditID" value="{$editID}"/>

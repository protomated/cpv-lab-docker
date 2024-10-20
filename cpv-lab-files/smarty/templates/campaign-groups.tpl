{include file="partMessage.tpl"}

<div class="card" id="wdgCampaignGroupsModify">
    <div class="card-header">
        <h4>{if $editMode}Edit{else}Add{/if} Campaign Group</h4>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-xl-6 col-lg-8 col-md-12">
                <div class="form-group mb-4">
                    <label>Name</label>
                    <input type="text" name="txtCampaignGroup" id="txtCampaignGroup" class="form-control"
                           value="{$currentGroup|default:''}"/>
                </div>
                <button name="btnSave_x" onclick="return validateName('txtCampaignGroup', 'Campaign Group')"
                        class="btn btn-primary mr-3">Save
                </button>
                {if $editMode}
                    <button name="btnCancel" onclick="window.location.href = 'campaign-groups.php'; return false"
                            class="btn btn-secondary">Cancel
                    </button>
                {/if}
            </div>
        </div>
    </div>
</div>

<div class="card" id="wdgCampaignGroupsCurrent">
    <div class="card-header">
        <h4>Current Campaign Groups</h4>
    </div>
    <div class="card-body">
        <table id="tblCampaignGroups" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
            <tr>
                <th>Group Name</th>
                <th class="text-center">Date Added</th>
                <th class="text-center">Actions</th>
            </tr>
            </thead>
            <tbody>
            {foreach $groups as $group}
                <tr>
                    <td>{$group.CampaignGroup}</td>
                    <td class="text-center">{$group.CreateDate|date_format:$globalDateFormat}</td>
                    <td class="text-right">
                        <a href="campaign-groups.php?id={$group.CampaignGroupID}" class="btn btn-primary btn-sm mr-2"><i
                                    class="fe fe-edit"></i>&nbsp;Edit</a>
                        {include file='partButtonDelete.tpl' itemID=$group.CampaignGroupID}
                    </td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
</div>

<input type="hidden" name="hidEditID" value="{$editID}"/>

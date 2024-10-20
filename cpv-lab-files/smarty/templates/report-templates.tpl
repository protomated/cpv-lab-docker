{include file="partMessage.tpl"}

<div class="card" id="wdgReportTemplatesModify">
    <div class="card-header">
        <h4>Ad Spend Template</h4>
    </div>

    <div class="card-body max-w-850">
        <div class="row align-items-center mb-2">
            <div class="col-lg-8 col-sm-9">
                <div class="form-group">
                    <label>Report Template Name</label>
                    <input type="text" name="txtName" id="txtName" class="form-control" value="{$currentTemplate.CpvTemplate|default:''}"/>
                </div>
            </div>

            <div class="col-sm-3 mb-3 mb-sm-0">
                <label class="custom-switch">
                    <input type="checkbox" class="custom-switch-input" name="chkActive" {if $currentTemplate.Active|default:1==1}checked="checked"{/if}/>
                    <span class="custom-switch-indicator"></span>
                    <span class="custom-switch-description">Active</span>
                </label>
            </div>
        </div>

        <div class="row align-items-baseline">
            <div class="col-lg-4 col-sm-6">
                <div class="form-group">
                    <label>Rows to Skip at Top</label>
                    <input type="text" name="txtRowsToSkip" class="form-control text-center" value="{$currentTemplate.RowsToSkip|default:0}" onblur="validateInt(this, 0, 10)"/>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="form-group">
                    <label>Target Keyword Column</label>
                    <input type="text" name="txtKeywordColumn" class="form-control" value="{$currentTemplate.KeywordColumn|default:''}"/>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="form-group">
                    <label>Ad Column</label>
                    <input type="text" name="txtAdColumn" class="form-control" value="{$currentTemplate.AdColumn|default:''}"/>
                </div>
					  </div>
				    <div class="col-lg-4 col-sm-6">
                <div class="form-group">
                    <label>Views/Impressions Column</label>
                    <input type="text" name="txtViewsColumn" class="form-control" value="{$currentTemplate.ViewsColumn|default:''}"/>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="form-group">
                    <label>Amount/Spend/Cost Column</label>
                    <input type="text" name="txtCostColumn" class="form-control" value="{$currentTemplate.CostColumn|default:''}"/>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="form-group mb-4">
                    <label>Exact CPC Column</label>
                    <input type="text" name="txtCpcColumn" class="form-control" value="{$currentTemplate.CpcColumn|default:''}"/>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <p><i>* Campaign ID and Campaign Name columns are only used for Consolidated Reports (multiple campaigns in a single file)</i></p>
            </div>

            <div class="col-xl-4 col-sm-6">
                <div class="form-group">
                    <label>Campaign ID Column</label>
                    <input type="text" name="txtCampaignIDColumn" class="form-control" value="{$currentTemplate.CampaignIDColumn|default:''}"/>
                </div>
            </div>
            <div class="col-xl-4 col-sm-6">
                <div class="form-group">
                    <label>Campaign Name Column</label>
                    <input type="text" name="txtCampaignNameColumn" class="form-control" value="{$currentTemplate.CampaignNameColumn|default:''}"/>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-7 col-sm-9">
                <div class="form-group mb-4">
                    <label>Assign Template to</label>
                    <select name="ddlSources" class="form-control">
                        {html_options options=$cpvsourcesArray selected=$currentTemplate.CpvSourceID|default:0}
                    </select>
                </div>
            </div>
        </div>

        <button name="btnSave_x" class="btn btn-primary mr-3" onclick="return validateName('txtName', 'Ad Spend Report Template')">Save</button>
        {if $editMode}
            <button name="btnCancel" class="btn btn-secondary" onclick="window.location.href = 'report-templates.php'; return false">Cancel</button>
        {/if}
    </div>
</div>

<div class="card" id="wdgReportTemplatesCurrent">
    <div class="card-header">
        <h4>Current Ad Spend Templates</h4>
    </div>

    <div class="card-body">

	     <table id="tblReportTemplates" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
                    <th>Report Template</th>
                    <th>Assigned To</th>
                    <th class="text-center">Active</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                {foreach $templates as $template}
                    <tr>
                        <td class="left">{$template.CpvTemplate}</td>
                        <td class="left">{$template.Source}</td>
                        <td class="text-center">
							<input type="checkbox" class="flat-purple" {if $template.Active == 1}checked="checked"{/if} disabled="disabled" />
                        </td>
                        <td class="text-right">
                            <a href="report-templates.php?id={$template.CpvTemplateID}" class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i>&nbsp;Edit</a>
							{include file='partButtonDelete.tpl' itemID=$template.CpvTemplateID}
                        </td>
                    </tr>
                {/foreach}
            </tbody>
	      </table>
    </div>
</div>

<input type="hidden" name="hidEditID" value="{$editID}"/>

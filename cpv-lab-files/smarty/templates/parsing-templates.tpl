{include file="partMessage.tpl"}

<div class="row">
    <div class="col-lg-6 mb-30">
        <div class="card mb-0" id="wdgParsingTemplatesModify">
            <div class="card-header">
                <h4>{if $editMode}Edit{else}Add{/if} Parsing Template</h4>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label>If referrer URL contains</label>
                    <input type="text" name="txtReferrerName" id="txtReferrerName" class="form-control" value="{$currentTemplate.ReferrerName|default:''}"/>
                </div>
                <div class="form-group">
                    <label>Parse target from parameter</label>
                    <input type="text" name="txtParameter" class="form-control" value="{$currentTemplate.Parameter|default:''}"/>
                    <small class="text-muted">multiple parameters can be added separated by comma</small>
                </div>
                <div class="form-group mb-4">
                    <label>Category</label>
                    <select name="ddlSiteCategory" class="form-control">
                        {html_options options=$categoriesArray selected=$currentTemplate.SiteCategoryID|default:1}
                    </select>
                </div>
                <button name="btnSave_x" onclick="return validateName('txtReferrerName', 'Referrer')" class="btn btn-primary mr-3">Save</button>
                {if $editMode}
                <button name="btnCancel" onclick="window.location.href = 'parsing-templates.php'; return false" class="btn btn-secondary">Cancel</button>
                {/if}
            </div>
        </div>
    </div>

    <div class="col-lg-6 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>No-match behaviour</h4>
            </div>
            <div class="card-body">
                <div class="form-group mb-4">
                    <label>If referrer doesn't match a parsing template, use as Target</label>
                </div>
                <div class="form-group mb-4">
                    <label>
											<input type="radio" name="radNoTemplate" id="radNoTemplateReferrer" value="{literal}{!referrer!}{/literal}" {if $selectedNoActionOption == 1}checked="checked"{/if}/ class="flat-purple">
											Referrer
										</label>
                </div>

                <div class="row align-items-center mb-3">
                    <div class="col-6">
                        <div class="form-group mb-0">
                            <label>
                                <input class="flat-purple" type="radio" name="radNoTemplate" id="radNoTemplateParameter" value="{literal}{!parameter!}{/literal}" {if $selectedNoActionOption == 2}checked="checked"{/if}/>
                                Get from parameters:
                            </label>
                        </div>
                    </div>

                    <div class="col-6">
                        <input type="text" name="txtNoTemplateParameter" value="{$txtNoActionParam}" class="form-control"/>
                    </div>
                </div>

                <div class="row align-items-center mb-4">
                    <div class="col-6">
                        <div class="form-group mb-0">
                            <label>
                                <input class="flat-purple" type="radio" name="radNoTemplate" id="radNoTemplateValue" value="{literal}{!value!}{/literal}" {if $selectedNoActionOption == 3}checked="checked"{/if}/>
                                A fixed value:
                            </label>
                        </div>
                    </div>

                    <div class="col-6">
                        <input type="text" name="txtNoTemplateValue" value="{$txtNoActionValue}" class="form-control"/>
                    </div>
                </div>
                <button name="btnSaveNoTemplate_x" class="btn btn-primary absolute-bottom">Save</button>
            </div>
        </div>
    </div>
</div>

<div class="card" id="wdgParsingTemplatesCurrent">
    <div class="card-header">
        <h4>Current Parsing Templates</h4>
    </div>
    <div class="card-body">
        <table id="tblParsingTemplates" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
                    <th>Referrer</th>
                    <th>Parameter</th>
                    <th>Category</th>
					<th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                {foreach $templates as $template}
                    <tr>
                        <td>{$template.ReferrerName}</td>
                        <td>{$template.Parameter}</td>
                        <td>{$template.SiteCategory}</td>
                        <td class="text-right">
                            <a href="parsing-templates.php?id={$template.ParsingTemplateID}" class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i>&nbsp;Edit</a>
                            {include file='partButtonDelete.tpl' itemID=$template.ParsingTemplateID}
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    </div>
</div>

<input type="hidden" name="hidEditID" value="{$editID}"/>

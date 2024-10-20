{include file="partMessage.tpl"}

<div class="row" id="wdgTrafficSourcesModify">
    <div class="col-xl-8 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>{if $editMode}Edit{else}Add{/if} Traffic Source</h4>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-sm-7">
                        <div class="form-group">
                            <label>Source Name</label>
                            <input type="text" name="txtSource" id="txtSource" class="form-control" value="{$currentSource.Source|default:''}"/>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group radio-inline">
                            <label class="d-block">Bidding</label>
							{html_radios_margin options=[1 => ' CPV', 2 => ' CPC', 3 => ' CPM'] selected=$currentCostTypeID name="radCostTypeID" label_ids=true class='flat-purple minimal-costtype'}
                        </div>
                            <input type="text" name="txtSourceID" class="form-control" value="{$currentSource.SourceID|default:''}" style="display:none"/>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-7">
                        <div class="form-group">
                            <label>TimeZone</label>
                            <select name="ddlCpvTimezone" class="form-control">
								{html_options options=$timezoneOptions selected=$currentTimezone}
                            </select>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label>Currency</label>
                            <select name="ddlCurency" class="form-control">
								{html_options options=$currencyOptions selected=$currentSource.CurrencyID|default:'1'}
                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group mb-0">
                    <label>Postback URL</label>
					<input type="text" name="txtPostbackUrl" id="txtPostbackUrl" class="form-control" value="{$currentSource.PostbackUrl|default:''}"/>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-4 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Import Traffic Source <span class="ml-2">{include file='partCampaignTooltip.tpl'}</span></h4>
            </div>

            <div class="card-body">
                <h5 class="text-center mb-3">Quick import Traffic Source</h5>
                <div class="text-center mb-5">
					<button type="submit" name="btnImportTrafficSource" id="btnImportTrafficSource" class="btn btn-primary" style="display:none"><i class="fa fa-cloud-download"></i> Import</button>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#predefModal"><i class="fa fa-cloud-download"></i> Import from Catalog</button>
				</div>

                {* <div class="form-group mb-0">
                    <label>Upload XML File</label>
                    <div class="row upload-file m-0">
                        <div class="col-input">
                            <div class="custom-file">
                								<input type="file" class="custom-file-input form-control-file" name="uplExportFile" size="30">
                								<label for="file" class="custom-file-label">Choose file</label>
                            </div>
                        </div>
                        <div class="col-button">
              				<button type="submit" name="btnUploadExportFile" class="btn btn-primary"><i class="fa fa-upload"></i> Upload</button>
              				{include file='partFileUploadJS.tpl'}
                        </div>
                    </div>
                </div> *}
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header">
        <h4>Tokens Supported by Traffic Source</h4>
    </div>

	<div class="card-body">
        <div class="form-horizontal tokens-form">

            <div class="row font-weight-bold d-none d-lg-flex mb-lg-2">
                <div class="col-lg-2 pr-md-2">&nbsp;</div>
                <div class="col-lg-3 text-center pr-md-2">Name</div>
                <div class="col-lg-2 text-center pr-md-1">Parameter</div>
                <div class="col-lg-2 text-center pl-md-1">Placeholder</div>
                <div class="col-lg-3 text-center">URL Append</div>
            </div>

            <div class="row align-items-center mb-3 mb-lg-2">
                <label class="control-label col-lg-2 text-lg-right pr-lg-2 mb-2 mb-lg-0">Keyword Token {include file='partTooltip.tpl' tooltipID=20}</label>
                <div class="col-lg-3 pr-lg-2 mb-2 mb-lg-0">
                    <input name="txtKeywordTokenName" id="txtKeywordTokenName" type="text" value="Target/Keyword" class="form-control" disabled="disabled"/>
                </div>
                <div class="col-lg-4 col-sm-12 mb-2 mb-lg-0">
					   <input name="txtKeywordTokenParam" id="txtKeywordTokenParam" type="text" value="{$currentSource.KeywordToken|default:''}" onblur="checkExtraTokenParam(this);
							updateAppendUrl('', 'Keyword')" class="form-control eqInput" placeholder="Parameter"/>
                    <span class="d-inline-block">=</span>
                    <input name="txtKeywordTokenPlace" id="txtKeywordTokenPlace" type="text" value="{$currentSource.KeywordTokenPlace|default:''}" onblur="updateAppendUrl('', 'Keyword')" class="form-control eqInput" placeholder="Placeholder"/>
                </div>
                <div class="col-lg-3 pl-lg-2 mb-2 mb-lg-0">
					<input name="txtKeywordTokenUrl" id="txtKeywordTokenUrl" type="text" value="{$currentSource.KeywordTokenUrl|default:''}" class="form-control" disabled="disabled"/>
                </div>
            </div>

            <div class="row align-items-center mb-3 mb-lg-2">
                <label class="control-label col-lg-2 text-lg-right pr-lg-2 mb-2 mb-lg-0">Cost Token{include file='partTooltip.tpl' tooltipID=204}</label>
                <div class="col-lg-3 pr-lg-2 mb-2 mb-lg-0">
					<input name="txtCostTokenName" id="txtCostTokenName" type="text" value="Cost" class="form-control" disabled="disabled"/>
                </div>
                <div class="col-lg-4 col-sm-12 mb-2 mb-lg-0">
					   <input name="txtCostTokenParam" id="txtCostTokenParam" type="text" value="{$currentSource.CostToken|default:''}" onblur="checkExtraTokenParam(this);
						  updateAppendUrl('', 'Cost')" class="form-control eqInput" placeholder="Parameter"/>
					<span class="d-inline-block">=</span>
					<input name="txtCostTokenPlace" id="txtCostTokenPlace" type="text" value="{$currentSource.CostTokenPlace|default:''}" onblur="updateAppendUrl('', 'Cost')" class="form-control eqInput" placeholder="Placeholder"/>
                </div>
                <div class="col-lg-3 pl-lg-2 mb-2 mb-lg-0">
					<input name="txtCostTokenUrl" id="txtCostTokenUrl" type="text" value="{$currentSource.CostTokenUrl|default:''}" class="form-control" disabled="disabled"/>
                </div>
            </div>

            <div class="row align-items-center mb-3 mb-lg-2">
				<label class="control-label col-lg-2 text-lg-right pr-lg-2 mb-2 mb-lg-0">External ID Token{include file='partTooltip.tpl' tooltipID=5}</label>
				<div class="col-lg-3 pr-lg-2 mb-2 mb-lg-0">
					<input name="txtUniqueTokenName" id="txtUniqueTokenName" type="text" value="External ID" class="form-control" disabled="disabled"/>
				</div>
				<div class="col-lg-4 col-sm-12 mb-2 mb-lg-0">
					   <input name="txtUniqueTokenParam" id="txtUniqueTokenParam" type="text" value="{$currentSource.UniqueToken|default:''}" onblur="checkExtraTokenParam(this);
						updateAppendUrl('', 'Unique')" class="form-control eqInput" placeholder="Parameter"/>
					<span class="d-inline-block">=</span>
					<input name="txtUniqueTokenPlace" id="txtUniqueTokenPlace" type="text" value="{$currentSource.UniqueTokenPlace|default:''}" onblur="updateAppendUrl('', 'Unique')" class="form-control eqInput" placeholder="Placeholder"/>
				</div>
				<div class="col-lg-3 pl-lg-2 mb-2 mb-lg-0">
					<input name="txtUniqueTokenUrl" id="txtUniqueTokenUrl" type="text" value="{$currentSource.UniqueTokenUrl|default:''}" class="form-control" disabled="disabled"/>
				</div>
            </div>

            <div id="divAdToken">
                <div class="row align-items-center mb-3 mb-lg-2">
                    <label class="control-label col-lg-2 text-lg-right pr-lg-2 mb-2 mb-lg-0">Ad Token {include file='partTooltip.tpl' tooltipID=19}</label>
                    <div class="col-lg-3 pr-lg-2 mb-2 mb-lg-0">
                        <input name="txtAdTokenName" id="txtAdTokenName" type="text" value="{$currentSource.AdTokenName|default:''}" class="form-control"/>
                    </div>
                    <div class="col-lg-4 col-sm-12 mb-2 mb-lg-0">
						   <input name="txtAdTokenParam" id="txtAdTokenParam" type="text" value="{$currentSource.AdTokenParam|default:''}" onblur="checkExtraTokenParam(this);
								updateAppendUrl('', 'Ad')" class="form-control eqInput" placeholder="Parameter"/>
                        <span class="d-inline-block">=</span>
                        <input name="txtAdTokenPlace" id="txtAdTokenPlace" type="text" value="{$currentSource.AdTokenPlace|default:''}" onblur="updateAppendUrl('', 'Ad')" class="form-control eqInput" placeholder="Placeholder"/>
                    </div>
                    <div class="col-lg-3 pl-lg-2 mb-2 mb-lg-0">
                        <input name="txtAdTokenUrl" id="txtAdTokenUrl" type="text" value="{$currentSource.AdTokenUrl|default:''}" class="form-control" disabled="disabled"/>
                    </div>
                </div>
            </div>

            <div id="divExtraTokensContainer">
                {for $i=1 to $extraTokensToShow}
                    {include file='partHtmlNewTokenSources.tpl'}
                {/for}
            </div>
			<div id="divAddExtraToken" class="float-right">
				<button type="button" onclick="addExtraTokenSources()" class="btn btn-primary btn-add-token" data-placement="right" data-toggle="tooltip" title="" data-original-title="Add New Token"><i class="fe fe-plus"></i></button>
			</div>
			<input type="hidden" name="hidExtraTokensToShow" id="hidExtraTokensToShow" value="{$extraTokensToShow}"/>
			<div id="divHtmlNewTokenTemplate" class="d-none">{include file='partHtmlNewTokenSources.tpl' i=null}</div>
		</div>
	</div>
</div>

<div class="card">
    <div class="card-body">
        <button name="btnSave_x" onclick="return validateName('txtSource', 'Traffic Source')" class="btn btn-primary">Save</button>
        {if $editMode}
				<button name="btnCancel" onclick="window.location.href = 'traffic-sources.php';
					return false" class="btn btn-secondary">Cancel</button>
        {/if}
    </div>
</div>

<div class="card" id="wdgTrafficSourcesCurrent">
    <div class="card-header">
        <h4>Current Traffic Sources</h4>
    </div>
    <div class="card-body search-with-btn-export">
        {include file='partButtonExport.tpl' exportLink="xml-export.php?type=t" exportExtraClass="btn-sm btn-export"}

        <table id="tblTrafficSources" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
                    <th>Source</th>
                    <th>Bidding</th>
                    <th>Currency</th>
                    <th>Keyword Parameter</th>
                    <th>Used in</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                {foreach $sources as $source}
                    <tr>
                        <td>{$source.Source}</td>
                        <td>{$source.CostType}</td>
                        <td>{$source.CurrencyCode}</td>
                        <td>{$source.KeywordToken}</td>
                        <td data-order="{$source.CampaignsNumber}">{$source.CampaignsNumber} campaign{if $source.CampaignsNumber!=1}s{/if}</td>
                        <td class="text-right">
                            <a href="traffic-sources.php?id={$source.CpvSourceID}" class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i>&nbsp;Edit</a>
							{include file='partButtonDelete.tpl' itemID=$source.CpvSourceID extraDeleteClass='mr-2' isDisabled=$source.CampaignsNumber>0 disabledTooltip='Cannot delete source that is used in campaigns'}
                            <a href="xml-export.php?type=t&id={$source.CpvSourceID}" class="btn btn-default btn-sm"><i class="fe fe-share"></i>&nbsp;Export</a>
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    </div>
</div>

<input type="hidden" name="hidEditID" value="{$editID}"/>
<input type="hidden" id="hidPredefTrafficSource" name="hidPredefTrafficSource" value=""/>

<style>
	{literal}
		#divExtraTokensContainer .form-group {
			margin-bottom: 2px;
		}
	{/literal}
</style>
<script type="text/javascript">
	{literal}
	$(document).ready(function () {
		/*$('#divRadiosCpvCpc label').addClass('radio-inline');*/
		$('#divRadiosCpvCpc label').after('&nbsp;&nbsp;&nbsp;');
		updateAppendUrlAll();
	});
	{/literal}
</script>

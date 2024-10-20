{include file="partMessage.tpl"}

<div class="row" id="wdgOfferSourcesModify">
    <div class="col-xl-8 mb-30">
        <div class="card mb-0">
            <div class="card-header">
                <h4>{if $editMode}Edit{else}Add{/if} Offer Source</h4>
            </div>
            <div class="card-body">

                <div class="row align-items-baseline">

                  <div class="col-lg-6">
                      <div class="form-group">
                          <label>Offer Source / Affiliate Network Name</label>
                          <input type="text" name="txtAffiliate" id="txtAffiliate" class="form-control" value="{$currentSource.Affiliate|default:''}"/>
                      </div>
                  </div>
                  
                    <select name="ddlSubIdSeparator" class="form-control" style="display:none">
                        {html_options values=$subIdSeparators output=$subIdSeparators selected=$currentSource.SubIdSeparator|default:'_'}
                    </select>

                  <div class="col-lg-6">
                      <div class="form-group">
                          <label>Offer Template <small class="text-muted">(adjust for your real offer URL)</small></label>
                          <input type="text" name="txtOfferTemplate" class="form-control" value="{$currentSource.OfferTemplate|default:''}"/>
                      </div>
                  </div>

                  <input type="hidden" name="hidPageName" id="hidPageName" value="{$currentSource.PageName|default:'adclick.php'}"/>
                  <input type="hidden" name="hidCurrentDomain" id="hidCurrentDomain" value="{$currentDomainFull|default:''}"/>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                        <label>SubID Placeholder <small class="text-danger">required</small></label>
                        <input type="text" name="txtSubIdPlace" id="txtSubIdPlace" class="form-control" urlfield="subid" value="{$currentSource.SubIdPlace|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                          <label>Revenue Placeholder</label>
                          <input type="text" name="txtRevenuePlace" class="form-control" urlfield="revenue" value="{$currentSource.RevenuePlace|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                          <label>Status Placeholder</label>
                          <input type="text" name="txtStatusPlace" class="form-control" urlfield="status" value="{$currentSource.StatusPlace|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                          <label>TransactionID Placeholder</label>
                          <input type="text" name="txtTransactionPlace" class="form-control" urlfield="txid" value="{$currentSource.TransactionPlace|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                          <label>Custom Field 1 Placeholder</label>
                          <input type="text" name="txtCustom1Place" class="form-control" urlfield="custom1" value="{$currentSource.Custom1Place|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                          <label>Custom Field 2 Placeholder</label>
                          <input type="text" name="txtCustom2Place" class="form-control" urlfield="custom2" value="{$currentSource.Custom2Place|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                          <label>Custom Field 3 Placeholder</label>
                          <input type="text" name="txtCustom3Place" class="form-control" urlfield="custom3" value="{$currentSource.Custom3Place|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                          <label>Custom Field 4 Placeholder</label>
                          <input type="text" name="txtCustom4Place" class="form-control" urlfield="custom4" value="{$currentSource.Custom4Place|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                          <label>Custom Field 5 Placeholder</label>
                          <input type="text" name="txtCustom5Place" class="form-control" urlfield="custom5" value="{$currentSource.Custom5Place|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                          <label>Conversion Status <small class="text-muted">(comma separated if multiple values)</small></label>
                          <input type="text" name="txtStatus" class="form-control" value="{$currentSource.StatusValues|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
                      <div class="form-group">
                          <label>Pass TS Status</label>
                          <input type="text" name="txtPassTsStatus" class="form-control" value="{$currentSource.PassTsStatusValues|default:''}"/>
                      </div>
                  </div>

                  <div class="col-xl-3 col-lg-4 col-sm-6">
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
                    <div class="input-group">
                        <input type="text" id="txtPostbackURL" name="txtPostbackURL" class="form-control" value="{$currentSource.PostbackURL|default:''}"/>
                    {include file="partCopyClipboard.tpl"}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-4 mb-30">
        <div class="card mb-0 h-100">
            <div class="card-header">
                <h4>Import Offer Source <span class="ml-2">{include file='partCampaignTooltip.tpl'}</span></h4>
            </div>

            <div class="card-body">
                <h5 class="text-center mb-3">Quick import Offer Source</h5>
                <div class="text-center mb-5">
                    <button type="submit" name="btnImportOfferSource" id="btnImportOfferSource" class="btn btn-primary" style="display:none"><i class="fa fa-cloud-download"></i> Import</button>
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
    <div class="card-body">
        <button name="btnSave_x" class="btn btn-primary mr-3" onclick="return validateName('txtAffiliate', 'Source')">Save</button>
        {if $editMode}
            <button class="btn btn-secondary" name="btnCancel" onclick="window.location.href = 'offer-sources.php'; return false">Cancel</button>
        {/if}
    </div>
</div>


<div class="card" id="wdgOfferSourcesCurrent">
    <div class="card-header">
        <h4>Current Offer Sources</h4>
    </div>

    <div class="card-body search-with-btn-export">
        {include file='partButtonExport.tpl' exportLink="xml-export.php?type=f" exportExtraClass="btn-sm btn-export"}
	     <table id="tblOfferSources" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
                    <th>Offer Source</th>
                    <th>Currency</th>
                    <th class="text-center">SubId Separator</th>
                    <th class="text-center">Offer Template</th>
                    <th>Used in</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody>
            {foreach $sources as $source}
                <tr>
                    <td class="left">{$source.Affiliate}</td>
                    <td>{$source.CurrencyCode}</td>
                    <td class="text-center">{$source.SubIdSeparator}</td>
                    <td>{$source.OfferTemplate}</td>
                    <td data-order="{$source.CampaignsNumber}">{$source.CampaignsNumber} campaign{if $source.CampaignsNumber!=1}s{/if}</td>
                    <td class="text-right">
                        <a href="offer-sources.php?id={$source.AffiliateSourceID}" class="btn btn-primary btn-sm mr-2"><i class="fa fa-edit"></i>&nbsp;Edit</a>
						{include file='partButtonDelete.tpl' itemID=$source.AffiliateSourceID extraDeleteClass='mr-2' isDisabled=$source.CampaignsNumber>0 disabledTooltip='Cannot delete source that is used in campaigns'}
                        <a href="xml-export.php?type=f&id={$source.AffiliateSourceID}" class="btn btn-default btn-sm"><i class="fe fe-share"></i>&nbsp;Export</a>
                    </td>
                </tr>
            {/foreach}
            </tbody>
	     </table>
    </div>
</div>

<input type="hidden" name="hidEditID" value="{$editID}"/>
<input type="hidden" id="hidPredefOfferSource" name="hidPredefOfferSource" value=""/>

<script type="text/javascript">
	$(document).ready(function () {
		initializeCopyToClipboard();
		initializeQrCode();
		if ($("#txtPostbackURL").val() == "")
			buildPostbackURL();
	});

	function buildPostbackURL()
	{
		var url = $("#hidCurrentDomain").val() + $("#hidPageName").val() +
				"?subid=" + ($.trim($("#txtSubIdPlace").val()) != "" ? $.trim($("#txtSubIdPlace").val()) : "REPLACE");
		$("input[urlfield]").each(function(index) {
			if ($(this).attr("urlfield") != "subid" && $.trim($(this).val()) != '')
				url += "&" + $(this).attr("urlfield") + "=" + $.trim($(this).val());
		});
		$("#txtPostbackURL").val(url);
	}

	$("input[urlfield]").change(buildPostbackURL);
</script>

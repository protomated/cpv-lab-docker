// @package     CPV Lab Pro
// @copyright   (C) Uptechvision Solutions. All rights reserved.
// @link        https://cpvlab.pro

function loadPredefLp(suffix)
{
	if ($('#ddlPredef' + suffix).val() == 0)
	{
		var isQuickSetupPage = $('#isQkPage').length > 0;
		if (isQuickSetupPage)
		{
			$('#txtPageName' + suffix).val('');
			$('#txtPageUrl' + suffix).val('');
			$('#txtShare' + suffix).val('0');
			clickInactiveLP(true, suffix);
		}
		else
		{
			clickInactiveLP($('#chkInactive' + suffix).prop("checked"), suffix);
		}
		return;
	}
	showSpinner("spn" + suffix);
	$.ajax({
		url: "ajax/getPredefLp.php",
		data: {
			"lpID": $('#ddlPredef' + suffix).val()
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{            
			$('#txtPageName' + suffix).val(response['LpName']);
			$('#txtPageUrl' + suffix).val(response['LpUrl']);
			var isInactive = response['Inactive'] == 1;
			$('#chkInactive' + suffix).prop("checked", !isInactive);
			clickInactiveLP(!isInactive, suffix);
			if (suffix == "LP0" || suffix == "LP0_0")
			{
				updateDestinationParallelLP();
			}
			updateTrackingLinkLpValues();
			updateCampaignUrlLpValues();
			updateTrackingCodeLpValues();
		},
		complete: function(xhr,status)
		{
			hideSpinner("spn" + suffix);
		}
	});
}

function loadPredefOffer(suffix)
{
	if ($('#ddlPredefOffer' + suffix).val() == 0)
	{
		var isQuickSetupPage = $('#isQkPage').length > 0;
		if (isQuickSetupPage)
		{
			$('#txtPageNameOffer' + suffix).val('');
			$('#txtPageUrlOffer' + suffix).val('');
			$('#txtShareOffer' + suffix).val('0');
			clickInactiveOffer(true, suffix);
		}
		else
		{
			clickInactiveOffer($('#chkInactiveOffer' + suffix).prop("checked"), suffix);
		}
		return;
	}
	showSpinner("spno" + suffix);
	$.ajax({
		url: "ajax/getPredefOffer.php",
		data: {
			"offerID": $('#ddlPredefOffer' + suffix).val()
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{            
			$('#txtPageNameOffer' + suffix).val(response['OfferName']);
			$('#txtPageUrlOffer' + suffix).val(response['OfferUrl']);
			$('#txtPayout' + suffix).val(response['Payout']);
			$('#ddlNetwork' + suffix).val(response['AffiliateSourceID']);
			var isInactive = response['Inactive'] == 1;
			$('#chkInactiveOffer' + suffix).prop("checked", !isInactive);
			ajaxGetOfferSourceUrlEnding($('#ddlNetwork' + suffix));
			updateSpecificPostbacks();
			clickInactiveOffer(!isInactive, suffix);
			updateTrackingLinkLpValues();
		},
		complete: function(xhr,status)
		{
			hideSpinner("spno" + suffix);
		}
	});
}

function ajaxChangeCampaignDropdownCpv() {
	if ($('#spanCpvName').length==0 || $('#lblUpdateStatsCpv').length==0)
		return;
    
	$.ajax({
		url: "ajax/getCampaignDetailsCpv.php",
		data: {
			"campaignID": $('#ddlCampaign').val()
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{            
			$('#spanCpvName').html(response['SourceName']);
			$('#lblUpdateStatsCpv').html('Update Stats ' + (response['CostTypeID'] == 2 ? 'CPC with Average CPC' : 'CPV with Average CPV') + ' from upload file');
		}
	});
}

function ajaxGetPredefinedSource() {
	var ddlvalue = $('#ddlPredefinedSource').val();
	if (ddlvalue==0)
		return;
	showSpinner("spin1");
    
	$.ajax({
		url: "ajax/getSource.php",
		data: {
			"cpvSourceID": ddlvalue
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			var tokenOptions = '<option id="0">Select...</option>';
			$.each(response, function(key, value)
			{
				if (key == "Tokens")
				{
					$.each(value, function(index, optionItem) {
						if (optionItem["CpvSourceTokenID"] == -1 || optionItem["CpvSourceTokenID"] == -21)
							tokenOptions += '<option disabled>──────────</option>';
						tokenOptions += '<option value="' + optionItem["CpvSourceTokenID"] + '">' + optionItem["ExtraTokenName"] + '</option>';
					});
				}
				else if (key == "CostTypeID")
				{
					$('#radCostTypeID_' + value).prop("checked", true);
					initializeIcheckControls();
				}
				else
				{
					$('#txt' + key).val(value);
					if (key == "PostbackUrl")
					{
						if (value == undefined || value == "")
						{
							$('#chkPostbackUrl').iCheck('uncheck');
						}
						else
						{
							$('#chkPostbackUrl').iCheck('check');
						}
					}
				}
			});
			$('select.etText4s').html(tokenOptions);
			updateAppendUrlAll();
			updateDestinationUrl();
			updateSpecificTsPostback();
		},
		complete: function(xhr,status)
		{
			hideSpinner("spin1");
		}
	});
}

function ajaxGetOfferSourceUrlEnding(control) {
	var ddlvalue = $(control).val();
	if (ddlvalue==0)
		return;
	var controlSuffix = $(control).prop('id').replace("ddlNetwork","");
	//showSpinner("spin1");
    
	$.ajax({
		url: "ajax/getOfferSourceUrlEnding.php",
		data: {
			"sourceID": ddlvalue
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response == '')
			{
				$(control).attr("dataparam", 'subid');
				$(control).attr("dataending", '');
				$('#txtEndingOffer' + controlSuffix).html("");
			}
			else
			{
				//$('#hidParameterOffer' + controlSuffix).val(response["Parameter"]);
				$(control).attr("dataparam", response["OfferParameter"]);
				$(control).attr("dataending", response["OfferEnding"]);
				if(response["OfferTemplate"] != '')
				{
					$('#txtEndingOffer' + controlSuffix).html("End the " + response["Affiliate"] + " URLs with <b>" + response["OfferTemplate"] + '</b>');
				}
				else
				{
					$('#txtEndingOffer' + controlSuffix).html('');
				}
			}
		}
		//complete: function(xhr,status)
		//{
		//	hideSpinner("spin1");
		//}
	});
}

function ajaxLoadOffers() {
	if ($('#ddlCampaignsRevenue').val() == null || $('#ddlCampaignsRevenue').val() == '')
		return;
	showSpinner("spin1");
	$('#ddlOffersRevenue').html('');
    
	$.ajax({
		url: "ajax/loadOffers.php",
		data: {
			"campaignID": $('#ddlCampaignsRevenue').val()
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$('#ddlOffersRevenue').html(response);
		},
		complete: function(xhr,status)
		{
			hideSpinner("spin1");
		}
	});
}

function ajaxLoadRedirectProfiles() {
	if ($('#ddlImportCampaign').val() == null || $('#ddlImportCampaign').val() == '')
		return;
	showSpinner("spin2");
	$('#ddlOffersRevenue').html('');
    
	$.ajax({
		url: "ajax/loadRedirectProfiles.php",
		data: {
			"campaignID": $('#ddlImportCampaign').val()
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$('#ddlImportProfile').html(response);
		},
		complete: function(xhr,status)
		{
			hideSpinner("spin2");
		}
	});
}

function ajaxLoadExtraTokens() {
	if ($('#ddlCampaigns').val() == null || $('#ddlCampaigns').val() == '')
		return;
	showSpinner("spin2");
	$('#ddlExtraToken').html('');
    
	$.ajax({
		url: "ajax/loadExtraTokens.php",
		data: {
			"campaignID": $('#ddlCampaigns').val()
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$('#ddlExtraToken').html(response);
		},
		complete: function(xhr,status)
		{
			hideSpinner("spin2");
		}
	});
}

function ajaxCalculateRemoveClicks() {
	//showSpinner("spin2");
	$('#divRemoveClicksCount').html("Counting clicks that will be removed...");
    
	$.ajax({
		url: "ajax/calculateRemoveClicks.php",
		data: {
			"campaignID": $('#ddlCampaigns').val(),
			"target": $('#txtTarget').val(),
			"etKey": $('#ddlExtraToken').val(),
			"etValue": $('#txtExtraTokenValue').val(),
			"subid": $('#txtSubIdClickID').val(),
			"intfrom": $('#txtIntervalFrom').val(),
			"intto": $('#txtIntervalTo').val(),
			"ipad": $('#txtIPAddress').val(),
			"remcache": $('#chkRemoveFromCache').prop("checked") ? 1 : 0,
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$('#divRemoveClicksCount').html(response);
		},
		complete: function(xhr,status)
		{
			//hideSpinner("spin2");
		}
	});
}

function ajaxSetDefaultProfile(profileID,profileType,targetElement) {
	$(".dtSettings > tbody > tr > td:last-child > button.btn-danger").prop("disabled", false);
	$(targetElement).closest('tr').children("td:last").children("button.btn-danger").prop("disabled",true);
	showSpinner("spin1");
	$.ajax({
		url: "ajax/setDefaultProfile.php",
		data: {
			"profileID": profileID, 
			"type": profileType
		},
		type: "POST",
		complete: function(xhr,status)
		{
			hideSpinner("spin1");
		}
	});
}

function ajaxSaveColumnsOrder() {
	showSpinner("spin1");
	var columnsOrder = '';
	$(".hidCid").each(function() {
		columnsOrder += $(this).attr('id').replace("thColumn","") + ',';
	});
	var campaignID = $("#hidCampaignID").val();
	if (columnsOrder == '' || campaignID == '')
		return;
	$.ajax({
		url: "ajax/saveColumnsOrder.php",
		data: {
			"camp": campaignID, 
			"order": columnsOrder
		},
		type: "POST",
		complete: function(xhr,status)
		{
			hideSpinner("spin1");
		}
	});
}

function ajaxSaveConfigValue(key, value, isTextParam) {
	var isText = typeof isTextParam !== 'undefined' ? isTextParam : 0;
	if (key == '')
		return;
	$.ajax({
		url: "ajax/saveConfigValue.php",
		data: {
			"confkey": key, 
			"confval": value, 
			"confistxt": isText
		},
		type: "POST",
	});
}

function ajaxGetTokenDetails(sender) {
	var ddlvalue = $(sender).val();
	if (ddlvalue==0)
		return;
	sender.selectedIndex = 0;
	var rowID = sender.id.replace("ddlExtraTokenSelect", "");
	if (ddlvalue < 0)
	{
		ddlvalueActual = -ddlvalue;
		var tokenName = '', tokenParam = '';
		switch (ddlvalueActual)
		{
			case 21:
				tokenName = 'Is Bot';
				tokenParam = '{isbot}';
				break;
			case 22:
				tokenName = 'Bot Name';
				tokenParam = '{botname}';
				break;
			case 23:
				tokenName = 'Bot Type';
				tokenParam = '{bottype}';
				break;
			case 25:
				tokenName = 'Is Proxy';
				tokenParam = '{isproxy}';
				break;
			case 27:
				tokenName = 'Proxy Type';
				tokenParam = '{proxytype}';
				break;
			case 31:
				tokenName = 'Page Name';
				tokenParam = '{pagename}';
				break;
			default:
				tokenName = "Multivariate " + ddlvalueActual;
				tokenParam = "{multivariate" + ddlvalueActual + "}";
				break;
		}
		$('#txtExtraTokenName' + rowID).val(tokenName);
		$('#txtExtraTokenParam' + rowID).val(tokenParam);
		$('#txtExtraTokenPlace' + rowID).val("");
		updateDestinationUrl();
		updateAppendUrl(rowID);
		return;
	}
	showSpinner("spine" + rowID);
    
	$.ajax({
		url: "ajax/getSourceToken.php",
		data: {
			"cpvSourceTokenID": ddlvalue
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$.each(response, function(key, value)
			{
				$('#txt' + key + rowID).val(value);
			});
			updateDestinationUrl();
		},
		complete: function(xhr,status)
		{
			updateAppendUrl(rowID);
			hideSpinner("spine" + rowID);
		}
	});
}

function ajaxGetCampaignsOfferManagement() {
	showSpinner("spin");
    
	$.ajax({
		url: "ajax/loadCampOffManag.php",
		data: {
			"fs": $('#ddlFilterSources').val(),
			"fg": $('#ddlFilterGroups').val(),
			"fo": $('#ddlFilterOffers').val()
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$.each(response, function(key, value)
			{
				LoadTransfer2ControlOfferAdd(key, value["data"]);
			});
		},
		complete: function(xhr,status)
		{
			hideSpinner("spin");
		}
	});
}

function LoadTransfer2ControlOfferAdd(campaignType, dataSource)
{
	$(".transfer" + campaignType).html("");
	var settings = {
		// items data array
		dataArray: campaignType==4 || campaignType==8 ? dataSource : [],
		// group data array
		groupDataArray: campaignType==4 || campaignType==8 ? [] : dataSource,
		// data item name
		itemName: "item",
		// group data item name
		groupItemName: "groupName",
		// group data array name
		groupArrayName: "groupData",
		// data value name
		valueName: "value",
		// tab text
		tabNameText: "Campaigns",
		// right tab text
		rightTabNameText: "Selected Campaigns",
		// search placeholder text
		searchPlaceholderText: "search",
		callable: function (items) {
		  // your code
		}
	};

	myTransfer[campaignType] = $(".transfer" + campaignType).transfer(settings);
}

function ajaxChangeConditionType(sender) {
	var ddlvalue = $(sender).val();
	if (ddlvalue==0) 
		return;
	var rowID = sender.id.replace("ddlCondition", "");
	if (rowID == "tmpCount")
		return;
	showSpinner("spinrc");
    
	var parentConditions = new Array();
	parentConditions[2] = 1;
	parentConditions[3] = 1;
	parentConditions[8] = 7;
	parentConditions[9] = 8;
	parentConditions[31] = 4;
	parentConditions[32] = 6;
	parentConditions[29] = 9;
    
	parentValue = '';
	if (parentConditions[ddlvalue] != undefined)
	{
		$(".conditionTypeBox").each(function() {
			if ($(this).val()== parentConditions[ddlvalue])
			{
				parentRowID = $(this).attr('id').replace("ddlCondition", "");
				parentValue += $("#txtValue" + parentRowID).val() + ',';
			}
		});
	}
    
	$.ajax({
		url: "ajax/getConditionValues.php",
		data: {
			"conditionTypeID": ddlvalue, 
			"parentValue": parentValue,
			"campaignID": $('#hidCampaignID').val()
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response == "request")
			{
				$('#divRowValue' + rowID).hide();
				$('#divRowExtra' + rowID).show();
				$('#txtExtra' + rowID).attr('placeholder', 'Request URL here');
				response = '';
			}
			else
			{
				$('#divRowValue' + rowID).show();
				$('#divRowExtra' + rowID).hide();
				$('#txtExtra' + rowID).attr('placeholder', '');
			}
			$('#ddlValue' + rowID).html(response);
			if ($('#ddlValue' + rowID)[0].sumo != null)
			{
				response == '' ? $('#ddlValue' + rowID)[0].sumo.disable() : $('#ddlValue' + rowID)[0].sumo.enable();
				$('#ddlValue' + rowID)[0].sumo.reload();
			}
		},
		complete: function(xhr,status)
		{
			hideSpinner("spinrc");
		}
	});
}

function ajaxLoadCustomView(customViewID) {
	$.ajax({
		url: "ajax/loadCustomView.php",
		data: {
			"id": customViewID
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response!='')
			{
				$('#hidCurrentColumn4').val(response);
				$('#hidDefaultColumns4').val(response);
				$("#ddlColumns4").val(response.split(','));
				$("#ddlColumns4")[0].sumo.reload();
			}
		}
	});
}

function ajaxLoadStatsRequest(pageName, campaignID, objectSuffix, dataArray, checkAllControl)
{
	$.ajax({
		url: "ajax/stats" + pageName + ".php",
		data: dataArray,
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			var idx = response.indexOf("|||");
			if (idx>0)
			{
				var parts = response.split("|||");
				if (parts.length == 2)
				{
					responseText = parts[1];
					exportLink = $("<div />").html(parts[0]).text();
				}
				else
				{
					responseText = parts[2];
					exportLink = $("<div />").html(parts[1]).text();
					$.each(JSON.parse($("<div />").html(parts[0]).text()), function(key, data) { $("#cmp" + key).html(data); });
				}
			}
			else
			{
				responseText = response;
				exportLink = '';
			}
			var tableID = '#tbl' + campaignID + '-' + objectSuffix;
			
			if ( $.fn.dataTable.isDataTable(tableID) ) {
				$(tableID).DataTable().destroy();
			}
			else
			{
				$(tableID).addClass('dtReportsNoSort');
			}
			$(tableID).html(responseText);
			$(tableID).DataTable(getConfigReportsNoSort());

			
			$('#lnkExport' + objectSuffix).attr("onclick", exportLink != '' ? "window.location.href = '" + exportLink + "'; return false" : "");
			hideSpinner("spin" + objectSuffix);
			
			if (checkAllControl!="")
			{
				initializeIcheckControls();
			}
		}
	});
}

function ajaxLoadStatsTarget(columnsToChange, customViewID) {
	var reportTypeID = 4;
	var levelID = 1;
	var objectSuffix = reportTypeID + "-" + levelID;
	showSpinner("spin" + objectSuffix);
	var campaignID = $('#hidCampaignID').val();
	selectedOptions = $('#ddlFilterVisitors').find("option:selected").length;
	var fv = (selectedOptions != 0 && selectedOptions != $('#hidFilterVisitorsTotal').val()) ? $('#hidFilterVisitors').val().replace(/,/g, "") : '';
	selectedOptions = $('#ddlFilterTarget').find("option:selected").length;
	var ft = (selectedOptions != 0 && selectedOptions != $('#hidFilterTargetTotal').val()) ? $('#hidFilterTarget').val() : '';
	selectedOptions = $('#ddlFilterLP').find("option:selected").length;
	var fl = (selectedOptions != 0 && selectedOptions != $('#hidFilterLPTotal').val()) ? $('#hidFilterLP').val() : '';
	selectedOptions = $('#ddlFilterOffer').find("option:selected").length;
	var fo = (selectedOptions != 0 && selectedOptions != $('#hidFilterOfferTotal').val()) ? $('#hidFilterOffer').val() : '';
	selectedOptions = $('#ddlFilterInactive').find("option:selected").length;
	var fi = selectedOptions == 1 ? $('#ddlFilterInactive').val()[0] : '';
				
	var dataArray = {
			"camp": campaignID,
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0',
			"whereClause" : $('#hidIntervalWhereClause').val(),
			"sort" : $('#hidSortField' + objectSuffix).val(),
			"dir" : $('#hidDirField' + objectSuffix).val(),
			"rec": $("#ddlRecordsDisplayed").val(),
			"cols": typeof columnsToChange !== 'undefined' ? columnsToChange : "",
			"cv": typeof customViewID !== 'undefined' ? customViewID : "",
			"fv": fv,
			"ft": ft,
			"fl": fl,
			"fo": fo,
			"fi": fi
		};
	ajaxLoadStatsRequest("Target", campaignID, objectSuffix, dataArray, "ccT");
}

function ajaxLoadStatsTargetExtra(columnsToChange, customViewID) {
	var reportTypeID = 4;
	var levelID = 2;
	var objectSuffix = reportTypeID + "-" + levelID;
	showSpinner("spin" + objectSuffix);
	var campaignID = $('#hidCampaignID').val();
	selectedOptions = $('#ddlFilterVisitors').find("option:selected").length;
	var fv = (selectedOptions != 0 && selectedOptions != $('#hidFilterVisitorsTotal').val()) ? $('#hidFilterVisitors').val().replace(/,/g, "") : '';
	selectedOptions = $('#ddlFilterTarget').find("option:selected").length;
	var ft = (selectedOptions != 0 && selectedOptions != $('#hidFilterTargetTotal').val()) ? $('#hidFilterTarget').val() : '';
	selectedOptions = $('#ddlFilterLP').find("option:selected").length;
	var fl = (selectedOptions != 0 && selectedOptions != $('#hidFilterLPTotal').val()) ? $('#hidFilterLP').val() : '';
	selectedOptions = $('#ddlFilterOffer').find("option:selected").length;
	var fo = (selectedOptions != 0 && selectedOptions != $('#hidFilterOfferTotal').val()) ? $('#hidFilterOffer').val() : '';
	selectedOptions = $('#ddlFilterInactive').find("option:selected").length;
	var fi = selectedOptions == 1 ? $('#ddlFilterInactive').val()[0] : '';
			
	var dataArray = {
			"camp": campaignID,
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0',
			"whereClause" : $('#hidIntervalWhereClause').val(),
			"sort" : $('#hidSortField' + objectSuffix).val(),
			"dir" : $('#hidDirField' + objectSuffix).val(),
			"rec": $("#ddlRecordsDisplayed").val(),
			"fv": fv,
			"ft": ft,
			"fl": fl,
			"fo": fo,
			"fi": fi
		};
	ajaxLoadStatsRequest("TargetExtra", campaignID, objectSuffix, dataArray, "");
}

function ajaxLoadStatsAd(columnsToChange) {
	var reportTypeID = 16;
	var objectSuffix = reportTypeID;
	showSpinner("spin" + objectSuffix);
	var campaignID = $('#hidCampaignID').val();
	selectedOptions = $('#ddlFilterInactive').find("option:selected").length;
	var fi = selectedOptions == 1 ? $('#ddlFilterInactive').val()[0] : '';
			
	var dataArray = {
			"camp": campaignID,
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0',
			"whereClause" : $('#hidIntervalWhereClause').val(),
			"sort" : $('#hidSortField' + objectSuffix).val(),
			"dir" : $('#hidDirField' + objectSuffix).val(),
			"cols": typeof columnsToChange !== 'undefined' ? columnsToChange : "",
			"fi": fi
		};
	ajaxLoadStatsRequest("Ad", campaignID, objectSuffix, dataArray, "ccA");
}

function ajaxLoadStatsLanding(levelID, columnsToChange) {
	var reportTypeID = 5;
	var objectSuffix = reportTypeID + "-" + levelID;
	showSpinner("spin" + objectSuffix);
	var campaignID = $('#hidCampaignID').val();
	selectedOptions = $('#ddlFilterInactive').find("option:selected").length;
	var fi = selectedOptions == 1 ? $('#ddlFilterInactive').val()[0] : '';
	
	var dataArray = {
			"camp": campaignID,
			"level": levelID,
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0',
			"whereClause" : $('#hidIntervalWhereClause').val(),
			"sort" : $('#hidSortField' + objectSuffix).val(),
			"dir" : $('#hidDirField' + objectSuffix).val(),
			"cols": typeof columnsToChange !== 'undefined' ? columnsToChange : "",
			"fi": fi
		};
	ajaxLoadStatsRequest("Landing", campaignID, objectSuffix, dataArray, "ccL");
}

function ajaxLoadStatsThankYou() {
	var reportTypeID = 12;
	var objectSuffix = reportTypeID;
	showSpinner("spin" + objectSuffix);
	var campaignID = $('#hidCampaignID').val();
				
	var dataArray = {
			"camp": campaignID,
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0',
			"whereClause" : $('#hidIntervalWhereClause').val()
		};
	ajaxLoadStatsRequest("ThankYou", campaignID, objectSuffix, dataArray, "");
}

function ajaxLoadStatsOffer(columnsToChange) {
	var reportTypeID = 6;
	var objectSuffix = reportTypeID;
	showSpinner("spin" + objectSuffix);
	var campaignID = $('#hidCampaignID').val();
	selectedOptions = $('#ddlFilterInactive').find("option:selected").length;
	var fi = selectedOptions == 1 ? $('#ddlFilterInactive').val()[0] : '';
	
	var dataArray = {
			"camp": campaignID,
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0',
			"whereClause" : $('#hidIntervalWhereClause').val(),
			"sort" : $('#hidSortField' + objectSuffix).val(),
			"dir" : $('#hidDirField' + objectSuffix).val(),
			"cols": typeof columnsToChange !== 'undefined' ? columnsToChange : "",
			"fi": fi
		};
	ajaxLoadStatsRequest("Offer", campaignID, objectSuffix, dataArray, "ccO");
}

function ajaxLoadStatsCampaign(columnsToChange) {
	var reportTypeID = 10;
	var objectSuffix = reportTypeID;
	showSpinner("spin" + objectSuffix);
	var campaignID = $('#hidCampaignID').val();
				
	var dataArray = {
			"camp": campaignID,
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0',
			"whereClause" : $('#hidIntervalWhereClause').val(),
			"cols": typeof columnsToChange !== 'undefined' ? columnsToChange : ""
		};
	ajaxLoadStatsRequest("Campaign", campaignID, objectSuffix, dataArray, "");
}

function ajaxGetPredefTrafficSources() {
	showSpinner("spin1");
    
	$.ajax({
		url: "ajax/getPredefTrafficSourcesList.php",
		data: {},
		dataType: "json",
		type: "GET",
		success: function(response, textStatus, xhr)
		{
			var hasTrafficSources = false;
			var tableOptions = '<thead><tr><th>Traffic Source</th><th>Ads Format</th><th>Traffic Type</th></tr></thead><tbody>';
			$.each(response, function(key, value)
			{
				tableOptions += '<tr><td class="predefts"><a href="javascript:;"><img src="' + value["Logo"] +
						'" alt="' + value["Name"] + '" title="' + value["Name"] + '" tsid="' + value["File"] + '"/></a></td>' +
						'<td>' + (value["Ads"] != null ? value["Ads"] : '') + '</td><td>' + (value["Traffic"] != null ? value["Traffic"] : '') + '</td></tr>';
				hasTrafficSources = true;
				
			});
			if (!hasTrafficSources)
				tableOptions = '<td><b>There are no Traffic Sources available.</b></td>';
			tableOptions += '</tbody>';
			$('#tblPredefTrafficSource').html(tableOptions);
			
			$('.predefts img').unbind('click');
			$('.predefts img').click(function(){ 
				$("#hidPredefTrafficSource").val($(this).first().attr("tsid"));
				$("#btnImportTrafficSource").click();
			});
		},
		complete: function(xhr,status)
		{
			hideSpinner("spin1");
		}
	});
}

function ajaxGetPredefOfferSources() {
	showSpinner("spin1");
    
	$.ajax({
		url: "ajax/getPredefTrafficSourcesList.php?t=o",
		data: {},
		dataType: "json",
		type: "GET",
		success: function(response, textStatus, xhr)
		{
			var hasTrafficSources = false;
			var tableOptions = '<thead><tr><th>Offer Source</th><th>Top Verticals</th></tr></thead><tbody>';
			$.each(response, function(key, value)
			{
				tableOptions += '<tr><td class="predefts"><a href="javascript:;"><img src="' + value["Logo"] +
						'" alt="' + value["Name"] + '" title="' + value["Name"] + '" tsid="' + value["File"] + '"/></a></td>' +
						'<td>' + (value["Verticals"] != null ? value["Verticals"] : '') + '</td></tr>';
				hasTrafficSources = true;
				
			});
			if (!hasTrafficSources)
				tableOptions = '<td><b>There are no Offer Sources available.</b></td>';
			tableOptions += '</tbody>';
			$('#tblPredefOfferSource').html(tableOptions);
			
			$('.predefts img').unbind('click');
			$('.predefts img').click(function(){ 
				$("#hidPredefOfferSource").val($(this).first().attr("tsid"));
				$("#btnImportOfferSource").click();
			});
		},
		complete: function(xhr,status)
		{
			hideSpinner("spin1");
		}
	});
}

function ajaxSaveRedirectProfile() {
	if (!validateName('txtProfileName', 'Visitor Redirect Profile'))
		return;
	if ($('#chkCertifiedDomain').length > 0 && $('#chkCertifiedDomain').prop("checked"))
	{
		alert("Warning: Redirect Profiles will not be applied when using the Google certified domain.")
		cleanRedirectProfile();
		return;
	}
	showSpinner("spinr");
	var campaignID = $("#hidID").val();
	var profileName = $("#txtProfileName").val();
	if (campaignID == '' || profileName == '')
		return;
	var conditions = [];
	for(i=0; i<$("#hidConditionsToShow").val(); i++)
	{
		var id = $("#hidConditionID" + i).val();
		var type = $("#ddlCondition" + i).val();
		var oper = $("#ddlOperator" + i).val();
		var value = $("#txtValue" + i).val();
		var extra = $("#txtExtra" + i).val();
		if (value != '')
			conditions.push({"id": id, "type": type, "oper": oper, "value": value, "extra": extra});
	}
	$.ajax({
		url: "ajax/saveRedirectProfile.php",
		data: {
			"camp": campaignID, 
			"name": profileName,
			"id": $("#hidRedirectProfileEditID").val(),
			"lpid": $("#ddlLps").val(),
			"ofid": $("#ddlOffers").val(),
			"ptid": $("#ddlPaths").val(),
			"url": $("#txtRedirectUrl").val(),
			"active": $("#chkActive").prop("checked") ? 1 : 0,
			"oper": $('input[name=radOperator]:checked').val(),
			"rrpr": $('input[name=radRedirectProfile]:checked').val(),
			"cond": JSON.stringify(conditions)
			
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			cleanRedirectProfile();
			$("#spnMessageRedirectProfile").html(response);
			$("#divMessageRedirectProfile").show();
			ajaxLoadRedirectProfilesList();
		},
		complete: function(xhr,status)
		{
			hideSpinner("spinr");
		}
	});
}

function ajaxLoadRedirectProfile(editID, cloneID)
{
	showSpinner("spinr");
	$.ajax({
		url: "ajax/loadRedirectProfile.php",
		data: {
			"id": editID,
			"clone": cloneID
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			cleanRedirectProfile(response['Conditions'].length >= 3 ? response['Conditions'].length : 3, false);
			$('#txtProfileName').val(response['RedirectProfileName']);
			if (response["ProfileOperator"] == 1)
				$('#radOperatorAnd').prop("checked", true);
			else
				$('#radOperatorOr').prop("checked", true);
			prepare_redtype_elems(response["RedirectTypeID"]);
			$('#radOperatorAnd').iCheck('update');
			$('#radOperatorOr').iCheck('update');
			$('#chkActive').prop("checked", response["Active"] == 1);
			$('#ddlPaths').val(response['PathID']);
			if ($("#ddlLps option[value='" + response['LandingPageID'] + "']").length > 0)
				$('#ddlLps').val(response['LandingPageID']);
			else
				$('#ddlLps').val(0);
			if ($("#ddlOffers option[value='" + response['OfferID'] + "']").length > 0)
				$('#ddlOffers').val(response['OfferID']);
			else
				$('#ddlOffers').val(0);
			$('#txtRedirectUrl').val(response['RedirectUrl']);
			for(i=0; i<response['Conditions'].length; i++)
			{
				$('#hidConditionID' + i).val(response['Conditions'][i]["RedirectConditionID"]);
				$('#ddlCondition' + i).val(response['Conditions'][i]["RedirectTypeID"]);
				$('#ddlOperator' + i).val(response['Conditions'][i]["RedirectOperatorID"]);
				$('#txtValue' + i).val(response['Conditions'][i]["ValueCondition"]);
				$('#txtExtra' + i).val(response['Conditions'][i]["ExtraCondition"]);
			}
			if (editID > 0)
				$('#hidRedirectProfileEditID').val(editID);
			$('.conditionTypeBox').each(function () {
				ajaxChangeConditionType($get($(this).attr('id')));
			});
		},
		complete: function(xhr,status)
		{
			hideSpinner("spinr");
		}
	});
}

function ajaxDeleteRedirectProfile() {
	showSpinner("spinrl");
	var profileID = $("#hidDeleteID").val();
	if (profileID == '' || profileID == '0')
		return;
	$.ajax({
		url: "ajax/deleteRedirectProfile.php",
		data: {
			"id": profileID
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$('#divModalDelete').hide();
			$('#divModalDelete').detach().appendTo($('#divModalDeleteContainer'));
			ajaxLoadRedirectProfilesList();
		},
		complete: function(xhr,status)
		{
			hideSpinner("spinrl");
		}
	});
}

function ajaxLoadRedirectProfilesList() {
	showSpinner("spinrl");
	var campaignID = $("#hidID").val();
	if (campaignID == '')
		return;
	$.ajax({
		url: "ajax/loadRedirectProfilesList.php",
		data: {
			"camp": campaignID
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$("#divRedirectProfilesList").html(response);
			initializeIcheckControls();
		},
		complete: function(xhr,status)
		{
			hideSpinner("spinrl");
		}
	});
}

function ajaxBulkActionStats(actionType, selectedObjects, objectType) {
	showSpinner("spinb" + objectType);
	$.ajax({
		url: "ajax/bulkActionStats.php",
		data: {
			"camp": $('#hidCampaignID').val(),
			"action": actionType,
			"objects": selectedObjects,
			"type": objectType
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			switch (objectType)
			{
				case 'T':
					reloadTargetSection();
					break;
				case 'A':
					reloadAdSection();
					break;
				case 'L':
					reloadLandingSection();
					break;
				case 'O':
					reloadOfferSection();
					break;
			}
		},
		complete: function(xhr,status)
		{
			hideSpinner("spinb" + objectType);
		}
	});
}

function ajaxPassTsPostback(actionType, selectedObject, objectType) {
	var settings = {
		 async: true,
		 crossDomain: true,
		url: "ajax/bulkActionConversionsList.php",
		data: {
			"action": actionType,
			"objects": selectedObject,
			"type": objectType
		},
		type: "POST"
	 };
 
	 return $.ajax(settings);
 };

function ajaxPerformTsPostbackRequest(actionType, selectedObjects, objectType, i, total)
{
	var req1 = ajaxPassTsPostback(actionType, selectedObjects[i], objectType);
		$.when(req1).done(function(data_1) {
			//console.log("passed for clickID: " + selectedObjects[i] + ' - response:' + data_1);
			i++;
			$('#knobPassedTsPostback').val(i*100/(total)).trigger('change');
			$('#txtTsPostbackStatus').html("Passed conversions: " + i + " of " + total);
			if (i<total)
			{
				ajaxPerformTsPostbackRequest(actionType, selectedObjects, objectType, i, total);
			}
			else
			{
				hideSpinner("spin" + objectType);
				$('#txtTsPostbackStatus').html("Passed all conversions!");
				$('#btnTsPostbackSuccess').show();
			}
		});
}

function ajaxBulkActionConversionsList(actionType, selectedObjects, objectType) {
	$('#btnTsPostbackSuccess').hide();
	$('#knobPassedTsPostback').val(0).trigger('change');
	$('#txtTsPostbackStatus').html("Passed conversions: 0 of " + selectedObjects.length);
	$('#tsPostbackModal').modal("show");
	showSpinner("spin" + objectType);

	ajaxPerformTsPostbackRequest(actionType, selectedObjects, objectType, 0, selectedObjects.length)
}

function ajaxLoadExactBids() {
	showSpinner("spinL");
	$.ajax({
		url: "currentBidsList.php",
		data: {
			"camp": $('#ddlCampaign').val()
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$("#divCurrentExactBids").html(response);
		},
		complete: function(xhr,status)
		{
			hideSpinner("spinL");
		}
	});
}

function removeExactBids(type) {
	var ids = '';
	var number = 0;
	if (type == "A")
	{
		$(".chkcolA:checked").each(function() {
			ids += $(this).parent().next().text().trim() + ',';
			number++;
		});
	}
	else
	{
		$(".chkcolT:checked").each(function() {
			ids += $(this).attr('id').replace("chkT","") + ',';
			number++;
		});
	}
	if (ids == '')
		return;
	confirm("Are you sure you want to remove the exact bids for the selected " + number + (type == "A" ? " Ads" : " Keywords/Targets") + "?",
		function()
		{
			showSpinner("spinL");
			$.ajax({
				url: "ajax/removeExactBids.php",
				data: {
					"camp": $('#ddlCampaign').val(),
					"type": type,
					"id": ids
				},
				type: "POST",
				success: function(response, textStatus, xhr)
				{
					ajaxLoadExactBids();
				},
				complete: function(xhr,status)
				{
				}
			});
		}
	);
}

function removePredefPages(type) {
	var ids = '';
	var number = 0;
	$(".chkcolT:checked").each(function() {
		ids += $(this).attr('id').replace("chkT","") + ',';
		number++;
	});
	if (ids == '')
		return;

	confirm("Are you sure you want to remove the selected " + number + (type == "L" ? " Landing Pages" : " Offers") + "?",
		function()
		{
			$('#hidRemovePages').val(ids);
			$("#btnRemove_x").click();
		}
	);
}

function ajaxLoadSpecificPostbacks(offerSourceIDs) {
	$.ajax({
		url: "ajax/getSpecificPostbacks.php",
		data: {
			"ids": offerSourceIDs,
			"root": $("#ddlTrackingDomains").val()
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$("#divSpecificPostbacks").html(response);
			initializeTooltips();
			initializeCopyToClipboard();
			initializeQrCode();
		}
	});
}

function ajaxLoadSpecificTsPostback() {
	$.ajax({
		url: "ajax/getSpecificTsPostback.php",
		data: {
			"name": $("#txtSource").val(),
			"root": $("#ddlTrackingDomains").val(),
			"apidata": $("#hidApiData").val()
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$("#divSpecificTsPostback").html(response);
			initializeTooltips();
			initializeCopyToClipboard();
			initializeQrCode();
		}
	});
}

function ajaxLoadLpProtectCode() {
	if (!$('#chkUseLpProtect').prop("checked"))
	{
		$('#txtLpProtectCode').html("");
		return;
	}
	showSpinner('spinlpp');
	$('#txtLpProtectCode').html("");
	$.ajax({
		url: "ajax/getLpProtect.php",
		data: {
			"key": $("#txtLpProtectKey").val(),
			"param": $("#txtLpProtectParameter").val(),
			"type": $("#radLpProtectRedirect").prop("checked") ? 2 : ($("#radLpProtectPage").prop("checked") ? 3 : 1),
			"mess": $("#txtLpProtectMessage").val(),
			"redir": $("#txtLpProtectRedirect").val()
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$("#txtLpProtectCode").html(response);
		},
		complete: function(xhr, status)
		{
			hideSpinner('spinlpp');
		}
	});
}

function ajaxGenerateLPRedirectorCode() {
	$('#divResultR').hide();
	showSpinner('spinr');
	$.ajax({
		url: "ajax/mvRedirectCode.php",
		data: {
			"camp": $("#ddlCampaignsRedirect").val(),
			"passid": $("#chkPassPageID").prop("checked") ? 1 : 0,
			"paramid": $("#txtParamPageID").val(),
			"passparams": $("#chkPassParameters").prop("checked") ? 1 : 0
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$("#txtGeneratedRedirectCode").html(response);
		},
		complete: function(xhr, status)
		{
			$('#divResultR').show();
			hideSpinner('spinr');
		}
	});
}

function ajaxGenerateMVCode() {
	$('#divResultG').hide();
	showSpinner('sping');
	var datastring = $("#Form1").serialize();
	$.ajax({
		url: "ajax/mvGenerateCode.php",
		data: datastring,
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$("#txtGeneratedCode").html(response);
		},
		complete: function(xhr, status)
		{
			$('#divResultG').show();
			hideSpinner('sping');
		}
	});
}

function ajaxEmailCheck()
{
	showSpinner("spnec");
	$.ajax({
		url: "ajax/emailCheck.php",
		data: {
			"to": $('#txtRecipient').val(),
			"host": $('#txtMailHost').val(),
			"port": $('#txtMailPort').val(),
			"trns": $('#txtMailTransport').val(),
			"user": $('#txtMailUsername').val(),
			"pass": $('#txtMailPassword').val(),
			"name": $('#txtMailFromName').val(),
			"email": $('#txtMailFromEmail').val(),
			"html": $('#txtMailSendHtml').prop("checked") ? 1 : 0,
			"auth": $('#txtMailSMTPAuth').prop("checked") ? 1 : 0,
			"issm": $('#txtMailIsSMTPFeature').prop("checked") ? 1 : 0
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{            
			$('#txtCheckEmailResult').val(response['message']);
		},
		complete: function(xhr,status)
		{
			hideSpinner("spnec");
		}
	});
}

function ajaxLoadDashCampaigns() {
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	//return;
	showChartPlaceholder("spnCampaigns", "tblCampaigns");
	showChartSpinner("spnChartCampaigns", "chartCampaigns");
	showChartPlaceholder("spnComplete", "tblComplete");
	//return;
	
	$.ajax({
		url: "ajax/dashCampaignSource.php",
		data: {
			"sort": $('.btnsort.active').html(),
			"dir": $('.btndir.active').html(),
			"where" : $('#hidIntervalWhereClause').val(),
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0'
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response!='')
			{
				var sections = response.split("<!!!!>");
				
				$('#tblCampaigns').html(sections.length > 0 ? sections[0] : '');
				$('#tblTrafficSources').html(sections.length > 1 ? sections[1] : '');
				$('#tblComplete').html(sections.length > 2 ? sections[2] : '');
				$('#divHiddens').html(sections.length > 3 ? sections[3] : '');
				ajaxDashShowTableCampaignSource();
				ajaxDashLoadCampaignsChart();
			}
			hideChartPlaceholder("spnCampaigns");
			hideChartSpinner("spnChartCampaigns");
			hideChartPlaceholder("spnComplete");
		}
	});
}

function ajaxLoadDashCountries() {
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	//return;
	showChartPlaceholder("spnCountries", "tblCountries");
	//return;
	
	$.ajax({
		url: "ajax/dashCountry.php",
		data: {
			"sort": $('.btnsort.active').html(),
			"dir": $('.btndir.active').html(),
			"where" : $('#hidIntervalWhereClause').val(),
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0'
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response!='')
			{
				$('#tblCountries').html(response);
				ajaxDashShowTableCountry();
			}
			hideChartPlaceholder("spnCountries");
		}
	});
}

function ajaxLoadDashLanding() {
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	//return;
	showChartPlaceholder("spnLanding", "tblLanding");
	//return;
	
	$.ajax({
		url: "ajax/dashLanding.php",
		data: {
			"sort": $('.btnsort.active').html(),
			"dir": $('.btndir.active').html(),
			"where" : $('#hidIntervalWhereClause').val(),
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0'
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response!='')
			{
				$('#tblLanding').html(response);
				ajaxDashShowTableLanding();
			}
			hideChartPlaceholder("spnLanding");
		}
	});
}

function ajaxLoadDashOffer() {
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	//return;
	showChartPlaceholder("spnOffer", "tblOffer");
	//return;
	
	$.ajax({
		url: "ajax/dashOffer.php",
		data: {
			"sort": $('.btnsort.active').html(),
			"dir": $('.btndir.active').html(),
			"where" : $('#hidIntervalWhereClause').val(),
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0'
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response!='')
			{
				$('#tblOffer').html(response);
				ajaxDashShowTableOffer();
			}
			hideChartPlaceholder("spnOffer");
		}
	});
}

function ajaxLoadDashDeviceType() {
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	//return;
	showChartSpinner("spnDeviceType", "tblDeviceType");
	//return;
	
	$.ajax({
		url: "ajax/dashDeviceType.php",
		data: {
			"where" : $('#hidIntervalWhereClause').val(),
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0'
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response!='')
			{
				$('#tblDeviceType').html(response);
			}
			hideChartSpinner("spnDeviceType");
		}
	});
}

function ajaxLoadDashBrowser() {
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	//return;
	showChartSpinner("spnBrowser", "tblBrowser");
	//return;
	
	$.ajax({
		url: "ajax/dashBrowser.php",
		data: {
			"where" : $('#hidIntervalWhereClause').val(),
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0'
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response!='')
			{
				$('#tblBrowser').html(response);
			}
			hideChartSpinner("spnBrowser");
		}
	});
}

function ajaxLoadDashOperatingSystem() {
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	//return;
	showChartSpinner("spnOperatingSystem", "tblOperatingSystem");
	//return;
	
	$.ajax({
		url: "ajax/dashOperatingSystem.php",
		data: {
			"where" : $('#hidIntervalWhereClause').val(),
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0'
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response!='')
			{
				$('#tblOperatingSystem').html(response);
			}
			hideChartSpinner("spnOperatingSystem");
		}
	});
}

function ajaxLoadDashCampaignsData() {
	$.ajax({
		url: "ajax/dashOverview.php",
		data: {
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0',
			"where" : $('#hidWhereClauseChart').val()
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$.each(response, function(key, value)
			{
				$("#cmp" + key).html(value);
			});
		}
	});
}



function ajaxDashShowTableCampaignSource()
{
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	$('[id*="tblDash_Campaign_"]').hide();
	$('[id*="tblDash_TrafficSources_"]').hide();
	$('[id*="tblDash_Complete_"]').hide();
	$('#tblDash_Campaign_' + $('.btnsort.active').html() + "_" + $('.btndir.active').html()).show();
	$('#tblDash_TrafficSources_' + $('.btnsort.active').html() + "_" + $('.btndir.active').html()).show();
	$('#tblDash_Complete_' + $('.btnsort.active').html() + "_" + $('.btndir.active').html()).show();
}

function ajaxDashShowTableCountry()
{
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	$('[id*="tblDash_Country_"]').hide();
	$('#tblDash_Country_' + $('.btnsort.active').html() + "_" + $('.btndir.active').html()).show();
}

function ajaxDashShowTableLanding()
{
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	$('[id*="tblDash_Landing_"]').hide();
	$('#tblDash_Landing_' + $('.btnsort.active').html() + "_" + $('.btndir.active').html()).show();
}

function ajaxDashShowTableOffer()
{
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	$('[id*="tblDash_Offer_"]').hide();
	$('#tblDash_Offer_' + $('.btnsort.active').html() + "_" + $('.btndir.active').html()).show();
}

function ajaxDashLoadCampaignsChart()
{
	//console.log($('.btnsort.active').html() + '-' + $('.btndir.active').html());
	LoadDashboardCampaignsChart($('.btnsort.active').html(), $('.btndir.active').html());
}

function ajaxDashShowTable()
{
	ajaxDashShowTableCampaignSource();
	ajaxDashShowTableCountry();
	ajaxDashShowTableLanding();
	ajaxDashShowTableOffer();
	ajaxDashLoadCampaignsChart();
}

function ajaxLoadApiIntegrationDetails(integrationID) {
	$('#divModalIntegrationDetails').html("");
	//showSpinner('sping');
	$.ajax({
		url: "ajax/apiIntegrationDetails.php",
		data: {
			"id": integrationID,
		},
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$("#divModalIntegrationDetails").html(response);
		},
		complete: function(xhr, status)
		{
			//hideSpinner('sping');
		}
	});
}
function ajaxSaveQkCampaignSetup(stepID, exitSetup) {
	var datastring = $("#Form1").serialize() + "&stepid=" + stepID;
	$.ajax({
		url: "ajax/saveQkCampaignSetup.php",
		data: datastring,
        dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			//data = JSON.parse(response['pageids']);
			//console.log(data);
			if (response['pageids'] != null)
			{
				for(i=0; i<response['pageids'].length; i++)
				{
					//console.log(response['pageids'][i]['elem'] + " - " + response['pageids'][i]['id']);
					$("#" + response['pageids'][i]['elem']).val(response['pageids'][i]['id']);
				}
			}
			return true;
		},
		complete: function(xhr, status)
		{
			if (exitSetup)
			{
				document.location.href="campaigns.php";
			}
			return true;
		}
	});
}



function ajaxTestCustomDomains(e) {
	var validateDomain =  validateName('txtCustomDomain', 'Custom Domains');
	if (!validateDomain)
	{
		return false;
	}
    e.preventDefault();
	TestCustomDomain($('#txtCustomDomain').val());
}

function ajaxTestCustomDomainTable(objectid, object) {
	var domainName=$(object).closest('tr').children('td:first').text();
	TestCustomDomain(domainName);
}

function TestCustomDomain(domainName)
{
	$('#divTestCustomDomain').html("");
	$('#mdlTestCustomDomains').modal("show");
    showSpinner("spnec");
    $.ajax({
        url: "ajax/customdomain-checkstatus.php",
        data: {
            "domain": domainName,
        },
        dataType: "json",
        type: "POST",
        success: function (response, textStatus, xhr) {
            $('#divTestCustomDomain').html(response['message']);
        },
        complete: function (xhr, status) {
            hideSpinner("spnec");
        }
    });
}

function ajaxSetCurrentTab(tab) {
    $.ajax({
        url: "ajax/setCurrentTab.php",
        data: {
            "currentTab": tab,
        },
        type: "POST"
    });
}

function ajaxGetEditGroup(id) {
	$(".page-title").get(0).scrollIntoView({behavior: 'smooth'});
    showSpinner("spinG");
    $.ajax({
        url: "ajax/groups/getEditGroup.php",
        data: {
            "id": id
        },
        method: 'POST',
        success: function (data) {
            data = JSON.parse(data);

            $('#txtGroup').val(data[0]).focus();

            $('#saveButtons').hide();
            $('#editButtons').show();
        },
        error: function () {
            alert('Error retrieving data');
        },
        complete: function (xhr, status) {
            hideSpinner("spinG");
        }
    });
}

function ajaxSaveEditGroup(id, row) {
    showSpinner("spinG");
    $.ajax({
        url: "ajax/groups/saveEditGroup.php",
        data: {
            "id": id,
            "txtGroup": $('#txtGroup').val(),
        },
        method: 'POST',
        success: function (data) {
            data = JSON.parse(data);

            $('#txtGroup').val('');

            row.find('td:eq(0)').text(data.name);

            $('#saveButtons').show();
            $('#editButtons').hide();

            if (data.errorMessageType && data.errorMessageType == 1) {
                $('.alert').addClass('alert-danger');
                $('.alert').removeClass('alert-success');
                $('.alert').removeClass('alert-hidden');
                $('.alert').empty();
                $('.alert').append(data.errorMessage);

                setInterval(() => {
                    $('.alert').addClass('alert-hidden');
                }, 3000);
            } else {
                $('.alert').addClass('alert-success');
                $('.alert').removeClass('alert-hidden');
                $('.alert').empty();
                $('.alert').append(data.errorMessage);

                setInterval(() => {
                    $('.alert').addClass('alert-hidden');
                }, 3000);
            }
        },
        complete: function (xhr, status) {
            hideSpinner("spinG");
        }
    });
}

function ajaxSetObjectActiveState(objtype, objid, state)
{
    showSpinner("spinL");

	$.ajax({
		url: 'ajax/saveActiveControlState.php',
		type: 'POST',
		data: {
			"type": objtype,
			"inactive": state ? 0 : 1,
			"id": objid
		},
        complete: function (xhr, status) {
            hideSpinner("spinL");
        }
	});
}

function ajaxCheckCustomDomains()
{
	customDomainIDs = [];
	$('span[id^="spnSSL"]').each(function() {
		customDomainIDs.push($(this).attr('id').replace("spnSSL",""));
	});
	//console.log(customDomainIDs);

	if (customDomainIDs.length > 0)
	{
		ajaxCheckCustomDomain();
	}
}

function ajaxCheckCustomDomain() {
    
	var objectID = customDomainIDs[0];
	var objectName=$('#spnSSL' + objectID).closest('tr').children('td:first').text();
	customDomainIDs = customDomainIDs.splice(1,customDomainIDs.length-1);

	//console.log("Started request for id=" + objectID + "(" + objectName + ")");
	$.ajax({
		url: "ajax/checkCustomDomain.php",
		data: { 
			"id": objectID,
			"name": objectName,
			"cldvrs": $('#hidCldvrs').val()
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			//console.log("Finished request for id=" + objectID + " (" + objectName + ") with status " + response);
			//$('#spnDNS' + objectID).attr("class", "badge badge-" + (response["DnsStatus"] == 1 ? "success" : "danger") + " badge-pill");
			//$('#spnDNS' + objectID).html(response["DnsStatus"] == 1 ? "OK" : "Error");
			$('#spnDNS' + objectID).html(response["DnsMessage"]);

			//$('#spnSSL' + objectID).attr("class", "badge badge-" + (response["SslStatus"] == 1 ? "success" : "danger") + " badge-pill");
			//$('#spnSSL' + objectID).html(response["SslStatus"] == 1 ? "OK" : "Error");
			$('#spnSSL' + objectID).html(response["SslMessage"]);

			initializeTooltips();
		},
		complete: function(xhr,status)
		{
			if (customDomainIDs.length > 0)
			{
				ajaxCheckCustomDomain();
			}
		}
	});
}

function ajaxCheckSingleCustomDomain(objectID) {
    
	var objectName=$('#spnSSL' + objectID).closest('tr').children('td:first').text();

	//console.log("Started request for id=" + objectID + "(" + objectName + ")");
	$.ajax({
		url: "ajax/checkCustomDomain.php",
		data: { 
			"id": objectID,
			"name": objectName,
			"cldvrs": $('#hidCldvrs').val()
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			$('#spnDNS' + objectID).html(response["DnsMessage"]);
			$('#spnSSL' + objectID).html(response["SslMessage"]);

			initializeTooltips();

			if (typeof countInsertDomain !== 'undefined')
			{
				countInsertDomain++;
				if (typeof intervalInsertDomain !== 'undefined' &&  countInsertDomain >= 10)
				{
					clearInterval(intervalInsertDomain);
				}
			}
		},
	});
}

var countInsertDomain = 0;
var intervalInsertDomain;
function SetIntervalForCustomDomain(customDomainID)
{
	intervalInsertDomain = setInterval(ajaxCheckSingleCustomDomain, 30000, customDomainID); 
}

function ajaxCheckIntermediateHop() 
{
	$.ajax({
		url: "ajax/checkIntermediateHop.php",
		data: { 
			"hop": $('#txtIntermediateHopUrl').val()
		},
		dataType: "json",
		type: "POST",
		success: function(response, textStatus, xhr)
		{
			if (response["result"] == 'success')
			{
				$('#hidIntermediateHopCheck').val("1");
				$('#spnIntermediateHopCheck').html("");
				updateCampaignLinks();
			}
			else
			{
				$('#hidIntermediateHopCheck').val("0");
				$('#spnIntermediateHopCheck').html(response["message"]);
			}
		},
	});
}

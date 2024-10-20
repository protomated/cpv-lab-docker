// @package     CPV Lab Pro
// @copyright   (C) Uptechvision Solutions. All rights reserved.
// @link        https://cpvlab.pro

function replaceAllInString(str, replaceFrom, replaceTo)
{
	const searchRegExp = new RegExp(replaceFrom, 'g'); 
	return str.replace(searchRegExp, replaceTo);
}
function $get(object) {
	return document.getElementById(object);
}

function getValue(objectID)
{
	return $(objectID).val();
}

function scrollToTop() {
	$('html, body').animate({
		scrollTop: 0
	}, 'slow');
}

function ShowPopUp(id) {
$('#' + id).fadeIn(700);
}

function HidePopUp(id) {
$('#' + id).fadeOut(700);
}

function onMouseOut(event) {
	//this is the original element the event handler was assigned to
		e = event.toElement || event.relatedTarget;
		if (e.parentNode == this || e.parentNode.parentNode == this || e == this) {
		   return;
		}
	HidePopUp(event.target.id);
	return false;
}

function InitializeCallsNewPage()
{
	clickBlankPages();
	initializeOverlayTokens();
	initializeTooltips();
	initializeModalDirectTrafficCode();
	initializeModalPostbackUrl();
}

function InitializeCallsNewPageQk()
{
	initializeTooltips();
	initializeModalDirectTrafficCode();
	initializeModalPostbackUrl();
}

function checkCampaignName()
{
	if ($("#txtName").length > 0 && $.trim($("#txtName").val())=='')
	{
		alert('Enter a Campaign Name before Saving the Campaign.');
		return false;
	}
	return true;
}

function checkValidIntermediateHop()
{
	return ($('#chkCertifiedDomain').prop("checked") && $('#hidIntermediateHopCheck').val() == 0) ? false : true;
}


function checkUrls(suffix, count, message, checkTotalUrls)
{
	var checkTotalUrlsValue = typeof checkTotalUrls !== 'undefined' ? checkTotalUrls : false;
	var totalUrls = 0;
	for(i=0; i<count; i++)
	{
		var pageControl = $('#txtPageName' + suffix + i);
		var urlControl = $('#txtPageUrl' + suffix + i);
		if (pageControl.length > 0 && urlControl.length > 0 && $.trim(pageControl.val()) != '' && $.trim(urlControl.val()) == '')
		{
			alert('Please enter an URL for ' + message + ' ' + (i + 1));
			return false;
		}
		if (pageControl.length > 0 && urlControl.length > 0 && $.trim(pageControl.val()) != '' && $.trim(urlControl.val()) != '')
		{
			totalUrls++;
		}
	}
	if (checkTotalUrlsValue && totalUrls == 0)
	{
		alert('You need to define at least one ' + message + '!');
		return false;
	}
	return true;
}

function sumShares(suffix, destinationToShow, message, checkTotalUrls)
{
	var checkTotalUrlsValue = typeof checkTotalUrls !== 'undefined' ? checkTotalUrls : false;
	var totalShare = 0;
	var totalUrls = false;
	for (i=0; i<destinationToShow; i++)
	{
		var currentUrlControl = $get('txtPageUrl' + suffix + i);
		var currentShareControl = $get('txtShare' + suffix + i);
		var currentInactiveControl = $get('chkInactive' + suffix + i);
		if (currentUrlControl!=null && trim(currentUrlControl.value)!='' && currentShareControl!=null && currentInactiveControl!=null && currentInactiveControl.checked)
			totalShare += (+currentShareControl.value);
		if (!totalUrls && currentUrlControl!=null && trim(currentUrlControl.value)!='' && currentInactiveControl!=null && currentInactiveControl.checked)
			totalUrls = true;
	}
	if ((!checkTotalUrlsValue || totalUrls) && totalShare != 100)
	{
		alert('Current total share for ' + message + ' is ' + totalShare + ' and should be 100. Please fix this!');
		return false;
	}
	return true;
}

function checkSharesDirectLink()
{
	if (!checkCampaignName())
		return false;
	var hidDestinationToShow = $get("hidDestinationToShow");
	var destinationToShow = hidDestinationToShow.value;
	var hidOffersToShow = $get("hidOffersToShow");
	var offersToShow = hidOffersToShow.value;
	var hidDestinationIndex = $get("hidDestinationIndex");
	var destinationIndex = hidDestinationIndex.value;
	
	if (destinationIndex!=2 && !checkUrls('LP', destinationToShow, 'Landing Page', true))
		return false;
	if (!checkUrls('Offer', offersToShow, 'Offer', true))
		return false;
	
	if (destinationIndex!=2 && !sumShares('LP', destinationToShow, 'Landing Pages'))
		return false;
	if (!sumShares('Offer', offersToShow, 'Offers'))
		return false;
	if (!checkValidIntermediateHop())
	{
		alert('The Intermediate Hop URL is not valid! Please make sure that a certified URL is used in the Hop URL.');
		return false;
	}
	encodeTextareaFields(true);
	$('#ddlTrackingDomains').prop("disabled", false);
	return true;
}

function checkSharesMultipleOptions()
{
	if (!checkCampaignName())
		return false;
	var hidDestinationToShow = $get("hidDestinationToShow");
	var destinationToShow = hidDestinationToShow.value;
	var hidOffersToShow = $get("hidOffersToShow");
	var offersToShow = hidOffersToShow.value;
	var hidPathsToShow = $get("hidPathsToShow");
	var pathsToShow = hidPathsToShow.value;
	
	if (!checkUrls('LP', destinationToShow, 'Landing Page', true))
		return false;
	for (j=0;j<pathsToShow;j++)
		if (!checkUrls('Offer' + j + '_', offersToShow, 'Option ' + (j+1) + ' Offer', j==0))
			return false;

	if (!sumShares('LP', destinationToShow, 'Landing Pages'))
		return false;
	for (j=0; j<pathsToShow; j++)
	{
		if (!sumShares('Offer' + j + '_', offersToShow, 'Option ' + (j+1) + ' Offers', true))
			return false;
	}
	encodeTextareaFields(true);
	return true;
}

function checkSharesMultiplePaths()
{
	if (!checkCampaignName())
		return false;
	var hidDestinationToShow = $get("hidDestinationToShow");
	var destinationToShow = hidDestinationToShow.value;
	var hidOffersToShow = $get("hidOffersToShow");
	var offersToShow = hidOffersToShow.value;
	var hidPathsToShow = $get("hidPathsToShow");
	var pathsToShow = hidPathsToShow.value;
	
	for (j=0;j<pathsToShow;j++)
		if (!checkUrls('LP' + j + '_', destinationToShow, 'Path ' + (j+1) + ' Landing Page', j==0))
			return false;
	for (j=0;j<pathsToShow;j++)
		if (!checkUrls('Offer' + j + '_', offersToShow, 'Path ' + (j+1) + ' Offer', j==0))
			return false;
	
	var totalShare = 0;
	for (j=0; j<pathsToShow; j++)
	{
		var currentShareControl = $get('txtSharePath' + j);
		if (currentShareControl!=null)
			totalShare += (+currentShareControl.value);
	}
	if (totalShare != 100)
	{
		alert('Current total share for Paths is ' + totalShare + ' and should be 100. Please fix this!');
		return false;
	}
	for (j=0; j<pathsToShow; j++)
	{
		if (!sumShares('LP' + j + '_', destinationToShow, 'Path ' + (j+1) + ' Landing Pages', true))
			return false;
	}
	for (j=0; j<pathsToShow; j++)
	{
		if (!sumShares('Offer' + j + '_', offersToShow, 'Path ' + (j+1) + ' Offers', true))
			return false;
	}
	encodeTextareaFields(true);
	return true;
}

function checkSharesPageSequence()
{
	if (!checkCampaignName())
		return false;
	var hidDestinationToShow = $get("hidDestinationToShow");
	var destinationToShow = hidDestinationToShow.value;
	var hidOffersToShow = $get("hidOffersToShow");
	var offersToShow = hidOffersToShow.value;
	var hidPathsToShow = $get("hidPathsToShow");
	var pathsToShow = hidPathsToShow.value;
	var hidOptionsToShow = $get("hidOptionsToShow");
	var optionsToShow = hidOptionsToShow.value;
	var hidDestinationIndex = $get("hidDestinationIndex");
	var destinationIndex = hidDestinationIndex.value;
	var hidTrackingIndex = $get("hidTrackingIndex");
	var trackingIndex = hidTrackingIndex.value;
	
	for (j=0;j<pathsToShow;j++)
		if (!checkUrls('LP' + j + '_', destinationToShow, 'Level ' + (j+1) + ' Landing Page', j==0))
			return false;
	
	if (destinationIndex!=4 || trackingIndex!=3)
	{
		for (j=0; j<optionsToShow; j++)
		{
			if (!checkUrls('Offer' + j + '_', offersToShow, 'Offer', j==0))
				return false;
		}
	}

	for (j=0; j<pathsToShow; j++)
	{
		if (!sumShares('LP' + j + '_', destinationToShow, 'Level ' + (j+1), true))
			return false;
	}
	if (destinationIndex==4 && trackingIndex==1)
	{
		if (!checkUrls('After', destinationToShow, 'After Opt-In', true))
			return false;
		if (!sumShares('After', destinationToShow, 'After Opt-In pages'))
			return false;
	}
	if (destinationIndex!=4 || trackingIndex!=3)
	{
		for (j=0; j<optionsToShow; j++)
		{
			if (!sumShares('Offer' + j + '_', offersToShow, 'Option ' + (j+1) + ' Offers', j==0 ? false : true))
				return false;
		}
	}
	encodeTextareaFields(true);
	return true;
}

function checkSharesLeadCapture()
{
	if (!checkCampaignName())
		return false;
	var hidDestinationToShow = $get("hidDestinationToShow");
	var destinationToShow = hidDestinationToShow.value;
	var hidOffersToShow = $get("hidOffersToShow");
	var offersToShow = hidOffersToShow.value;
	var hidTrackingIndex = $get("hidTrackingIndex");
	var trackingIndex = hidTrackingIndex.value;
	
	if (!checkUrls('LP', destinationToShow, 'Landing Page', true))
		return false;
	if (trackingIndex==1 && !checkUrls('After', destinationToShow, 'After Opt-In', true))
		return false;
	if (trackingIndex!=4 && !checkUrls('Offer', offersToShow, 'Offer', true))
		return false;
	
	if (!sumShares('LP', destinationToShow, 'Landing Pages'))
		return false;
	if (trackingIndex==1 && !sumShares('After', destinationToShow, 'After Opt-In pages'))
		return false;
	if (trackingIndex!=4 && !sumShares('Offer', offersToShow, 'Offers'))
		return false;
	encodeTextareaFields(true);
	return true;
}

function checkSharesEmailFollowUp()
{
	if (!checkCampaignName())
		return false;
	var hidDestinationToShow = $get("hidDestinationToShow");
	var destinationToShow = hidDestinationToShow.value;
	var hidOffersToShow = $get("hidOffersToShow");
	var offersToShow = hidOffersToShow.value;
	var hidPathsToShow = $get("hidPathsToShow");
	var pathsToShow = hidPathsToShow.value;
	var hidDestinationIndex = $get("hidDestinationIndex");
	var destinationIndex = hidDestinationIndex.value;
	if (destinationIndex==1)
	{
		for (j=0;j<pathsToShow;j++)
			if (!checkUrls('LP' + j + '_', destinationToShow, 'Email ' + (j+1) + ' Landing Page', j==0))
				return false;
	}
	for (j=0;j<pathsToShow;j++)
		if (!checkUrls('Offer' + j + '_', offersToShow, 'Email ' + (j+1) + ' Offer', j==0))
			return false;

	if (destinationIndex==1)
	{
		for (j=0; j<pathsToShow; j++)
		{
			if (!sumShares('LP' + j + '_', destinationToShow, 'Email ' + (j+1) + ' Landing Pages', true))
				return false;
		}
	}
	for (j=0; j<pathsToShow; j++)
	{
		if (!sumShares('Offer' + j + '_', offersToShow, 'Email ' + (j+1) + ' Offers', true))
			return false;
	}
	encodeTextareaFields(true);
	return true;
}

function encodeTextareaFields(removeValues)
{
	//var lpProtectCode = $('#txtLpProtectCode').val();
	//$('#hidLpProtectCode').val(b64EncodeUnicode(lpProtectCode));
	if (removeValues)
		$('#txtLpProtectCode').val('');
	
	var txtPostbackUrl = $('#txtPostbackUrl').val();
	$('#hidPostbackUrl').val(b64EncodeUnicode(txtPostbackUrl));
	if (removeValues)
		$('#txtPostbackUrl').val('');
	
	var additionalPixelNumber = $("#hidPixelsToShow").val();
	for (i=0; i<additionalPixelNumber; i++)
	{
		var txtPostbackUrl = $('#txtTrackingCode' + i).val();
		$('#hidTrackingCode' + i).val(b64EncodeUnicode(txtPostbackUrl));
		if (removeValues)
			$('#txtTrackingCode' + i).val('');
	}
	
	var txtPostbackUrl = $('#txtNotes').val();
	$('#hidNotes').val(b64EncodeUnicode(txtPostbackUrl));
	if (removeValues)
		$('#txtNotes').val('');
}

function b64EncodeUnicode(str) {
    // first we use encodeURIComponent to get percent-encoded UTF-8,
    // then we convert the percent encodings into raw bytes which
    // can be fed into btoa.
    return btoa(encodeURIComponent(str).replace(/%([0-9A-F]{2})/g,
        function toSolidBytes(match, p1) {
            return String.fromCharCode('0x' + p1);
    }));
}

function evenShares(suffix)
{
	var hidDestinationToShow = $get(suffix.indexOf('Offer') >= 0 ? 'hidOffersToShow' : 'hidDestinationToShow');
	var totalControls=hidDestinationToShow.value;
	var addShare=new Array();
	var removeShare=new Array();
	for (i=0; i<totalControls; i++)
	{
		var control = $get('txtPageUrl' + suffix + i);
		var controlShare = 'txtShare' + suffix + i;
		var controlInactive = $get('chkInactive' + suffix + i);
		if (control!=null)
		{
			if (control.value!='' && (controlInactive == null || controlInactive.checked))
			{
				addShare[addShare.length] = controlShare;
			}
			else
			{
				removeShare[removeShare.length] = controlShare;
			}
		}
	}
	var mainShare= Math.round(100 / addShare.length);
	for(i=0; i<addShare.length; i++)
	{
		if (i==addShare.length-1)
			currentShare = 100 - (addShare.length-1) * mainShare;
		else
			currentShare = mainShare;
		$get(addShare[i]).value = currentShare;
	}
	for(i=0;i<removeShare.length; i++)
		$get(removeShare[i]).value=0;
}

function clickInactiveLP(senderChk, suffix)
{
	senderChecked = !senderChk;
	var isPredefChecked = $('#ddlPredef' + suffix).val() != 0;
	var isQuickSetupPage = $('#isQkPage').length > 0;
	var txtPageName = $get('txtPageName' + suffix);
	var txtPageID = $get('txtPageID' + suffix);
	var txtPageUrl = $get('txtPageUrl' + suffix);
	var txtShare = $get('txtShare' + suffix);
	txtShare.readOnly = senderChecked;
	//console.log((senderChecked ? 1 : 0) + " - " + (isPredefChecked ? 1 : 0) + " - " + (isQuickSetupPage ? 1 : 0));
	if (senderChecked || (isPredefChecked && !isQuickSetupPage))
	{
		$(txtPageName).addClass("inactiveInput");
		$(txtPageID).addClass("inactiveInput");
		$(txtPageUrl).addClass("inactiveInput");
		$(txtShare).addClass("inactiveInput");
	}
	else
	{
		$(txtPageName).removeClass("inactiveInput");
		$(txtPageID).removeClass("inactiveInput");
		$(txtPageUrl).removeClass("inactiveInput");
		$(txtShare).removeClass("inactiveInput");
	}
	if (senderChecked)
	{
		$(txtShare).addClass("inactiveInput");
		txtShare.value = 0;
	}
	else
	{
		$(txtShare).removeClass("inactiveInput");
	}
}

function clickInactiveOffer(isInactiveChk, suffix)
{
	isInactiveChecked = !isInactiveChk;
	var isPredefChecked = $('#ddlPredefOffer' + suffix).val() != 0;
	var isQuickSetupPage = $('#isQkPage').length > 0;
	var txtPageNameOffer = $get('txtPageNameOffer' + suffix);
	var txtPayout = $get('txtPayout' + suffix);
	var txtPageUrlOffer = $get('txtPageUrlOffer' + suffix);
	var txtShareOffer = $get('txtShareOffer' + suffix);
	var ddlNetwork = $get('ddlNetwork' + suffix);
	var txtPageIDOffer = $get('txtPageIDOffer' + suffix);
	if (txtPageIDOffer == null)
		txtPageIDOffer = txtShareOffer;
	txtShareOffer.readOnly = isInactiveChecked;
	if (isInactiveChecked || (isPredefChecked && !isQuickSetupPage))
	{
		$(txtPageNameOffer).addClass("inactiveInput");
		$(txtPageIDOffer).addClass("inactiveInput");
		$(txtPayout).addClass("inactiveInput");
		$(txtPageUrlOffer).addClass("inactiveInput");
		$(ddlNetwork).addClass("inactiveInput");
	}
	else
	{
		$(txtPageNameOffer).removeClass("inactiveInput");
		$(txtPageIDOffer).removeClass("inactiveInput");
		$(txtPayout).removeClass("inactiveInput");
		$(txtPageUrlOffer).removeClass("inactiveInput");
		$(ddlNetwork).removeClass("inactiveInput");
	}
	if (isInactiveChecked)
	{
		$(txtShareOffer).addClass("inactiveInput");
		txtShareOffer.value = 0;
	}
	else
	{
		$(txtShareOffer).removeClass("inactiveInput");
	}
}

function clickInactiveLPAll(count, suffix)
{
	for (i=0; i<count; i++)
	{
		var chkInactive = $get('chkInactive' + suffix + i);
		if (chkInactive != null)
			clickInactiveLP(chkInactive.checked, suffix + i);
	}
}

function clickInactiveOfferAll(count, suffix)
{
	for (i=0; i<count; i++)
	{
		var chkInactiveOffer = $get('chkInactiveOffer' + suffix + i);
		if (chkInactiveOffer != null)
			clickInactiveOffer(chkInactiveOffer.checked, suffix + i);
	}
}

function clickDeleteLP(suffix)
{
	$('#dlp' + suffix.replace("LP","")).fadeOut().addClass("deletedpage");
	$('#txtPageName' + suffix).val("");
	$('#txtPageUrl' + suffix).val("");
	$('#txtShare' + suffix).val('0');
}

function clickDeleteAfter(suffix)
{
	$('#dao' + suffix.replace("After","")).fadeOut().addClass("deletedpage");
	$('#txtPageName' + suffix).val("");
	$('#txtPageUrl' + suffix).val("");
	$('#txtShare' + suffix).val('0');
}

function clickDeleteOffer(suffix)
{
	$('#dof' + suffix.replace("Offer","")).fadeOut().addClass("deletedpage");
	$('#txtPageName' + suffix).val("");
	$('#txtPayout' + suffix.replace("Offer","")).val("");
	$('#txtPageUrl' + suffix).val("");
	$('#txtShare' + suffix).val("");
}

function hideBlankPagesAll(count, controlSuffix, suffix, divName)
{
    var chkHideControl = $get('chkBlankPages');
    if (chkHideControl == null)
        return;
    for (i = 0; i < count; i++)
    {
        var containerDiv = $('#' + divName + suffix + i);
		if (containerDiv.hasClass("deletedpage"))
		{
			continue;
		}
        if (chkHideControl.checked)
        {
            var chkInactive = $get('chkInactive' + controlSuffix + suffix + i);
            if (chkInactive != null && !chkInactive.checked)
            {
                containerDiv.slideUp(500);
            }
            else
            {
                var txtName = $("#txtPageName" + controlSuffix + suffix + i).val();
                var txtUrl = $("#txtPageUrl" + controlSuffix + suffix + i).val();
                if (txtName == '' && txtUrl == '')
                {
                    containerDiv.slideUp(500);
                }
            }
        }
        else
            containerDiv.slideDown(500);

    }
}

function updateSpecificPostbacks()
{
	var sourceIDs = [];
	$('select[id^="ddlNetwork"]').not('[id*="ddlNetworktmpSuffixtmpCount"]').each(function() {
		var currentSourceID = $(this).val();
		if (sourceIDs.indexOf(currentSourceID)<0)
			sourceIDs.push(currentSourceID);
	});
	ajaxLoadSpecificPostbacks(sourceIDs.join());
}

function updateSpecificTsPostback()
{
	ajaxLoadSpecificTsPostback();
}

function validateInt(control, minV, maxV, defaultV)
{
	var minValue = typeof minV !== 'undefined' ? minV : null;
	var maxValue = typeof maxV !== 'undefined' ? maxV : null;
	var defaultValue = typeof defaultV !== 'undefined' ? defaultV : null;
	validateNumeric(control, minValue, maxValue, defaultValue, false)
}

function validateFloat(control, minV, maxV)
{
	var minValue = typeof minV !== 'undefined' ? minV : null;
	var maxValue = typeof maxV !== 'undefined' ? maxV : null;
	var defaultValue = typeof defaultV !== 'undefined' ? defaultV : null;
	validateNumeric(control, minValue, maxValue, defaultValue, true)
}

function validateNumeric(control, minValue, maxValue, defaultValue, floatCheck)
{
	var newValue = floatCheck ? parseFloat(control.value) : parseInt(control.value);
	if (minValue!=null && (isNaN(newValue) || newValue < minValue))
		newValue = defaultValue != null ? defaultValue : minValue;
	if (maxValue!=null && (isNaN(newValue) || newValue > maxValue))
		newValue = defaultValue != null ? defaultValue : maxValue;
	control.value = newValue;
}

function validateURL(string)
{
	var control = $('#hidCldvrs');
	var res = control.length > 0 && control.val() == 1 ?
		string.match(/^(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,63}\b(\/)?$/g) :
		string.match(/^(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,63}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)$/g);
	return (res !== null)
  };

function validateCustomDomain(nameControl)
{
	var control = $('#' + nameControl);
	if (control.length > 0 && !validateURL(control.val().trim()))
	{
		toastr.error('Please enter a valid custom domain!', 'Save Error!');
		return false;
	}
	return true;
}

function validateName(nameControl, message)
{
	var control = $get(nameControl);
	if (control != null && control.value == '')
	{
		toastr.error('Please enter a name for the ' + message + '!', 'Save Error!');
		return false;
	}
	return true;
}

function writeCampaignName(control)
{
	var currentIndex = 1;
	var continueLoop = 1;
	while (continueLoop!=0)
	{
		var currentControl = $get('spCamp' + currentIndex);
		if (currentControl == null)
			continueLoop = 0;
		else
			currentControl.innerHTML = control.value;
		currentIndex++;
	}
}

function clickCaptureExtraTokens(control)
{
	control.checked ? $('#divExtraTokens').slideDown(700) : $('#divExtraTokens').slideUp(700);
}

function clickLpProtectType(control)
{
	control.value == 1 ? $('#divLpProtectTypeMessage').slideDown(700) : $('#divLpProtectTypeMessage').hide();
	control.value == 2 ? $('#divLpProtectTypeRedirect').slideDown(700) : $('#divLpProtectTypeRedirect').hide();
	control.value == 3 ? $('#divLpProtectTypeWhitePage').slideDown(700) : $('#divLpProtectTypeWhitePage').hide();
}

function clickCaptureIP()
{
	if ($('#radCaptureIP').length > 0)
	{
		$('#chkCaptureIPEU').prop("disabled", !$('#radCaptureIP').prop("checked"));
		$('#chkCaptureIPCA').prop("disabled", !$('#radCaptureIP').prop("checked"));
		$('#chkCaptureIPEU').iCheck('update');
		$('#chkCaptureIPCA').iCheck('update');
	}
}

function clickUseCertifiedDomain()
{
	if ($('#chkCertifiedDomain').length == 0)
	{
		return;
	}
	if ($('#chkCertifiedDomain').prop("checked"))
	{
		$('#ddlTrackingDomains').val($('#hidCertifiedDomainID').val())
		$('#ddlTrackingDomains').prop("disabled", true);
		$('#radOffer').prop("checked", true)
		clickDestination(2);
		$('#radOffer').prop("disabled", true);
		$('#radLandingPage').prop("disabled", true);
		$('#radSplit').prop("disabled", true);
		$('.minimal-campaigntype').iCheck('update');
		$('#divIntermediateHop').show();
		$('#wdgRedirectProfilesModify').hide();
		$('#wdgRedirectProfilesCurrent').hide();
		//$('#radOffer').click();
	}
	else
	{
		$('#ddlTrackingDomains').prop("disabled", false);
		$('#radOffer').prop("disabled", false);
		$('#radLandingPage').prop("disabled", false);
		$('#radSplit').prop("disabled", false);
		$('.minimal-campaigntype').iCheck('update');
		$('#divIntermediateHop').hide();
		$('#wdgRedirectProfilesModify').show();
		$('#wdgRedirectProfilesCurrent').show();
	}
}

function TrafficSourceIsGoogle()
{
	const selectedTrafficSource = $('#ddlPredefinedSource option:selected').text().toLowerCase();
	return selectedTrafficSource.indexOf("google")>=0 || selectedTrafficSource.indexOf("youtube")>=0;
}

function TrafficSourceIsBing()
{
	const selectedTrafficSource = $('#ddlPredefinedSource option:selected').text().toLowerCase();
	return selectedTrafficSource.indexOf("bing")>=0 || selectedTrafficSource.indexOf("microsoft")>=0;
}

function TrafficSourceIsFacebook()
{
	const selectedTrafficSource = $('#ddlPredefinedSource option:selected').text().toLowerCase();
	return selectedTrafficSource.indexOf("facebook")>=0;
}

function TrafficSourceIsOrganic()
{
	const selectedTrafficSource = $('#ddlPredefinedSource option:selected').text().toLowerCase();
	return selectedTrafficSource.indexOf("organic")>=0;
}

function TrafficSourceIsNoRedirects()
{
	const selectedTrafficSource = $('#ddlPredefinedSource option:selected').text().toLowerCase();
	return selectedTrafficSource.indexOf("google")>=0 || selectedTrafficSource.indexOf("youtube")>=0 ||
		selectedTrafficSource.indexOf("bing")>=0 || selectedTrafficSource.indexOf("microsoft")>=0 ||
		selectedTrafficSource.indexOf("facebook")>=0 || selectedTrafficSource.indexOf("organic")>=0;
}

function updateDestinationUrl()
{
	//check if we have a TS with Parallel Tracking
	const selectedTrafficSource = $('#ddlPredefinedSource option:selected').text();
	var isParallelTrackingTrafficSource = false;
	var isGoogleTrafficSource = false;
	var isGoogleTrackingTemplate = false;
	var trafficSourceDetails = null;
	if (TrafficSourceIsGoogle())
	{
		trafficSourceDetails = {
			"name":"Google Ads", 
			"doclink": 'https://doc.cpvlab.pro/parallel-tracking.html',
			"urlfield": "Final URL",
			"suffixfield": "Final URL Suffix",
		};
		isParallelTrackingTrafficSource = true;
		isGoogleTrafficSource = true;
		isGoogleTrackingTemplate = $('#hidCampaignTypeID').val() == 8 && $('#chkCertifiedDomain').prop("checked");
	}
	else if (TrafficSourceIsBing())
	{
		trafficSourceDetails = {
			"name":"Microsoft (Bing) Ads", 
			"doclink": 'https://doc.cpvlab.pro/parallel-tracking-Bing-Ads.html',
			"urlfield": "Final URL",
			"suffixfield": "Final URL Suffix",
		};
		isParallelTrackingTrafficSource = true;
	}
	else if (TrafficSourceIsFacebook())
	{
		trafficSourceDetails = {
			"name":"Facebook Ads", 
			"doclink": 'https://doc.cpvlab.pro/integrations/facebook-ads-campaigns.html',
			"urlfield": "Website URL",
			"suffixfield": "URL Parameters",
		};
		trafficSourceName = "Facebook Ads";
		trafficSourceDocLink = '';
		isParallelTrackingTrafficSource = true;
	}

	var rootUrl = $("#ddlTrackingDomains").val();
	var campaignID = $("#hidID").val();
	var basePhpPage = $("#hidBasePhpPage").length>0 ? $("#hidBasePhpPage").val() : "base.php";
	var campIdParameter = $("#hidCampIdParameter").length>0 ? $("#hidCampIdParameter").val() : "clpcid";
	var urlValue = rootUrl + basePhpPage + "?c=" + campaignID + "&key=" + $("#hidCampaignKeyCode").val();
	if ($('#chkCertifiedDomain').prop("checked") && isGoogleTrafficSource)
	{
		urlValue += "&redirect_url=" + 
			(($('#txtIntermediateHopUrl').val() != '' && $("#hidIntermediateHopCheck").val() == 1) ? encodeURIComponent($('#txtIntermediateHopUrl').val()).replace("%7Blpurl%7D", "{lpurl+2}").replace("%7Bgclid%7D", "{gclid}") : "{lpurl}");
	}
	//var testUrlValue = urlValue + $("#hidCampaignUrlTestSuffix").val() + "&test=true";
	var urlSuffix = $("#hidCampaignUrlSuffix").val();
	urlSuffix += generateAppendUrl('txtKeywordTokenParam', 'txtKeywordTokenPlace');
	urlSuffix += generateAppendUrl('txtCostTokenParam', 'txtCostTokenPlace');
	urlSuffix += generateAppendUrl('txtUniqueTokenParam', 'txtUniqueTokenPlace');
	urlSuffix += generateAppendUrl('txtAdTokenParam', 'txtAdTokenPlace');
	var GlobalExtraTokensNumber = $('#hidExtraTokensNumber').length>0 ? $('#hidExtraTokensNumber').val() : 15;
	for (i=0; i<=GlobalExtraTokensNumber; i++)
	{
		urlSuffix += generateAppendUrl('txtExtraTokenParam' + i, 'txtExtraTokenPlace' + i);
	}

	var fixedLpSuffix = $('#ddlCampaignUrlLP').val() > 0 ? "&clpid=" + $('#ddlCampaignUrlLP').val() : '';
	$("#txtCampaignUrl").val(urlValue + urlSuffix + fixedLpSuffix);
	updateCampaignUrlLpValues();
	updateTrackingCodeLpValues();
	updateTrackingLinkLpValues();

	if (trafficSourceDetails != null)
	{
		urlSuffix += (isParallelTrackingTrafficSource ? generateAppendUrlFromValues(campIdParameter, campaignID) : '');
		$("#spParallelTsTitle1").html(trafficSourceDetails["urlfield"] + " for " + trafficSourceDetails["name"]);
		//remove leading & sign from Final URL Suffix
		$("#txtParallelFinalSuffix").val(urlSuffix.replace(/^&+|&+$/g, ''));

		$("#spParallelTsTitle2").html(trafficSourceDetails["suffixfield"] + " for " + trafficSourceDetails["name"]);
		updateDestinationParallelLP();

		$('#divParallelTrackingLinks').show();
		if (isGoogleTrackingTemplate)
		{
			$('#spParallelTsSubtitle1').html("Offer");
			$('#spCampUrlLabel').html("Tracking Template:");
			const trackingTemplateArticleTip = 'For more details on how to setup your ads in ' + trafficSourceDetails["name"] + 
				' with the Tracking Template option, please check the <a href="https://doc.cpvlab.pro/CPVOne/google-certified-tracker-domain.html" target="_blank">dedicated article from our Online Documentation</a>.'
			//$('#divTrackingTemplateLinks').show();
			$('#tipParallelFinalUrl').attr("data-content", trackingTemplateArticleTip);
			$('#tipParallelFinalSuffix').attr("data-content", trackingTemplateArticleTip);
		}
		else
		{
			$('#spParallelTsSubtitle1').html("Landing Page");
			$('#spCampUrlLabel').html("Campaign URL:");
			const trafficSourceArticleTip = 'For more details on how to setup your ads in ' + trafficSourceDetails["name"] + 
				', please check the <a href="' + trafficSourceDetails["doclink"] + 
				'" target="_blank">dedicated article from our Online Documentation</a>.'
			$('#tipParallelFinalUrl').attr("data-content", trafficSourceArticleTip);
			$('#tipParallelFinalSuffix').attr("data-content", trafficSourceArticleTip);
			//$('#divTrackingTemplateLinks').hide();
		}
	}
	else
	{
		$('#divParallelTrackingLinks').hide();
		$("#txtParallelFinalSuffix").val('');
		$('#txtParallelFinalUrl').val('');
		$('#tipParallelFinalUrl').attr("data-content", '');
		$('#tipParallelFinalSuffix').attr("data-content", '');
	}

	//$("#txtCampaignTestUrl").attr("href", testUrlValue);
	//initializeTooltips();
}

function updateDestinationParallelLP()
{
	if ($('#ddlCampaignUrlLP option').length > 1 && $('#ddlCampaignUrlLP').val() > 0)
	{
		var finalUrlLpURL = $('#' + $('[id^="txtPageIDLP"][value="' + $('#ddlCampaignUrlLP').val() + '"]').attr("id").replace("txtPageIDLP", "txtPageUrlLP")).val();
	}
	else
	{
		var finalUrlLpURL = $('#chkCertifiedDomain').prop("checked") ?
			($('#txtPageUrlOffer0').length > 0 ? $('#txtPageUrlOffer0').val() : '') :
			($('#txtPageUrlLP0_0').length > 0 ? $('#txtPageUrlLP0_0').val() : ($('#txtPageUrlLP0').length > 0 ? $('#txtPageUrlLP0').val() : ''));
	}
	$('#txtParallelFinalUrl').val(finalUrlLpURL);
}

function updateCampaignUrlLpValues()
{
	var selectedOption = $('#ddlCampaignUrlLP').val();
	$('#ddlCampaignUrlLP').html('');
	$('#ddlCampaignUrlLP').append(new Option("Rotate Landers", 0))
	if (!selectedOption)
	{
		selectedOption = 0;
	}
	var validPages = 0; 
	$('[id^="txtPageNameLP"]').each(function () {
		var controlName = $(this).attr('id');
		if ($(this).val() != "" && (controlName.indexOf("_") == -1 || controlName.indexOf("LP0_") != -1))
		{
			var lpIDControl = controlName.replace("txtPageNameLP", "txtPageIDLP");
			var lpID = $('#' + lpIDControl).val();
			//console.log($(this).val() + " - " + lpID);
			$('#ddlCampaignUrlLP').append(new Option($(this).val(), lpID));
			validPages++;
		}
	});
	if ($("#ddlCampaignUrlLP option[value='" + selectedOption + "']").length == 0)
	{
		selectedOption = $("#ddlCampaignUrlLP option:first").val();
	}
	$('#ddlCampaignUrlLP').val(selectedOption);
	if (validPages > 1)
	{
		$("#ddlCampaignUrlLP").show();
	}
	else
	{
		$("#ddlCampaignUrlLP").hide();
	}
	updateCodeLP();
}

function updateTrackingCodeLpValues()
{
	var selectedOption = $('#ddlTrackingCodeLP').val();
	$('#ddlTrackingCodeLP').html('');
	var validPages = 0; 
	$('[id^="txtPageNameLP"]').each(function () {
		var controlName = $(this).attr('id');
		if ($(this).val() != "" && (controlName.indexOf("_") == -1 || controlName.indexOf("LP0_") != -1))
		{
			var lpIDControl = controlName.replace("txtPageNameLP", "txtPageIDLP");
			var lpID = $('#' + lpIDControl).val();
			if (!selectedOption)
			{
				selectedOption = lpID;
			}
			//console.log($(this).val() + " - " + lpID);
			$('#ddlTrackingCodeLP').append(new Option($(this).val(), lpID));
			validPages++;
		}
	});
	if ($("#ddlTrackingCodeLP option[value='" + selectedOption + "']").length == 0)
	{
		selectedOption = $("#ddlTrackingCodeLP option:first").val();
	}
	$('#ddlTrackingCodeLP').val(selectedOption);
	if (TrafficSourceIsNoRedirects() && validPages > 0)
	{
		$("#ddlTrackingCodeLP").show();
	}
	else
	{
		$("#ddlTrackingCodeLP").hide();
	}
	updateCodeLP();
}

function updateTrackingLinkLpValues()
{
	var selectedOption = $('#ddlTrackingLinkLP').val();
	var selectedOptionModal = $('#ddlTrackingLinkLPModal').val();
	$('.ddlTrackingLinkLP').html('');
	var validPages = 0; 
	if ($('[id^="txtLevel"]').length > 0)
	{
		$('.ddlTrackingLinkLP').append(new Option("Next level", "level0"))
		if (!selectedOption)
		{
			selectedOption = "level0";
		}
		if (!selectedOptionModal)
		{
			selectedOptionModal = "level0";
		}
		$('[id^="txtLevel"]').each(function () {
			var levelID = $(this).attr('id').replace("txtLevel", "");
			if (parseInt(levelID) == levelID && parseInt(levelID) > 0)
			{
				levelDisplay = parseInt(levelID) + 1;
				//console.log($(this).val() + " - " + lpID);
				$('.ddlTrackingLinkLP').append(new Option("Level " + levelDisplay, "level" + levelDisplay));
				validPages++;
			}
		});
		$('.ddlTrackingLinkLP').append('<hr>');
	}
	$('.ddlTrackingLinkLP').append(new Option("Rotate Offers", 0))
	if (!selectedOption)
	{
		selectedOption = 0;
	}
	if (!selectedOptionModal)
	{
		selectedOptionModal = 0;
	}
	$('[id^="txtPageNameOffer"]').each(function () {
		if ($(this).val() != "")
		{
			var offerIDControl = $(this).attr('id').replace("txtPageNameOffer", "txtPageIDOffer");
			var offerID = $('#' + offerIDControl).val();
			//console.log($(this).val() + " - " + lpID);
			$('.ddlTrackingLinkLP').append(new Option($(this).val(), "offer" + offerID));
			validPages++;
		}
	});
	if ($('[id^="txtOption"]').length > 0)
	{
		$('.ddlTrackingLinkLP').append('<hr>');
		$('[id^="txtOption"]').each(function () {
			var optionGroupID = $(this).attr('id').replace("txtOption", "");
			if (parseInt(optionGroupID) == optionGroupID)
			{
				optionGroupDisplay = parseInt(optionGroupID) + 1;
				//console.log($(this).val() + " - " + lpID);
				$('.ddlTrackingLinkLP').append(new Option("Option Group " + optionGroupDisplay, "option" + optionGroupDisplay));
			}
		});
	}
	if ($("#ddlTrackingLinkLP option[value='" + selectedOption + "']").length == 0)
	{
		selectedOption = $("#ddlTrackingLinkLP option:first").val();
	}
	if ($("#ddlTrackingLinkLPModal option[value='" + selectedOptionModal + "']").length == 0)
	{
		selectedOption = $("#ddlTrackingLinkLPModal option:first").val();
	}
	$('#ddlTrackingLinkLP').val(selectedOption);
	$('#ddlTrackingLinkLPModal').val(selectedOptionModal);
	if (validPages > 1)
	{
		$("#ddlTrackingLinkLP").show();
		$("#ddlTrackingLinkLPModal").show();
	}
	else
	{
		$("#ddlTrackingLinkLP").hide();
		$("#ddlTrackingLinkLPModal").hide();
	}
	updateLinkLP();
}

function generateAppendUrlFromValues(param, value)
{
	return '&' + param + '=' + value;
}

function generateAppendUrl(paramField, placeField)
{
	var paramControl = $('#' + paramField);
	var placeControl = $('#' + placeField);
	if (paramControl.length > 0 && $.trim(paramControl.val()) != '' && placeControl.length > 0 && $.trim(placeControl.val()) != '')
		return '&' + paramControl.val() + '=' + placeControl.val();
	return '';
}

function updateAppendUrl(i, name)
{
	if (name == undefined)
		name = 'Extra';
	disabledForMV = $('#txt' + name + 'TokenParam' + i).length > 0 && $('#txt' + name + 'TokenParam' + i).val().indexOf("{") == 0;
	//$('#txt' + name + 'TokenParam' + i).prop("disabled", disabledForMV);
	$('#txt' + name + 'TokenPlace' + i).prop("disabled", disabledForMV);
	if (disabledForMV)
		$('#txt' + name + 'TokenPlace' + i).val("");
	$('#txt' + name + 'TokenUrl' + i).val(generateAppendUrl('txt' + name + 'TokenParam' + i, 'txt' + name + 'TokenPlace' + i));
}

function updateAppendUrlAll()
{
	var extraTokensToShow = parseInt($("#hidExtraTokensToShow").val());
	for(i=0; i<=extraTokensToShow; i++)
		updateAppendUrl(i);
	updateAppendUrl('','Keyword');
	updateAppendUrl('','Cost');
	updateAppendUrl('','Unique');
	updateAppendUrl('','Ad');
}

function updateStep2Code()
{
	$("#txtStep2").val(GenerateTrackingCodeMain());
}

function updateDestinationUrlDelay()
{
	$("#txtCampaignUrl").val('.....');
	setTimeout("updateDestinationUrl()", 1000);
}

function updateCodeLP()
{
	$("#txtStep2").val('.....');
	setTimeout("updateCodeLPDelay()", 1000);
}

function updateCodeLPDelay() 
{
	$("#txtStep2").val(GenerateTrackingCodeComplete());

	const trafficSourceNoRedirects = TrafficSourceIsNoRedirects();
	trafficSourceNoRedirects ? $("#ddlTrackingCodeLP").show() : $("#ddlTrackingCodeLP").hide();
}

function GenerateTrackingCodeComplete(landingPageIDParam)
{
	const trafficSourceNoRedirects = TrafficSourceIsNoRedirects();
	const trafficSourceIsFacebook = TrafficSourceIsFacebook();
	var campaignID = $("#hidID").val();
	var landingPageID = typeof landingPageIDParam !== 'undefined' ? landingPageIDParam : $("#ddlTrackingCodeLP").val();

	var trackingCode = GenerateTrackingCodeMain();
	if (trafficSourceNoRedirects)
	{
		trackingCode += "\r\n" + generateDirectTrafficCodeJavaScript(campaignID, landingPageID);
	}
	if (trafficSourceIsFacebook)
	{
		trackingCode += "\r\n" + GenerateTrackingCodeFacebookCapi();
	}
	return trackingCode;
}

function GenerateTrackingCodeMain()
{
	var rootUrl = $("#ddlTrackingDomains").val();
	var trackingObject = ' "clroot" : "' + rootUrl + '", ';
	if ($("#txtEngageSeconds").length>0 && $("#txtEngageSeconds").val() != 0)
	{
		trackingObject += ' "engsec" : "' + $("#txtEngageSeconds").val() + '", ';
	}
	if ($("#ddlCaptureOptions").length>0 && Array.isArray($("#ddlCaptureOptions").val()))
	{
		var captureResolution = false;
		var captureOptionsLength = $("#ddlCaptureOptions").val().length;
		var captureIndex = 0;
		while (!captureResolution && captureIndex<captureOptionsLength)
		{
			if ($("#ddlCaptureOptions").val()[captureIndex] == "CaptureResolutionDetails")
			{
				captureResolution = true;
			}
			captureIndex++;
		}
		if (captureResolution)
		{
			trackingObject += ' "clcsr" : "1", ';
		}
	}
	return "<script>var clpconfig = {" + trackingObject + "};</script>\r\n<script src=\"" + 
			rootUrl + "landing.js\"></script>";
}

function updateLinkLP(isModalParam)
{
	var isModal = typeof isModalParam !== 'undefined' ? isModalParam : '';
	$("#txtStep1" + isModal).val('.....');
	setTimeout(updateLinkLPDelay, 1000, isModal);
}

function updateLinkLPDelay(isModalParam) 
{
	var isModal = typeof isModalParam !== 'undefined' ? isModalParam : '';
	var trackingLink = GenerateTrackingLinkMain(isModal);
	$("#txtStep1" + isModal).val(trackingLink);
}

function GenerateTrackingLinkMain(isModalParam)
{
	var isModal = typeof isModalParam !== 'undefined' ? isModalParam : '';
	var rootUrl = $("#ddlTrackingDomains").val();
	var campaignTypeID = $("#hidCampaignTypeID").val();
	var offerID = $("#ddlTrackingLinkLP" + isModal).val();
	var base2PhpPage = $("#hidBase2PhpPage").length>0 ? $("#hidBase2PhpPage").val() : "base2.php";
	var base3PhpPage = $("#hidBase3PhpPage").length>0 ? $("#hidBase3PhpPage").val() : "base3.php";
	var trackingLink = rootUrl;

	if (offerID == 0)
	{
		trackingLink += (campaignTypeID == 6 ? base3PhpPage : base2PhpPage);
	}
	if (offerID.indexOf("offer") >= 0)
	{
		trackingLink += (campaignTypeID == 6 ? base3PhpPage : base2PhpPage) + "?cloid=" + offerID.replace("offer","");
	}
	else if (offerID.indexOf("option") >= 0)
	{
		trackingLink += (campaignTypeID == 6 ? base3PhpPage : base2PhpPage) + "?cogid=" + offerID.replace("option","");
	}
	else if (offerID.indexOf("level") >= 0)
	{
		levelID = offerID.replace("level","");
		trackingLink += base2PhpPage + (levelID == 0 ? "" : ("?clvl=" + levelID));
	}
	return trackingLink;
}

function updateCampaignLinks()
{
	updateDestinationUrl();
	
	var rootUrl = $("#ddlTrackingDomains").val();
	var campaignID = $("#hidID").val();
	var campaignTypeID = $("#hidCampaignTypeID").val();
	//alert(rootUrl);
	var base2PhpPage = $("#hidBase2PhpPage").length>0 ? $("#hidBase2PhpPage").val() : "base2.php";
	var base3PhpPage = $("#hidBase3PhpPage").length>0 ? $("#hidBase3PhpPage").val() : "base3.php";
	var adclickPhpPage = $("#hidAdclickPhpPage").length>0 ? $("#hidAdclickPhpPage").val() : "adclick.php";
	var adclickfPhpPage = $("#hidAdclickfPhpPage").length>0 ? $("#hidAdclickfPhpPage").val() : "adclickf.php";
	var adclicksPhpPage = $("#hidAdclicksPhpPage").length>0 ? $("#hidAdclicksPhpPage").val() : "adclicks.php";
	var adsubPhpPage = $("#hidAdsubPhpPage").length>0 ? $("#hidAdsubPhpPage").val() : "adsub.php";

	//$("#txtStep1").val(rootUrl + base2PhpPage + (campaignTypeID==7 ? "?cogid=xxx" : ""));
	updateLinkLP();
	updateLinkLP('Modal');
	updateStep2Code();
	$("#txtStep2bPhp").val(generateDirectTrafficCodePhp(rootUrl, campaignID));
	$("#txtStep2bJs").val(generateDirectTrafficCodeJavaScript(campaignID));
	$("#txtStep3").val("<img src=\"" + rootUrl + adsubPhpPage + "\" style=\"display:none\"/>");
	$("#txtStep4").val(rootUrl + base3PhpPage + "?adsub=1");
	$("#txtStep4b").val("<a href=\"" + rootUrl + base3PhpPage + "\">Click for Offer</a>");
	$("#txtStep5").val("<a href=\"" + rootUrl + base3PhpPage + "?cogid=xxx\">Click for Offer</a>");
	$("#txtStepTrackingI").val(generateTrackingPixelImage(rootUrl, adclickPhpPage));
	$("#txtStepTrackingF").val(generateTrackingPixelIframe(rootUrl, adclickfPhpPage));
	$("#txtStepTrackingS").val(generateTrackingPixelScript(rootUrl, adclicksPhpPage));
	$("#txtStepTrackingP").val(rootUrl + adclickPhpPage + "?subid=subid-here");
	if (campaignTypeID == 6 || campaignTypeID == 7)
	{
		$("#txtStepTrackingIb").val(generateTrackingPixelImageOption(rootUrl, adclickPhpPage, campaignID));
		$("#txtStepTrackingFb").val(generateTrackingPixelIframeOption(rootUrl, adclickfPhpPage, campaignID));
		$("#txtStepTrackingSb").val(generateTrackingPixelScriptOption(rootUrl, adclicksPhpPage, campaignID));
	}
	updateSpecificPostbacks();
	updateSpecificTsPostback();
}

function generateDirectTrafficCodeJavaScript(campaignIDParam, landingPageIDParam)
{
	var campaignID = typeof campaignIDParam !== 'undefined' ? campaignIDParam : $("#hidID").val();
	var landingPageID = typeof landingPageIDParam !== 'undefined' ? landingPageIDParam : "1";
	return "<script>checkdirect(" + campaignID + "," + landingPageID + ")</script>";
}

function generateDirectTrafficCodePhp(rootUrlParam, campaignIDParam, landingPageIDParam)
{	
	var rootUrl = typeof rootUrlParam !== 'undefined' ? rootUrlParam : $("#ddlTrackingDomains").val();
	var campaignID = typeof campaignIDParam !== 'undefined' ? campaignIDParam : $("#hidID").val();
	var landingPageID = typeof landingPageIDParam !== 'undefined' ? landingPageIDParam : "1";
	return "<img src=\"" + rootUrl + "adck.php?c=" + campaignID + "&l=" + landingPageID + 
			"&<?php echo($_SERVER['QUERY_STRING']) ?>&r=<?php echo(base64_encode(isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '')) ?>&rnd=<?php echo(rand()) ?>##mv_tokens##\" style=\"display:none\"/>";
}

function GenerateTrackingCodeFacebookCapi()
{
	return "<script>fbCapiTrack()</script>";
}

function generateTrackingPixelImage(rootUrlParam, adclickPhpPageParam)
{
	var rootUrl = typeof rootUrlParam !== 'undefined' ? rootUrlParam : $("#ddlTrackingDomains").val();
	var adclickPhpPage = typeof adclickPhpPageParam !== 'undefined' ? adclickPhpPageParam : ($("#hidAdclickPhpPage").length>0 ? $("#hidAdclickPhpPage").val() : "adclick.php");
	return "<img src=\"" + rootUrl + adclickPhpPage + "\" width=\"1\" height=\"1\" border=\"0\" />";
}

function generateTrackingPixelImageOption(rootUrlParam, adclickPhpPageParam, campaignIDParam, offerIDParam)
{
	var rootUrl = typeof rootUrlParam !== 'undefined' ? rootUrlParam : $("#ddlTrackingDomains").val();
	var adclickPhpPage = typeof adclickPhpPageParam !== 'undefined' ? adclickPhpPageParam : ($("#hidAdclickPhpPage").length>0 ? $("#hidAdclickPhpPage").val() : "adclick.php");
	var campaignID = typeof campaignIDParam !== 'undefined' ? campaignIDParam : $("#hidID").val();
	var offerID = typeof offerIDParam !== 'undefined' ? offerIDParam : "xxx";
	return "<img src=\"" + rootUrl + adclickPhpPage + "?ofr=" + campaignID + "_" + offerID + "\" width=\"1\" height=\"1\" border=\"0\" />";
}

function generateTrackingPixelIframe(rootUrlParam, adclickfPhpPageParam)
{
	var rootUrl = typeof rootUrlParam !== 'undefined' ? rootUrlParam : $("#ddlTrackingDomains").val();
	var adclickfPhpPage = typeof adclickfPhpPageParam !== 'undefined' ? adclickfPhpPageParam : ($("#hidAdclickfPhpPage").length>0 ? $("#hidAdclickfPhpPage").val() : "adclickf.php");
	return "<iframe src=\"" + rootUrl + adclickfPhpPage + "\" width=\"1\" height=\"1\" border=\"0\" style=\"display: none\" frameborder=\"0\" scrolling=\"no\"></iframe>";
}

function generateTrackingPixelIframeOption(rootUrlParam, adclickfPhpPageParam, campaignIDParam, offerIDParam)
{
	var rootUrl = typeof rootUrlParam !== 'undefined' ? rootUrlParam : $("#ddlTrackingDomains").val();
	var adclickfPhpPage = typeof adclickfPhpPageParam !== 'undefined' ? adclickfPhpPageParam : ($("#hidAdclickfPhpPage").length>0 ? $("#hidAdclickfPhpPage").val() : "adclickf.php");
	var campaignID = typeof campaignIDParam !== 'undefined' ? campaignIDParam : $("#hidID").val();
	var offerID = typeof offerIDParam !== 'undefined' ? offerIDParam : "xxx";
	return "<iframe src=\"" + rootUrl + adclickfPhpPage + "?ofr=" + campaignID + "_" + offerID + "\" width=\"1\" height=\"1\" border=\"0\" style=\"display: none\" frameborder=\"0\" scrolling=\"no\"></iframe>";
}

function generateTrackingPixelScript(rootUrlParam, adclicksPhpPageParam)
{
	var rootUrl = typeof rootUrlParam !== 'undefined' ? rootUrlParam : $("#ddlTrackingDomains").val();
	var adclicksPhpPage = typeof adclicksPhpPageParam !== 'undefined' ? adclicksPhpPageParam : ($("#hidAdclicksPhpPage").length>0 ? $("#hidAdclicksPhpPage").val() : "adclicks.php");
	return "<script src=\"" + rootUrl + adclicksPhpPage + "\"></script>";
}

function generateTrackingPixelScriptOption(rootUrlParam, adclicksPhpPageParam, campaignIDParam, offerIDParam)
{
	var rootUrl = typeof rootUrlParam !== 'undefined' ? rootUrlParam : $("#ddlTrackingDomains").val();
	var adclicksPhpPage = typeof adclicksPhpPageParam !== 'undefined' ? adclicksPhpPageParam : ($("#hidAdclicksPhpPage").length>0 ? $("#hidAdclicksPhpPage").val() : "adclicks.php");
	var campaignID = typeof campaignIDParam !== 'undefined' ? campaignIDParam : $("#hidID").val();
	var offerID = typeof offerIDParam !== 'undefined' ? offerIDParam : "xxx";
	return "<script src=\"" + rootUrl + adclicksPhpPage + "?ofr=" + campaignID + "_" + offerID + "\"></script>";
}

function checkExtraTokenParam(control)
{
	var notAllowed = [ 'c', 'key' ];
	var foundParam = '';
	i=0;
	while (foundParam == '' && i<notAllowed.length)
	{
		if (control.value == notAllowed[i])
			foundParam = control.value;
		else
			i++;
	}
	if (foundParam != '')
	{
		alert('Warning! \'' + foundParam + '\' cannot be used as a token!');
		control.value = '';
		setTimeout("$get('" + control.id + "').focus();",1);
	}
}

function checkValidOfferEnding(control)
{
	var suffix = $(control).prop('id').replace("txtPageUrlOffer","");
	var sourceEnding = $("#ddlNetwork" + suffix).attr("dataending");
	if (sourceEnding != '' && $(control).val().indexOf(sourceEnding) == -1)
	{
		$('#txtEndingOffer' + suffix).attr("class", "profitRed");
	}
	else
	{
		$('#txtEndingOffer' + suffix).attr("class", "text-muted");
	}
}

function trim(str) {
	return str.replace(/^\s*|\s*$|\n|\r/g,"");
}

function sortCol(reportTypeID, sortField, dirField, levelID)
{
	var objectSuffix = reportTypeID + (typeof levelID !== 'undefined' ? '-' + levelID : '');
	$('#hidSortField' + objectSuffix).val(sortField);
	$('#hidDirField' + objectSuffix).val(dirField);
	
	switch (reportTypeID)
	{
		case 4:
			levelID == 1 ? ajaxLoadStatsTarget() : ajaxLoadStatsTargetExtra();
			break;
		case 5:
			ajaxLoadStatsLanding(levelID);
			break;
		case 6:
			ajaxLoadStatsOffer();
			break;
		//case 10:
		//	ajaxLoadStatsCampaign();
		//	break;
		//case 12:
		//	ajaxLoadStatsThankYou();
		//	break;
		case 16:
			ajaxLoadStatsAd();
			break;
	}
}

function select_all(control)
{
	control.focus();
	control.select();
}

function htmlEntities(str) {
	return String(str).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
}

function addDatePickers()
{
	$(function() {
		$("#txtIntervalFrom").datepicker({
			//showOn: "button",
			//buttonImage: "images/calendar.gif",
			//buttonImageOnly: true,
			showAnim: "slideDown",
			dateFormat: "mm/dd/yy",
			buttonText: ""
		});
		$("#txtIntervalTo").datepicker({
			//showOn: "button",
			//buttonImage: "images/calendar.gif",
			//buttonImageOnly: true,
			showAnim: "slideDown",
			dateFormat: "mm/dd/yy",
			buttonText: ""
		});
	});
}

function addDatePicker(controlName)
{
	$(function() {
		$( "#" + controlName ).datepicker({
			//showOn: "button",
			//buttonImage: "images/calendar.gif",
			//buttonImageOnly: true,
			showAnim: "slideDown",
			dateFormat: "mm/dd/yy",
			buttonText: ""
		});
	});
}

function openDeleteWindow(objectid, object)
{
	$('#hidDeleteID').val(objectid);
	var objectName=$(object).closest('tr').children('td:first').text();
	$('#deleteObjectName').html(objectName);
}

function openCloneWindow(objectid, objectTypeID, object)
{
	$('#hidCloneID').val(objectid);
	var objectName=$("#tc" + objectid).text().trim();
	$('#cloneObjectName').html(objectName);
	$('#ddlCloneCampaignType').val(objectTypeID);
}

function redirectToCampaigns()
{
	window.location.href='campaigns.php';
	return false;
}

function editCampaign(campaignControl)
{
	window.location.href='campaign-edit.php?id=' + $('#' + campaignControl).val();
	return false;
}

function setToCustom()
{
	$("#ddlInterval").val(4);
}

function checkInputCount()
{
	var maxInputsControl = $("#hidInputCount");
	if (maxInputsControl.length > 0)
	{
		var maxInputs = maxInputsControl.val();
		if (maxInputs > 0)
		{
			var currentInputs = $('input').length;
			if (maxInputs - currentInputs < 50)
				$("#divMaxInputs").fadeIn(500);
		}
	}
}

function showSpinner(name)
{
	$('#' + name).fadeIn(10);
}

function hideSpinner(name)
{
	$('#' + name).fadeOut(10);
}

function hideSection(control, section)
{
	var sectionControl = $('#' + section);
	if (sectionControl.length>0)
	{
		var shouldHide = control.src.indexOf('minus.gif') != -1;
		sectionControl.slideToggle(700);
		control.src = 'images/' + (shouldHide ? "plus.gif" : "minus.gif");
	}
}

function hideSectionTB(control, section)
{
	var sectionControl = $('#' + section);
        var icon = $(control).children().first();
	if (sectionControl.length>0)
	{
		var shouldHide = icon.hasClass('glyphicon-minus');
		sectionControl.slideToggle(700);
                if (shouldHide) {
                    icon.removeClass('glyphicon-minus').addClass('glyphicon-plus');
                } else {
                    icon.removeClass('glyphicon-plus').addClass('glyphicon-minus');
                }
	}
}
function createCookie(name, value, days) {
    var expires;

    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toGMTString();
    } else {
        expires = "";
    }
    document.cookie = encodeURIComponent(name) + "=" + encodeURIComponent(value) + expires + "; path=/";
}

function getCookie(name) {
	let cookie = {};
	document.cookie.split(';').forEach(function(el) {
	  let [k,v] = el.split('=');
	  cookie[k.trim()] = v;
	})
	return cookie[name];
}

function removeDragCookie(campaignID, reportID)
{
	//console.log(campaignID + ' | ' + reportID);
	if (reportID==4)
		levelValues = [1, 2];
	else if (reportID == 5)
	{
		levelValues = new Array();
		if ($('#tbl' + campaignID + (reportID!='' ? '-' + reportID : '') + '--1').length>0)
			levelValues.push(-1);
		i=1;
		while ($('#tbl' + campaignID + (reportID!='' ? '-' + reportID : '') + '-' + i).length>0)
		{
			levelValues.push(i);
			i++;
		}
	}
	else if (reportID == 15)
		levelValues = [4, 5, 6, 7, 8, 9];
	else
		levelValues=[''];
	for (i=0; i<levelValues.length; i++)
	{
		tableName = 'tbl' + campaignID + (reportID!='' ? '-' + reportID : '') + (levelValues[i] != '' ? '-' + levelValues[i] : '');
		//document.cookie = 'dragtable-' + tableName + '=;path=' + document.location.pathname + '; expires=Thu, 01-Jan-70 00:00:01 GMT;';
		$('#' + tableName).DataTable().colReorder.reset();
	}
	//changeCampaign(true);
}

function arraysIdentical(a, b) {
	var i = a.length;
	if (i != b.length) return false;
	while (i--) {
		if (a[i] !== b[i]) return false;
	}
	return true;
};

function applyFilter()
{
	var selectedItems = $(this).val();
	var control = $(this).attr('id').replace("ddlFilter","");
	if (selectedItems == null || selectedItems=='' || selectedItems==$('#hidFilter' + control).val())
	{
		return;
	}
	changeCampaign(true, control);
};

function changeValues(sender)
{
	var rowID = sender.id.replace("txtValue", "");
	var conditionType = $("#ddlCondition" + rowID).val();
	if (conditionType == 1 || conditionType == 4 || conditionType == 6 || conditionType == 7 || conditionType == 8 || conditionType == 9)
	{
		var parentConditions = new Array();
		parentConditions[2] = 1;
		parentConditions[3] = 1;
		parentConditions[8] = 7;
		parentConditions[9] = 8;
		parentConditions[31] = 4;
		parentConditions[32] = 6;
		parentConditions[29] = 9;

		$(".conditionTypeBox").each(function () {
			if (parentConditions[$(this).val()] != undefined && parentConditions[$(this).val()] == conditionType)
			{
				var childRowID = $(this).attr('id').replace("ddlCondition", "");
				ajaxChangeConditionType($get('ddlCondition' + childRowID));

			}
		});
	}
}

function cleanRedirectProfile(conditionCountParam, reloadListParam)
{
	var conditionCount = typeof conditionCountParam !== 'undefined' ? conditionCountParam : 3;
	$('#hidRedirectProfileEditID').val(0);
	$("#txtProfileName").val('');
	$("#hidEditID").val(0);
	$("#ddlLps").val(0);
	$("#ddlOffers").val(0);
	$("#ddlPaths").val(0);
	$("#txtRedirectUrl").val('');
	$("#chkActive").prop("checked", true);
	$("#radOperatorAnd").prop("checked", true);
	$('#radOperatorAnd').iCheck('update');
	$('#radOperatorOr').iCheck('update');
	$("#hidConditionsToShow").val(0);
	var conditionTypes = $('#ddlCondition0').html().replace('selected="selected"','');
	$('#divConditions').empty();
	for (i=0; i<conditionCount; i++)
		addRedirectCondition(reloadListParam);
	$("#divMessageRedirectProfile").hide();
}

function checkAllStats(idPattern)
{
	$('input[type=checkbox][id^="' + idPattern + '"]').prop('checked', $('#' + idPattern + 'All').prop('checked'));
	$('input[type=checkbox][id^="' + idPattern + '"]').iCheck('update');
}

function checkUpload()
{
	if ($('#uplCampaign').val() == '')
	{
		alert('Please select a CSV file to upload first!');
		return false;
	}
	return true;
}

function checkApiKey()
{
	if ($('#chkEnableApi').prop("checked"))
	{
		$('#txtApiKey').prop("disabled", false);
		$('#btnGenerateApiKey').prop("disabled", false);
	}
	else
	{
		$('#txtApiKey').prop("disabled", true);
		$('#btnGenerateApiKey').prop("disabled", true);
	}
}

function generateApiKey()
{
	$('#txtApiKey').val(makeid());
}

function makeid() {
  var text = "";
  var possible = "abcdefghijklmnopqrstuvwxyz0123456789";

  for (var i = 0; i < 16; i++)
    text += possible.charAt(Math.floor(Math.random() * possible.length));

  return text;
}

function insertAtCaret(areaId, text) {
	var txtarea = document.getElementById(areaId);
	if (!txtarea) {
	  return;
	}

	var scrollPos = txtarea.scrollTop;
	var strPos = 0;
	var br = ((txtarea.selectionStart || txtarea.selectionStart == '0') ?
	  "ff" : (document.selection ? "ie" : false));
	if (br == "ie") {
	  txtarea.focus();
	  var range = document.selection.createRange();
	  range.moveStart('character', -txtarea.value.length);
	  strPos = range.text.length;
	} else if (br == "ff") {
	  strPos = txtarea.selectionStart;
	}

	var front = (txtarea.value).substring(0, strPos);
	var back = (txtarea.value).substring(strPos, txtarea.value.length);
	txtarea.value = front + text + back;
	strPos = strPos + text.length;
	if (br == "ie") {
	  txtarea.focus();
	  var ieRange = document.selection.createRange();
	  ieRange.moveStart('character', -txtarea.value.length);
	  ieRange.moveStart('character', strPos);
	  ieRange.moveEnd('character', 0);
	  ieRange.select();
	} else if (br == "ff") {
	  txtarea.selectionStart = strPos;
	  txtarea.selectionEnd = strPos;
	  txtarea.focus();
	}
}

function showOverlayTokens(control)
{
	var currentUrlValue = $(control).val();
	$('#hidTokensLP').val($(control).prop("id"));
	//console.log($(control).prop("id").replace("txtPageUrl","hidParameter"));
	//var offerEndingParameter = $('#' + $(control).prop("id").replace("txtPageUrl","hidParameter")).val();
	//console.log($(control).prop("id").replace("txtPageUrlOffer","ddlNetwork"));
	var offerEndingParameter = $(control).prop('id').indexOf('txtPageUrlOffer') != -1 ?
		 $('#' + $(control).prop("id").replace("txtPageUrlOffer","ddlNetwork")).attr('dataparam') : '';
	if (offerEndingParameter == '')
		offerEndingParameter = 'subid';
	$('.overlay-token-subid').attr("dataparam", offerEndingParameter);
	$('#tokensLP').hide();
	$("#tokensLP button").each(function() {
		if (currentUrlValue.indexOf('{!' + $(this).attr("datavalue") + '!}') == -1)
			$(this).removeClass("btn-add-place-added");
		else
			$(this).addClass("btn-add-place-added");
		//$(this).prop('disabled', currentUrlValue.indexOf($(this).attr("datavalue")) == -1 ? false: true);
	});
	$('#tokensLP').detach().appendTo($(control).parent());
	$('#tokensLP').slideDown(700);
}

function hideOverlayTokens()
{
	$('#tokensLP').slideUp(700);
}

function addTokenFromOverlay(control)
{
	if ($(control).length == 0)
		return;
	//var textToInsert = '{!' + place + '!}';
	var separator = $('#' + $('#hidTokensLP').val()).val().indexOf("?") == -1 ? "?" : "&";
	var textToInsert = separator + $(control).attr("dataparam") + '={!' + $(control).attr("datavalue") + '!}';
	insertAtCaret($('#hidTokensLP').val(), textToInsert);
	$(control).tooltip('hide');
	//console.log('ddd: ' + place);
	//$('#' + $('#hidTokensLP').val()).val($('#' + $('#hidTokensLP').val()).val() + textToInsert);
	//$('#' + $('#hidTokensLP').val()).focus();
}

function initializeTooltips()
{
	$('[data-toggle="tooltip"]').tooltip({
		trigger : 'hover',
		container: 'body',
	});
}

function initializePopovers()
{
    $('[data-toggle="popover"]').popover({
		container: 'body',
	});
}

function initializeOverlayTokens()
{
	$('input[id^="txtPageUrl"]').unbind('focus');
	$('input[id^="txtPageUrl"]').focus(function() { showOverlayTokens(this); });
	$('input[id^="txtPageName"]').unbind('focus');
	$('input[id^="txtPageName"]').focus(function() { hideOverlayTokens(); });
	$('input[id^="txtPageID"]').unbind('focus');
	$('input[id^="txtPageID"]').focus(function() { hideOverlayTokens(); });
	$('input[id^="txtShare"]').unbind('focus');
	$('input[id^="txtShare"]').focus(function() { hideOverlayTokens(); });
	$('input[id^="txtPayout"]').unbind('focus');
	$('input[id^="txtPayout"]').focus(function() { hideOverlayTokens(); });
	$('input[id^="ddlNetwork"]').unbind('focus');
	$('input[id^="ddlNetwork"]').focus(function() { hideOverlayTokens(); });
	$('*[id^="txtPageNotes"]').unbind('focus');
	$('*[id^="txtPageNotes"]').focus(function() { hideOverlayTokens(); });
	/*$('.divovrpar').focusout(function() {
		console.log('focus-out');
		$('#tokensLP').hide();
	});*/
	/*$('#tokensLP').focus(function() {
		console.log('focus-in');
		$('#tokensLP').show();
	});*/
	$('button[rel="overlaytoken"]').unbind('click');
	$('button[rel="overlaytoken"]').click(function() { addTokenFromOverlay(this); });
}

function showOverlayAdditionalTokens(control)
{
	var currentUrlValue = $(control).val();
	$('#hidTokensAdd').val($(control).prop("id"));
	$('#tokensAdd').hide();
	$("#tokensAdd button").each(function() {
		if (currentUrlValue.indexOf('{!' + $(this).attr("datavalue") + '!}') == -1)
			$(this).removeClass("btn-add-place-added");
		else
			$(this).addClass("btn-add-place-added");
		//$(this).prop('disabled', currentUrlValue.indexOf($(this).attr("datavalue")) == -1 ? false: true);
	});
	$('#tokensAdd').detach().appendTo($(control).parent());
	$('#tokensAdd').slideDown(400);
}

function hideOverlayAdditionalTokens()
{
	$('#tokensAdd').slideUp(400);
}

function addTokenFromAddOverlay(control)
{
	if ($(control).length == 0)
		return;
	//var textToInsert = '{!' + place + '!}';
	var textToInsert = '{!' + $(control).attr("datavalue") + '!}';
	insertAtCaret($('#hidTokensAdd').val(), textToInsert);
	$(control).tooltip('hide');
}

function initializeAdditionalOverlayTokens()
{
	$('textarea[id^="txtPostbackUrl"]').unbind('focus');
	$('textarea[id^="txtPostbackUrl"]').focus(function() { showOverlayAdditionalTokens(this); });
	$('textarea[id^="txtTrackingCode"]').unbind('focus');
	$('textarea[id^="txtTrackingCode"]').focus(function() { showOverlayAdditionalTokens(this); });
	$('input[id^="txtTrackingOffers"]').unbind('focus');
	$('input[id^="txtTrackingOffers"]').focus(function() { hideOverlayAdditionalTokens(); });
	$('input[id^="txtPostbackUrlOffers"]').unbind('focus');
	$('input[id^="txtPostbackUrlOffers"]').focus(function() { hideOverlayAdditionalTokens(); });
	$('input[id^="txtPostbackUrlSend"]').unbind('focus');
	$('input[id^="txtPostbackUrlSend"]').focus(function() { hideOverlayAdditionalTokens(); });
	$('button[rel="overlayaddtoken"]').unbind('click');
	$('button[rel="overlayaddtoken"]').click(function() { addTokenFromAddOverlay(this); });
}

function showOverlayMVParamsTokens(control)
{
	var currentUrlValue = $(control).val();
	$('#hidTokensMVParams').val($(control).prop("id"));
	$('#tokensMVParams').hide();
	$("#tokensMVParams button").each(function() {
		if (currentUrlValue.indexOf('{!' + $(this).attr("datavalue")) == -1)
			$(this).removeClass("btn-add-place-added");
		else
			$(this).addClass("btn-add-place-added");
		//$(this).prop('disabled', currentUrlValue.indexOf($(this).attr("datavalue")) == -1 ? false: true);
	});
	$('#tokensMVParams').detach().appendTo($(control).parent());
	$('#tokensMVParams').slideDown(400);
}

function hideOverlayMVParamsTokens()
{
	$('#tokensMVParams').slideUp(400);
}

function addTokenFromMVParamsOverlay(control)
{
	if ($(control).length == 0)
		return;
	//var textToInsert = '{!' + place + '!}';
	var textToInsert = '{!' + $(control).attr("datavalue") + '::!}';
	insertAtCaret($('#hidTokensMVParams').val(), textToInsert);
	$(control).tooltip('hide');
}

function initializeMVParamsOverlayTokens()
{
	$('input[id^="txtVariation"]').unbind('focus');
	$('input[id^="txtVariation"]').focus(function() {showOverlayMVParamsTokens(this); });
	$('input[id^="txtGroupTag"]').unbind('focus');
	$('input[id^="txtGroupTag"]').focus(function() { hideOverlayMVParamsTokens(); });
	$('input[id^="txtGroupShare"]').unbind('focus');
	$('input[id^="txtGroupShare"]').focus(function() { hideOverlayMVParamsTokens(); });
	$('input[id^="txtSnippetTag"]').unbind('focus');
	$('input[id^="txtSnippetTag"]').focus(function() { hideOverlayMVParamsTokens(); });
	$('input[id^="txtShare"]').unbind('focus');
	$('input[id^="txtShare"]').focus(function() { hideOverlayMVParamsTokens(); });
	$('button[rel="overlaymvtoken"]').unbind('click');
	$('button[rel="overlaymvtoken"]').click(function() { addTokenFromMVParamsOverlay(this); });
}

function initializeCopyToClipboard()
{
	$.fn.modal.Constructor.prototype.enforceFocus = function() {};
	$('span[rel="copyclipboard"]').unbind('click');
	$('span[rel="copyclipboard"]').click(function() {
		var previousLevels = $(this).attr("copy-prev-levels") != null ? $(this).attr("copy-prev-levels") : 1;
		$("span[rel='copyclipboard']").attr("data-original-title","Copy to Clipboard");
		$("span[rel='copyclipboard']").removeClass("clipboardSuccess");
		$(this).addClass("clipboardSuccess");
        //copyToClipboardJQ($(this).prev());
		var prevElement = this;
		do 
		{
			prevElement = prevElement.previousElementSibling;
			previousLevels--;
		}
		while (prevElement != null && previousLevels > 0);


        copyToClipboardV2(prevElement, this);
		$(this).attr('title', "Copied!").attr('data-original-title', "Copied!").tooltip('update').tooltip('show');
   });
}

function copyToClipboardJQ(e)
{
    var $temp = $("<textarea>");
    $("body").append($temp);
	var content = e.is("input") || e.is("textarea") ? e.val() : e.html();
	//console.log(content);
	//console.log($temp);
    $temp.val(content).select();
    document.execCommand("copy");
    $temp.remove();
    //console.log('should have copied ' + content);
}

//copy to Clipboard working in modal popup
function copyToClipboardV2(e, context) {
	//console.log(e.value);
	//var ej = $(e);
	//console.log(ej);
	var tagName = e.tagName.toLowerCase();
	var text = tagName == "input" || tagName == "textarea" ? e.value : e.innerHTML;
    var textField = document.createElement('textarea');
    textField.innerHTML = text.trim();

    if (context) {
        context.parentNode.insertBefore(textField, context);
    } else {
        document.body.appendChild(textField);
    }

    textField.select();
    document.execCommand('copy');
    // Let `.remove()` also work with older IEs
    textField.parentNode.removeChild(textField);
    //console.log('should have copied ' + text);
}

// Usage: 1 - prefix caller function with async; 2 - await sleep(2000);
/*function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}*/

function initializeQrCode()
{
	$('#qrcode').html('');
	var qrcode = new QRCode(document.getElementById("qrcode"), {
		text: "https://cpvlab.pro",
		width: 250,
		height: 250,
		colorDark : "#000000",
		colorLight : "#ffffff",
		correctLevel : QRCode.CorrectLevel.M
	});
	$('span[rel="generateqrcode"]').unbind('click');
	$('span[rel="generateqrcode"]').click(function() {
		var previousLevels = $(this).attr("qr-prev-levels") != null ? $(this).attr("qr-prev-levels") : 2;
		//console.log(previousLevels);
		$('span[rel="generateqrcode"]').tooltip('hide');
        qrcode.clear(); // clear the code.
		if (previousLevels == 2)
		{
			var prevElement = $(this).prev().prev();
		}
		else
		{
			var prevElement = $(this);
			do 
			{
				prevElement = prevElement.prev();
				previousLevels--;
			}
			while (prevElement != null && prevElement.length > 0 && previousLevels > 0);
		}
		//console.log(prevElement);
		var qrValue = prevElement.val();
		$('#txtQrText').val(qrValue);
		qrcode.makeCode(qrValue); // make another code.
		$('#qrCodeModal').modal('show');
   });
}

function initializeModalDirectTrafficCode()
{
	//$('#qrcode').html('');
	
	$('span[rel="modaldirecttraffic"]').unbind('click');
	$('span[rel="modaldirecttraffic"]').click(function() {
		$('span[rel="modaldirecttraffic"]').tooltip('hide');
		var suffix = $(this).attr("data-item");
		//console.log(suffix);
		var lpID = $('#txtPageID' + suffix).val();
		if (isNaN(lpID) || lpID <= 0)
		{
			$("#mdlDirectTrafficDivOk").hide();
			$("#mdlDirectTrafficDivError").show();
		}
		else
		{
			$("#mdlDirectTrafficDivOk").show();
			$("#mdlDirectTrafficDivError").hide();
			//$("#mdlDirectTrafficLpName2").text($("#txtPageName" + suffix).val());
			$("#txtMdlTrackingCode").val(GenerateTrackingCodeComplete(lpID));
			//$("#txtMdlDirectCodePhp").val(generateDirectTrafficCodePhp(undefined, undefined, lpID));
			//$("#txtMdlDirectCodeJs").val(generateDirectTrafficCodeJavaScript(undefined, lpID));
		}
		$("#mdlDirectTrafficLpName1").text($("#txtPageName" + suffix).val());
		$('#mdlDirectTraffic').modal('show');
   });

   $('[id^="txtPageNameLP"], [id^="txtPageIDLP"]').change(function() {
		updateCampaignUrlLpValues();
		updateTrackingLinkLpValues();
		updateTrackingCodeLpValues();
	});
   $('[id^="txtPageNameOffer"], [id^="txtPageIDOffer"]').change(function() {
		updateTrackingLinkLpValues();
	});
}

function initializeModalPostbackUrl()
{
	//$('#qrcode').html('');
	
	$('span[rel="modalpostbackurl"]').unbind('click');
	$('span[rel="modalpostbackurl"]').click(function() {
		$('span[rel="modalpostbackurl"]').tooltip('hide');
		var suffix = $(this).attr("data-item");
		var campaignTypeID = $("#hidCampaignTypeID").val();
		//console.log(suffix);
		$("#txtStepTrackingIMdl").val(generateTrackingPixelImage());
		$("#txtStepTrackingFMdl").val(generateTrackingPixelIframe());
		$("#txtStepTrackingSMdl").val(generateTrackingPixelScript());
		if (campaignTypeID == 6 || campaignTypeID == 7)
		{
			$("#txtStepTrackingIbMdl").val(generateTrackingPixelImageOption(undefined, undefined, undefined, $('#txtPageID' + suffix).val()));
			$("#txtStepTrackingFbMdl").val(generateTrackingPixelIframeOption(undefined, undefined, undefined, $('#txtPageID' + suffix).val()));
			$("#txtStepTrackingSbMdl").val(generateTrackingPixelScriptOption(undefined, undefined, undefined, $('#txtPageID' + suffix).val()));
		}
		$("#spnMdlOfferSourceName").text($('#ddlNetwork' + suffix.replace("Offer","")).find('option:selected').text());
		$("#spnMdlOfferName").text($("#txtPageName" + suffix).val());
		var offerSourceID = $("#ddlNetwork" + suffix.replace("Offer","")).val();
		if ($("#txtStepTrackingP" + offerSourceID).length > 0)
		{
			$("#divMdlOfferSourceHasPostback").show();
			$("#divMdlOfferSourceNoPostback").hide();
			$("#txtPostbackURLSpecificMdl").val($("#txtStepTrackingP" + offerSourceID).val());
		}
		else
		{
			$("#divMdlOfferSourceHasPostback").hide();
			$("#divMdlOfferSourceNoPostback").show();
			$("#txtPostbackURLGeneralMdl").val($("#txtStepTrackingP").val());
		}
		$('#mdlPostbackURL').modal('show');
   });
}

function initializeModalInlineChart()
{
	$('button[rel="modalinlinechart"]').unbind('click');
	$('button[rel="modalinlinechart"]').click(function() {
		$("button[rel='modalinlinechart']").tooltip('hide');
		var reportTypeID = $(this).attr("data-reporttype");
		var levelID = $(this).attr("data-level");
		$('#hidInlineChartReportTypeID').val(reportTypeID);
		$('#hidInlineChartLevelID').val(levelID);
		ajaxLoadChartModal();
		$('#mdlInlineChart').modal('show');
   });
}

function GeneratePageID(start)
{
	var existingIDs = [];
	$('input[id^="txtPageID"]').each(function(){
			existingIDs.push($(this).val());
		});
	
	var found = false;
	while (!found)
	{
		if (existingIDs.indexOf(String(start)) == -1)
			found = true;
		else start++;
	}
	return start;
}

function assignAutoPageIDs()
{
	var hidAssignAutoIDsControl = $get("hidAssignAutoIDs");
	if (hidAssignAutoIDsControl != null && hidAssignAutoIDsControl.value == 1)
	{
		$('input[id^="txtPageID"]').each(function(){
			if ($(this).val() == '0')
				$(this).val(GeneratePageID($(this).attr("id").indexOf("Offer") != -1 ? 1001 : 1));
		});
	}
	
}

function initializeCampaignSetupReady()
{
	updateAppendUrlAll();
	clickBlankPages();
	clickCaptureIP();
	updateCampaignLinks();
	initializeOverlayTokens();
	initializeAdditionalOverlayTokens();
	initializeCopyToClipboard();
	initializeQrCode();
	initializeModalDirectTrafficCode();
	initializeModalPostbackUrl();
	assignAutoPageIDs();
	updateCodeLP();
	updateLinkLP();
	updateLinkLP('Modal');
	$('input[id^="txtPageUrlOffer"]').blur(function() {
		checkValidOfferEnding(this);
	});
	$("#txtPageUrlLP0, #txtPageUrlLP0_0, #txtPageUrlOffer0").change(function() {
		updateDestinationParallelLP();
	});
	$('#ddlCampaignUrlLP').change(function() {
		//console.log('in');
		updateDestinationUrlDelay();
	});
	$('#ddlTrackingCodeLP').change(function() {
		//console.log('in');
		updateCodeLP();
	});
	$('#ddlTrackingLinkLP').change(function() {
		//console.log('in');
		updateLinkLP();
	});
	$('#ddlTrackingLinkLPModal').change(function() {
		//console.log('in');
		updateLinkLP('Modal');
	});
}

function initializePredefinedTableFilter(tableName)
{
	$("#txtFilterPredef").keyup(function () {
		var val = $(this).val().toLowerCase().trim();
		$("#" + tableName + " tr td:first-child").each(function (i) {
			var content = $(this).find("img").prop("alt");
			if (content.toLowerCase().indexOf(val) == -1) {
				$(this).parent().hide();
			} else {
				$(this).parent().show();
			}
		});
	});
}

function darkMode()
{
  //if ($(this).prop("src").indexOf("sun")!=-1)
  if ($(this).hasClass("fe-sun"))
  {
	//switched to Light Mode
	$("link[linkscope='light']").prop("rel","stylesheet");
	$("link[linkscope='dark']").prop("rel","stylesheet alternate");
	$("body").removeClass("dark-mode");
	$(this).removeClass("fe-sun").addClass("fe-moon");
	if ($('#imgLogoHor').length>0)
	{
		$('#imgLogoHor').prop("src", $('#imgLogoHor').prop("src").replace("white","color"));
	}
	createCookie("darkmode", 0, 365);
  }
  else
  {
	//switched to Dark Mode
	$("link[linkscope='dark']").prop("rel","stylesheet");
	$("link[linkscope='light']").prop("rel","stylesheet alternate");
	$("body").addClass("dark-mode");
	$(this).removeClass("fe-moon").addClass("fe-sun");
	if ($('#imgLogoHor').length>0)
	{
		$('#imgLogoHor').prop("src", $('#imgLogoHor').prop("src").replace("color","white"));
	}
	createCookie("darkmode", 1, 365);
  }
}

$(document).ready(function () {
	$("#btnDarkMode").on("click", darkMode);
});


function isInt(value) {
	return !isNaN(value) && (function(x) { return (x | 0) === x; })(parseFloat(value))
}

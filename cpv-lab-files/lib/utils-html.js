function addLandingPage(suffixParam, isAfterOptIn)
{
	var suffix = typeof suffixParam !== 'undefined' ? suffixParam : '';
	var destinationToShow = $("#hidDestinationToShow").val();
	$("#hidDestinationToShow").val(parseInt(destinationToShow)+1);

	var completeSuffix = suffix + destinationToShow;
	writeLandingPageHtml(suffix, completeSuffix, isAfterOptIn);
}

function addMultipleLPs(isAfterOptIn)
{
	var pathsToShow = $("#hidPathsToShow").val();
	var destinationToShow = $("#hidDestinationToShow").val();
	for(pth=0; pth<pathsToShow; pth++)
		writeLandingPageHtml(pth+'_', pth+'_'+destinationToShow, false, pth > 0 && typeof isAfterOptIn !== 'undefined' && isAfterOptIn==true ? false : true);
	if (typeof isAfterOptIn !== 'undefined' && isAfterOptIn==true)
		writeLandingPageHtml('',destinationToShow,true);
	$("#hidDestinationToShow").val(parseInt(destinationToShow)+1);
}

function writeLandingPageHtml(suffix, completeSuffix, isAfterOptIn, showDirecTrafficIconParam)
{
	//console.log('new LP' + (isAfterOptIn ? "After" : "") + '|' + suffix + '|' + completeSuffix + '|');
	var shortType='lp';
	var longType='LP';
	var showDirecTrafficIcon = typeof showDirecTrafficIconParam !== 'undefined' ? showDirecTrafficIconParam : true;
	if (typeof isAfterOptIn !== 'undefined' && isAfterOptIn==true)
	{
		shortType='ao';
		longType='After';
		showDirecTrafficIcon = false;
	}
	var hidAssignAutoIDsControl = $get("hidAssignAutoIDs");
	var pageID = hidAssignAutoIDsControl != null && hidAssignAutoIDsControl.value == 1 ? GeneratePageID(1) : 0;
	//completeSuffix = longType + completeSuffix;

	var newHtml = replaceAllInString(replaceAllInString(replaceAllInString($('#divHtmlNew' + shortType).html(), 'tmpCount', completeSuffix), 
		'tmpSuffix', ""), 'tmpDefaultID', pageID);
	if (!showDirecTrafficIcon)
	{
		newHtml = newHtml.replace("modaldirecttraffic\"", "modaldirecttraffic\" style=\"display:none\"");
	}
	$('#section'+shortType+suffix).append(newHtml);
}

function addOffer(suffixParam)
{
	var suffix = typeof suffixParam !== 'undefined' ? suffixParam : '';

	var offersToShow = $("#hidOffersToShow").val();
	$("#hidOffersToShow").val(parseInt(offersToShow)+1);

	var completeSuffix = suffix + offersToShow;
	writeOfferHtml(suffix, completeSuffix)
}

function addMultipleOffers(campaignType)
{
	var pathsToShow = (typeof campaignType !== 'undefined' && campaignType == "lps") ? $("#hidOptionsToShow").val() : $("#hidPathsToShow").val();
	var offersToShow = $("#hidOffersToShow").val();
	for(pth=0; pth<pathsToShow; pth++)
		writeOfferHtml(pth+'_', pth+'_'+offersToShow);
	$("#hidOffersToShow").val(parseInt(offersToShow)+1);
}

function writeOfferHtml(suffix, completeSuffix)
{
	//console.log('newOffer' + '|' + suffix + '|' + completeSuffix + '|');
	var hidAssignAutoIDsControl = $get("hidAssignAutoIDs");
	var pageID = hidAssignAutoIDsControl != null && hidAssignAutoIDsControl.value == 1 ? GeneratePageID(1001) : 0;

	var newHtml = replaceAllInString(replaceAllInString(replaceAllInString($('#divHtmlNewOffer').html(), 'tmpCount', completeSuffix), 
		'tmpSuffix', ""), 'tmpDefaultID', pageID);

	$('#sectionoffer'+suffix).append(newHtml);
}

function addOption(pathsCountControl)
{
	pathsCountControl = typeof pathsCountControl !== 'undefined' ? pathsCountControl : 'Paths';
	var offersToShow = $("#hidOffersToShow").val();
	var pathsToShow = $("#hid" + pathsCountControl + "ToShow").val();
	var pathsToShowPlus = parseInt(pathsToShow)+1;
	$("#hid" + pathsCountControl + "ToShow").val(pathsToShowPlus);

	var suffix = pathsToShow + '_';
	
	//console.log('Option:' + '|' + suffix + '|'+ '|' + pathsToShow + '|' + pathsToShowPlus);
	
	var newHtml = replaceAllInString(replaceAllInString(replaceAllInString($('#divHtmlNewOption').html(), 'tmpCount', pathsToShow), 
		'tmpCntPlus', pathsToShowPlus), 'tmpSuffix', suffix);

	$('#sectionoption').append(newHtml);

	for(ofr=0;ofr<offersToShow; ofr++)
		writeOfferHtml(suffix, suffix+ofr);
	initializeTooltips();
}

function addPath()
{
	var destinationToShow = $("#hidDestinationToShow").val();
	var offersToShow = $("#hidOffersToShow").val();
	var pathsToShow = $("#hidPathsToShow").val();
	var pathsToShowPlus = parseInt(pathsToShow)+1;
	$("#hidPathsToShow").val(pathsToShowPlus);

	var suffix = pathsToShow + '_';
	
	//console.log('Option:' + '|' + suffix + '|' + pathsToShow + '|' + pathsToShowPlus);
	
	var newHtml = replaceAllInString(replaceAllInString(replaceAllInString($('#divHtmlNewPath').html(), 'tmpCount', pathsToShow), 
		'tmpCntPlus', pathsToShowPlus), 'tmpSuffix', suffix);

	$('#divDestinations').append(newHtml);

	for(lp=0;lp<destinationToShow; lp++)
		writeLandingPageHtml(suffix, suffix+lp);
	for(ofr=0;ofr<offersToShow; ofr++)
		writeOfferHtml(suffix, suffix+ofr);
	initializeTooltips();
}

function addLevel()
{
	var destinationToShow = $("#hidDestinationToShow").val();
	var pathsToShow = $("#hidPathsToShow").val();
	var pathsToShowPlus = parseInt(pathsToShow)+1;
	$("#hidPathsToShow").val(pathsToShowPlus);

	var suffix = pathsToShow + '_';
	
	//console.log('Option:' + '|' + suffix + '|' + pathsToShow + '|' + pathsToShowPlus);
	
	var newHtml = replaceAllInString(replaceAllInString(replaceAllInString($('#divHtmlNewLevel').html(), 'tmpCount', pathsToShow), 
		'tmpCntPlus', pathsToShowPlus), 'tmpSuffix', suffix);

	$('#sectionlevel').append(newHtml);

	for (lp = 0; lp < destinationToShow; lp++)
		writeLandingPageHtml(suffix, suffix + lp, false, false);
	initializeTooltips();
}

function addEmail()
{
	var destinationToShow = $("#hidDestinationToShow").val();
	var offersToShow = $("#hidOffersToShow").val();
	var pathsToShow = $("#hidPathsToShow").val();
	var pathsToShowPlus = parseInt(pathsToShow)+1;
	$("#hidPathsToShow").val(pathsToShowPlus);

	var suffix = pathsToShow + '_';
	
	//console.log('Option:' + '|' + suffix + '|' + pathsToShow + '|' + pathsToShowPlus);
	
	var newHtml = replaceAllInString(replaceAllInString(replaceAllInString($('#divHtmlNewEmail').html(), 'tmpCount', pathsToShow), 
		'tmpCntPlus', pathsToShowPlus), 'tmpSuffix', suffix);

	$('#divDestinations').append(newHtml);

	for(lp=0;lp<destinationToShow; lp++)
		writeLandingPageHtml(suffix, suffix+lp);
	for(ofr=0;ofr<offersToShow; ofr++)
		writeOfferHtml(suffix, suffix+ofr);
	initializeTooltips();
}

function addDestinationDirectLink(incrLP, incrOffer)
{
	$("#chkBlankPages").prop("checked", false);
	if (incrLP>0)
		addLandingPage();
	if (incrOffer>0)
		addOffer();
	InitializeCallsNewPage();
}

function addDestinationMultipleOptions(incrLP, incrOffer, incrPath)
{
	$("#chkBlankPages").prop("checked", false);
	if (incrLP>0)
		addLandingPage();
	if (incrOffer>0)
		addMultipleOffers();
	if (incrPath)
		addOption();
	InitializeCallsNewPage();
}

function addDestinationMultiplePaths(incrLP, incrOffer, incrPath)
{
	$("#chkBlankPages").prop("checked", false);
	if (incrLP>0)
		addMultipleLPs();
	if (incrOffer>0)
		addMultipleOffers();
	if (incrPath)
		addPath();
	InitializeCallsNewPage();
}

function addDestinationPageSequence(incrLP, incrOffer, incrPath, incrOption)
{
	$("#chkBlankPages").prop("checked", false);
	if (incrLP>0)
		addMultipleLPs(true);
	if (incrOffer>0)
		addMultipleOffers('lps');
	if (incrPath)
		addLevel();
	if (incrOption)
		addOption("Options");
	InitializeCallsNewPage();
}

function addDestinationLeadCapture(incrLP, incrOffer)
{

	$("#chkBlankPages").prop("checked", false);
	if (incrLP>0)
	{
		var destinationToShow = $("#hidDestinationToShow").val();
		writeLandingPageHtml('',destinationToShow);
		addLandingPage('', true);
	}
	if (incrOffer>0)
		addOffer();
	InitializeCallsNewPage();
}

function addDestinationEmailFollowUp(incrLP, incrOffer, incrPath)
{

	$("#chkBlankPages").prop("checked", false);
	if (incrLP>0)
		addMultipleLPs();
	if (incrOffer>0)
		addMultipleOffers();
	if (incrPath)
		addEmail();
	InitializeCallsNewPage();
}

function addDestinationDirectLinkQk(incrLP, incrOffer)
{
	if (incrLP>0)
		addLandingPageQk();
	if (incrOffer>0)
		addOfferQk();
	InitializeCallsNewPageQk();
}

function addLandingPageQk(suffixParam, isAfterOptIn)
{
	var suffix = typeof suffixParam !== 'undefined' ? suffixParam : '';
	var destinationToShow = $("#hidDestinationToShow").val();
	$("#hidDestinationToShow").val(parseInt(destinationToShow)+1);

	var completeSuffix = suffix + destinationToShow;
	writeLandingPageHtmlQk(suffix, completeSuffix, isAfterOptIn);
}

function writeLandingPageHtmlQk(suffix, completeSuffix, isAfterOptIn, showDirecTrafficIconParam)
{
	//console.log('new LP' + (isAfterOptIn ? "After" : "") + '|' + suffix + '|' + completeSuffix + '|');
	var shortType='lp';
	var longType='LP';
	var showDirecTrafficIcon = typeof showDirecTrafficIconParam !== 'undefined' ? showDirecTrafficIconParam : true;
	if (typeof isAfterOptIn !== 'undefined' && isAfterOptIn==true)
	{
		shortType='ao';
		longType='After';
		showDirecTrafficIcon = false;
	}
	var hidAssignAutoIDsControl = $get("hidAssignAutoIDs");
	var pageID = hidAssignAutoIDsControl != null && hidAssignAutoIDsControl.value == 1 ? GeneratePageID(1) : 0;
	//completeSuffix = longType + completeSuffix;

	var newHtml = replaceAllInString(replaceAllInString(replaceAllInString($('#divHtmlNew' + shortType).html(), 'tmpCount', completeSuffix), 
		'tmpSuffix', ""), 'tmpDefaultID', pageID);
	if (!showDirecTrafficIcon)
	{
		newHtml = newHtml.replace("modaldirecttraffic\"", "modaldirecttraffic\" style=\"display:none\"");
	}
	$('#section'+shortType+suffix).append(newHtml);
}

function addOfferQk(suffixParam)
{
	var suffix = typeof suffixParam !== 'undefined' ? suffixParam : '';

	var offersToShow = $("#hidOffersToShow").val();
	$("#hidOffersToShow").val(parseInt(offersToShow)+1);

	var completeSuffix = suffix + offersToShow;
	writeOfferHtmlQk(suffix, completeSuffix)
}

function writeOfferHtmlQk(suffix, completeSuffix)
{
	//console.log('newOffer' + '|' + suffix + '|' + completeSuffix + '|');
	var hidAssignAutoIDsControl = $get("hidAssignAutoIDs");
	var pageID = hidAssignAutoIDsControl != null && hidAssignAutoIDsControl.value == 1 ? GeneratePageID(1001) : 0;

	var newHtml = replaceAllInString(replaceAllInString(replaceAllInString($('#divHtmlNewOffer').html(), 'tmpCount', completeSuffix), 
		'tmpSuffix', ""), 'tmpDefaultID', pageID);

	$('#sectionoffer'+suffix).append(newHtml);
}

function addExtraToken()
{
	$("button").tooltip('hide');
	var GlobalExtraTokensNumber = $('#hidExtraTokensNumber').length>0 ? $('#hidExtraTokensNumber').val() : 2;
	var extraTokensToShow = parseInt($("#hidExtraTokensToShow").val()) + 1;
	if (extraTokensToShow > GlobalExtraTokensNumber)
		return;
	$("#hidExtraTokensToShow").val(extraTokensToShow);
	var newHtml = replaceAllInString($('#divHtmlNewTokenTemplate').html(), 'tmpCount', extraTokensToShow);
	$("#divExtraTokensContainer").append(newHtml);
	
	if (extraTokensToShow >= GlobalExtraTokensNumber)
		$("#divAddExtraToken").hide();
		
	initializeIcheckControls();
}

function addExtraTokenSources()
{
	$("button").tooltip('hide');
	var currentTokenNumber = parseInt($("#hidExtraTokensToShow").val());
	var extraTokensToShow = parseInt(currentTokenNumber) + 1;
	$("#hidExtraTokensToShow").val(extraTokensToShow);
	var newHtml = replaceAllInString(replaceAllInString($('#divHtmlNewTokenTemplate').html(), 'tmpCount', extraTokensToShow), 'tmpIndex', currentTokenNumber);
	$("#divExtraTokensContainer").append(newHtml);
}

function addTracking()
{
	var currentPixelNumber = $("#hidPixelsToShow").val();
	var pixelsToShow = parseInt(currentPixelNumber) + 1;
	$("#hidPixelsToShow").val(pixelsToShow);
	var newHtml = replaceAllInString($('#divHtmlNewAdditionalPixel').html(), 'tmpCount', currentPixelNumber);
	$('#divTrackingsContainer').append(newHtml);
	initializeAdditionalOverlayTokens();
}

function addMVVariation(groupID, snippetID)
{
	$("button").tooltip('hide');
	var suffix = groupID + '_' + snippetID;
	var variationsToShow = parseInt($("#hidVariationsMax" + suffix).val()) + 1;
	$("#hidVariationsMax" + suffix).val(variationsToShow);
	var newHtml = replaceAllInString(replaceAllInString(replaceAllInString($('#divHtmlNewVariation').html(), 'tmpVarK', groupID), 'tmpVarI', snippetID), 'tmpVarJ', variationsToShow);
	$("#divMVSnippetVariations" + suffix).append(newHtml);
	//setTimeout(initializeTooltips, 300);
	initializeTooltips();
	initializeMVParamsOverlayTokens();
}

function addMVSnippet(groupID)
{
	var suffix = groupID;
	var snippetsToShow = parseInt($("#hidSnippetsMax" + suffix).val()) + 1;
	$("#hidSnippetsMax" + suffix).val(snippetsToShow);
	var assignedTokens = JSON.parse($("#hidAssignedTokens").val());
	var assignedMessage = assignedTokens[snippetsToShow] != null ? 'Assigned to Extra Token ' + assignedTokens[snippetsToShow] : '<span class="rowMVnotassigned">Not Assigned to an Extra Token</span>';
	var newHtml = replaceAllInString(replaceAllInString(replaceAllInString($('#divHtmlNewSnippet').html(), 'tmpVarK', groupID), 'tmpVarI', snippetsToShow), 'tmpAssignedMessage', assignedMessage);
	$("#divMVGroupSnippets" + suffix).append(newHtml);
	//addMVVariation(groupID, snippetsToShow);
	initializeTooltips();
	initializeMVParamsOverlayTokens();
}

function addMVGroup()
{
	var groupsToShow = parseInt($("#hidGroupsMax").val()) + 1;
	$("#hidGroupsMax").val(groupsToShow);
	var newHtml = replaceAllInString($('#divHtmlNewGroup').html(), 'tmpVarK', groupsToShow);
	$("#divMVGroups").append(newHtml);
	//addMVSnippet(groupsToShow);
	initializeTooltips();
	initializeMVParamsOverlayTokens();
}

function ajaxChangeConditionValue()
{
   var rowID = $(this).attr('id').replace('ddlValue','');
   if ($('.ddlValue' + rowID +' option:selected').length > 0)
   {
	   $('#txtValue' + rowID).val($('.ddlValue' + rowID +' option:selected').toArray()
	   	.map(item => item.text.indexOf(" -> ") != -1 ? item.text.substring(0,item.text.indexOf(" -> ")).trim() : item.text).join());
	   /*$('#txtValue' + rowID).val($('.ddlValue' + rowID +' option:selected').map(function() {
		var itemValue = $(this).text();
		if (itemValue.indexOf(" -> ") != -1)
			itemValue = itemValue.substring(0,itemValue.indexOf(" -> ")).trim();
		return itemValue;
	  }).get().join());*/
   }
}

function addRedirectCondition(reloadListParam)
{
	var reloadList = typeof reloadListParam !== 'undefined' ? reloadListParam : true;
	var conditionCount = $('#hidConditionsToShow').val();
	var oldConditionCount = conditionCount;

	var newHtml = replaceAllInString($('#divHtmlNewRedirectProfile').html(), 'tmpCount', conditionCount);
	$("#divConditions").append(newHtml);
	
	initializeSumoSelectRedirectConditon('.ddlValue' + conditionCount);

	conditionCount++;
	$('#hidConditionsToShow').val(conditionCount);
	if (reloadList)
		ajaxChangeConditionType($get('ddlCondition' + oldConditionCount));
}

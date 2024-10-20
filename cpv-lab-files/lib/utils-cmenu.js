function contextMenuRedirect()
{
	if (menuNewWindow)
	{
		var win = window.open(menuRedirectPage, '_blank');
		if (win)
			win.focus();
	}
	else
	{
		window.location.href = menuRedirectPage;
	}
}

function cmKeyword(inlineCampaign, statsText, visitorStatsText)
{
	var statsTextValue = typeof statsText !== 'undefined' ? statsText : "Campaign Stats";
	var visitorStatsTextValue = typeof visitorStatsText !== 'undefined' ? visitorStatsText : "Visitor Stats";
    $.contextMenu( {
        selector: '.cmkey',
        callback: function(key, options) {
			menuRedirectPage = '';
			menuNewWindow = false;
			if ($(this).find("span").length == 0)
				return;
			var pageName = '';
			switch(key)
			{
				case "sta": menuRedirectPage="stats.php?"; break;
				case "trnt": menuRedirectPage="trends-time.php?"; break;
				case "trnw": menuRedirectPage="trends-dayofweek.php?"; break;
				case "trnd": menuRedirectPage="trends-days.php?"; break;
				case "trnh": menuRedirectPage="trends-heatmap.php?"; break;
				case "vst": menuRedirectPage="visitor-stats.php?"; break;
			}
			if (menuRedirectPage == '')
				return;

			if (inlineCampaign)
			{
				var currentIdParts = $(this).find("span")[0].id.replace("tk","").split("_");
				if (currentIdParts.length<2)
					return;
				var objectID = currentIdParts[0];
				var campaignID = currentIdParts[1];
			}
			else
			{
				var objectID = $(this).find("span")[0].id.replace("tk","");
				var campaignID = $('#hidCampaignID').val();
			}

			menuRedirectPage += "camp=" + campaignID +
					(key == "vst" ? "&target=" + encodeURIComponent($(this).find("span")[0].innerText.trim()) : "&ft=" + objectID);
			setTimeout(contextMenuRedirect, 300);
        } ,
        items: {

            "sta": { name: statsTextValue, type: "advanced", advClass: "entypo entypo-chart-area", addNewWindow: true } ,
            "trnt": { name: "Trends by Time", type: "advanced", advClass: "entypo entypo-clock", addNewWindow: true } ,
            "trnw": { name: "Trends by Day of Week", type: "advanced", advClass: "entypo entypo-calendar", addNewWindow: true } ,
            "trnd": { name: "Trends by Days", type: "advanced", advClass: "fa fa-calendar", addNewWindow: true } ,
            "trnh": { name: "Trends Heatmap", type: "advanced", advClass: "entypo entypo-thermometer", addNewWindow: true } ,
            "vst": { name: visitorStatsTextValue, type: "advanced", advClass: "entypo entypo-eye", addNewWindow: true }
			}
		}
	);
}

function cmLandingPage(inlineCampaign, statsText)
{
	cmDestination(inlineCampaign, '.cmlnd', 'fl', 'tl', statsText);
}

function cmOffer(inlineCampaign, statsText)
{
	cmDestination(inlineCampaign, '.cmofr', 'fo', 'to', statsText);
}

function cmDestination(inlineCampaign, selector, filterParameter, spanParameter, statsText)
{
	var statsTextValue = typeof statsText !== 'undefined' ? statsText : "Campaign Stats";
	$.contextMenu( {
        selector: selector,
        callback: function(key, options) {
			menuRedirectPage = '';
			menuNewWindow = false;
			if ($(this).find("span").length == 0)
				return;
			var pageName = '';
			switch(key)
			{
				case "sta": menuRedirectPage="stats.php?"; break;
				case "trnt": menuRedirectPage="trends-time.php?"; break;
				case "trnw": menuRedirectPage="trends-dayofweek.php?"; break;
				case "trnd": menuRedirectPage="trends-days.php?"; break;
				case "trnh": menuRedirectPage="trends-heatmap.php?"; break;
			}
			if (menuRedirectPage == '')
				return;

			if (inlineCampaign)
			{
				var currentIdParts = $(this).find("span")[0].id.replace(spanParameter,"").split("_");
				if (currentIdParts.length<2)
					return;
				var objectID = currentIdParts[0];
				var campaignID = currentIdParts[1];
			}
			else
			{
				var objectID = $(this).find("span")[0].id.replace(spanParameter,"");
				var campaignID = $('#hidCampaignID').val();
			}

			menuRedirectPage += "camp=" + campaignID + "&" + filterParameter + "=" + objectID;
			setTimeout(contextMenuRedirect, 300);
        } ,
        items: {

            "sta": { name: statsTextValue, type: "advanced", advClass: "entypo entypo-chart-area", addNewWindow: true } ,
            "trnt": { name: "Trends by Time", type: "advanced", advClass: "entypo entypo-clock", addNewWindow: true } ,
            "trnw": { name: "Trends by Day of Week", type: "advanced", advClass: "entypo entypo-calendar", addNewWindow: true } ,
            "trnd": { name: "Trends by Days", type: "advanced", advClass: "fa fa-calendar", addNewWindow: true } ,
            "trnh": { name: "Trends Heatmap", type: "advanced", advClass: "entypo entypo-thermometer", addNewWindow: true } ,
			}
		} );
}

function cmCampaign(withStats, withReports, inlineCampaign)
{
	var itemsObject = {
			"edit": { name: "Edit Campaign", type: "advanced", advClass: "fa fa-edit", addNewWindow: true } ,
            "rep": { name: "Campaign Reports", type: "advanced", advClass: "entypo entypo-chart-bar", addNewWindow: true } ,
			"sta": { name: "Campaign Stats", type: "advanced", advClass: "entypo entypo-chart-area", addNewWindow: true } ,
            "cnv": { name: "Conversions List", type: "advanced", advClass: "fa fa-flag", addNewWindow: true } ,
            "geo": { name: "GEO-Stats", type: "advanced", advClass: "fa fa-globe", addNewWindow: true } ,
            "mob": { name: "Mobile Audience", type: "advanced", advClass: "fa fa-mobile", advStyle: "margin-left:2px;", addNewWindow: true } ,
            "opt": { name: "Optimize", type: "advanced", advClass: "fa fa-lightbulb-o", advStyle: "margin-left:1px;", addNewWindow: true } ,
            "rdp": { name: "Redirect Profiles", type: "advanced", advClass: "fa fa-external-link-square", addNewWindow: true } ,
            "trn": { name: "Trends", type: "advanced", advClass: "fa fa-history", addNewWindow: true } ,
            "vst": { name: "Visitor Stats", type: "advanced", advClass: "entypo entypo-eye", addNewWindow: true }
			};
	if (!withStats)
		delete itemsObject.sta;
	if (!withReports)
		delete itemsObject.rep;
	if (getUserRoleID() == 3)
	{
		delete itemsObject.opt;
		delete itemsObject.rdp;
	}

	$.contextMenu( {
        selector: '.cmcmp',
        callback: function(key, options) {
			menuRedirectPage = '';
			menuNewWindow = false;
			if ($(this).find("span").length == 0)
				return;
			var pageName = '';
			switch(key)
			{
				case "edit": menuRedirectPage="campaign-edit.php"; break;
				case "rep": menuRedirectPage="reports.php"; break;
				case "sta": menuRedirectPage="stats.php"; break;
				case "cnv": menuRedirectPage="conversions-list.php"; break;
				case "geo": menuRedirectPage="geo-stats.php"; break;
				case "mob": menuRedirectPage="mobile-audience.php"; break;
				case "opt": menuRedirectPage="optimize.php"; break;
				case "rdp": menuRedirectPage="redirect-profiles.php"; break;
				case "trn": menuRedirectPage="trends-time.php"; break;
				case "vst": menuRedirectPage="visitor-stats.php"; break;
			}
			if (menuRedirectPage == '')
				return;

			var campaignID = inlineCampaign ? $(this).find("span")[0].id.replace("tc","") : $('#hidCampaignID').val();

			menuRedirectPage += "?camp=" + campaignID;
			setTimeout(contextMenuRedirect, 300);
        } ,
        items: itemsObject
		} );
}

function cmDate(inlineCampaign)
{
	$.contextMenu( {
        selector: '.cmdat',
        callback: function(key, options) {
			menuRedirectPage = '';
			menuNewWindow = false;
			if ($(this).find("span").length == 0)
				return;
			var pageName = '';
			switch(key)
			{
				case "trnt": menuRedirectPage="trends-time.php?"; break;
				case "trnh": menuRedirectPage="trends-heatmap.php?"; break;
			}
			if (menuRedirectPage == '')
				return;

			if (inlineCampaign)
			{
				var currentIdParts = $(this).find("span")[0].id.replace("td","").split("_");
				if (currentIdParts.length<2)
					return;
				var objectID = currentIdParts[0];
				var campaignID = currentIdParts[1];
			}
			else
			{
				var objectID = $(this).find("span")[0].id.replace("td","");
				var campaignID = $('#hidCampaignID').val();
			}

			menuRedirectPage += "camp=" + campaignID + "&int=4&intfrom=" + encodeURIComponent(objectID) + "&intto=" + encodeURIComponent(objectID);
			setTimeout(contextMenuRedirect, 300);
        } ,
        items: {
            "trnt": { name: "Trends by Time", type: "advanced", advClass: "entypo entypo-clock", addNewWindow: true } ,
            "trnh": { name: "Trends Heatmap", type: "advanced", advClass: "entypo entypo-thermometer", addNewWindow: true } ,
			}
		} );
}

function cmIpAddress(inlineCampaign, visitorStatsText)
{
	var visitorStatsTextValue = typeof visitorStatsText !== 'undefined' ? visitorStatsText : "Visitor Stats";
	$.contextMenu( {
        selector: '.cmipa',
        callback: function(key, options) {
			menuRedirectPage = '';
			menuNewWindow = false;
			if ($(this).find("span").length == 0)
				return;
			var pageName = '';
			switch(key)
			{
				case "vst": menuRedirectPage="visitor-stats.php"; break;
			}
			if (menuRedirectPage == '')
				return;

			var campaignID = inlineCampaign ? $(this).find("span")[0].id.replace("ti","") : $('#hidCampaignID').val();

			menuRedirectPage += "?camp=" + campaignID + "&ip=" + $(this).find("span")[0].innerText.trim();
			setTimeout(contextMenuRedirect, 300);
        } ,
        items: {
			"vst": { name: visitorStatsTextValue, type: "advanced", advClass: "entypo entypo-eye", addNewWindow: true }
			}
		} );
}

function cmGeoCountry(inlineCampaign, visitorStatsText)
{
	cmGeoMetric(inlineCampaign, '.cmcnt', 'fct', 'tgc', true, visitorStatsText);
}

function cmGeoRegion(inlineCampaign)
{
	cmGeoMetric(inlineCampaign, '.cmreg', 'frt', 'tgr', false);
}

function cmGeoCity(inlineCampaign)
{
	cmGeoMetric(inlineCampaign, '.cmcty', 'ftt', 'tgt', false);
}

function cmGeoMetric(inlineCampaign, selector, filterParameter, spanParameter, withVisitorStats, visitorStatsText)
{
	var itemsObject = {
            "ged": { name: "GEO-Details", type: "advanced", advClass: "fa fa-globe", addNewWindow: true }
			};
	if (withVisitorStats)
	{
		var visitorStatsTextValue = typeof visitorStatsText !== 'undefined' ? visitorStatsText : "Visitor Stats";
		itemsObject.vst = { name: visitorStatsTextValue, type: "advanced", advClass: "entypo entypo-eye", addNewWindow: true };
	}
	$.contextMenu( {
        selector: selector,
        callback: function(key, options) {
			menuRedirectPage = '';
			menuNewWindow = false;
			if ($(this).find("span").length == 0)
				return;
			var pageName = '';
			switch(key)
			{
				case "ged": menuRedirectPage="geo-details.php"; break;
				case "vst": menuRedirectPage="visitor-stats.php"; break;
			}
			if (menuRedirectPage == '')
				return;

			var campaignID = inlineCampaign ? $(this).find("span")[0].id.replace(spanParameter,"") : $('#hidCampaignID').val();

			menuRedirectPage += "?camp=" + campaignID + "&" + (key == "vst" ? "country" : filterParameter) + "=" + encodeURIComponent($(this).find("span")[0].innerText.trim());
			setTimeout(contextMenuRedirect, 300);
        } ,
        items: itemsObject
		} );
}

function getUserRoleID()
{
	return $('#hidUserRole').length>0 ? $('#hidUserRole').val() : 1;
}

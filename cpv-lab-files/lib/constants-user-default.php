<?php

if (!isset($GLOBALS['_CONSTANTS_USER_INC'])) {
    $GLOBALS['_CONSTANTS_USER_INC'] = 1;

    // The root URL of the CPV instance, including http:// or https://
    $GLOBALS['RootURL'] = "https://cli-XXXX.clprdr.com/";

    // The pattern to display dates inside the application
    $GLOBALS['DateFormat'] = "m/d/Y g:i A";

    // The pattern to display dates in the short format inside the application
    $GLOBALS['DateShortFormat'] = "m/d/Y";

    // The characters used as thousands and decimal separators in the exported CSV reports
    $GLOBALS['ThousandsSeparatorCSV'] = "";

    $GLOBALS['DecimalSeparatorCSV'] = ".";

    // The time without any activity in CPV after which you will be logged out (in seconds)
    $GLOBALS['SessionTimeout'] = 86400;

    // The general pages layout: 1 - Menu on top, 2 - Menu on the left side (minimized), 3 - Menu on the left side (hidden)
    $GLOBALS['PagesLayout'] = 2;

    // The default currency used to display reports
    $GLOBALS['DisplayCurrencyID'] = 1;

    // Assign Landing Page & Offer IDs automatically in the campaign setup page
    $GLOBALS['AssignAutoPageIDs'] = "true";

    // The interval to keep the tracking cookie (in seconds)
    //   86400 -  1 day
    //  432000 -  5 days
    //  864000 - 10 days
    // 1728000 - 20 days
    // 2592000 - 30 days
    $GLOBALS['CookieTimeout'] = 2592000;

    // Value to use for the SameSite Attribute passed in tracking cookie. Should be set to None for best tracking performances
    $GLOBALS['ThirdPartyCookieSameSite'] = "None";

    // Whether to send the Secure attribute in the tracking cookie or not
    $GLOBALS['ThirdPartyCookieSecure'] = "true";

    // Whether to set the tracking cookie on the root domain (instead on subdomain)
    $GLOBALS['ThirdPartyCookieRootDomain'] = "true";

    // The algorithm used for landing page and offer rotation
    // 1 - Exact Rotation - get the exact share% defined in campaign (slower)
    // 2 - Probabilistic Rotation - follow the share% in a probabilistic way (faster)
    $GLOBALS['PageRotationMethod'] = 2;

    // Ignore duplicate clicks from same visitor coming in quick succession (default: 0)
    $GLOBALS['SecondsIgnoreDuplicateClicks'] = 0;

    // Name of the base.php page (Campaign URL)
    $GLOBALS['BasePhpPage'] = "base.php";

    // Name of the base2.php page (redirect to next level or offer)
    $GLOBALS['Base2PhpPage'] = "base2.php";

    // Name of the base3.php page (redirect to offer in LPS campaigns)
    $GLOBALS['Base3PhpPage'] = "base3.php";

    // Name of the adclick.php page (Tracking Pixel and Postback URL)
    $GLOBALS['AdclickPhpPage'] = "adclick.php";

    // Name of the adclickf.php page (Tracking Pixel - iframe version)
    $GLOBALS['AdclickfPhpPage'] = "adclickf.php";

    // Name of the adclicks.php page (Tracking Pixel - script version)
    $GLOBALS['AdclicksPhpPage'] = "adclicks.php";

    // Name of the adsub.php page (Tracking Pixel for subscribers/leads)
    $GLOBALS['AdsubPhpPage'] = "adsub.php";

    // Name of the page that performs the Double Meta Refresh Redirects
    $GLOBALS['DoubleMetaRedirectPage'] = "baseredirect.php";

    // Name of the page that performs the Base Loop Redirects
    $GLOBALS['LoopRedirectPage'] = "baseloopredirect.php";

    // The Key used to authenticate Google Ads requests
    $GLOBALS['GoogleConversionKey'] = "googlekey";

    // The Key used to authenticate Microsoft (Bing) Ads requests
    $GLOBALS['BingConversionKey'] = "bingkey";

    // The Clickbank Secret Key used in your Clickbank account
    $GLOBALS['ClickbankSecretKey'] = "";

    // Statuses sent from Clickbank that will mark a conversion in CPV
    $GLOBALS['ClickbankSaleStatus'] = array("SALE", "JV_SALE", "BILL", "JV_BILL");

    // 'true' if logging for Direct Traffic requests is enabled
    $GLOBALS['DirectTrafficLogging'] = "false";

    // Request method to use for 3rd party pixel calls. Possible values:
    // 'auto' - default option; CPV automatically selects the request method based on server settings
    // 'contents' - use the file_get_contents PHP function for requests
    // 'curl' - use cURL for requests
    $GLOBALS['RequestMethod'] = "auto";

    // 'true' if referrers should be captured as full URL, including the query string
    $GLOBALS['CaptureFullReferrer'] = "false";

    // if the visitors' IP address is passed using a custom header, specify the header name here. Useful when running reverse proxies
    $GLOBALS['CustomIpHeader'] = "";

    // 'false' if parameters appended by the base pages should not be URL encoded; default value is 'true'
    $GLOBALS['UrlEncodeParameters'] = "true";

    // The maximum number of items that will be displayed in the multiselect controls
    $GLOBALS['MaxMultiselectItems'] = 1000;

    // The maximum number of characters to display in URL columns. Useful for keeping clean reports and avoid too long columns
    $GLOBALS['CharLimitUrlColumns'] = 100;

    // The Mobile Detection Method Used: 1 - Legacy Mobile Database, 3 - New Mobile Database
    $GLOBALS['MobileDetection'] = 3;

    // The Computer Detection Method Used: 1 - Main Computer Database, 3 - Alternative Computer Database
    $GLOBALS['ComputerDetection'] = 3;

    // Set to '1' if you want to capture the cost as 0 for bot traffic; set to '0' if the campaign CPV/CPC should be used for bot traffic
    $GLOBALS['NoCostForBots'] = 1;

    // Set to 1 to ignore Prefetch requests (usually preloading requests and bot requests) that may artificially increase visitor count
    $GLOBALS['IgnorePrefetchRequests'] = 0;

    // Maximum allowed time before the landing page becomes inaccessible (in seconds)
    $GLOBALS['LpProtectTimeout'] = 300;

    // The level of LP protection - based on several metrics: 1 - IP Address + UserAgent + Time, 2 - UserAgent + Time, 3 - Time
    $GLOBALS['LpProtectLevel'] = 2;

    // Default message to show for unauthorized LP access
    $GLOBALS['LpProtectDefaultMessage'] = "No Access";

    // The SMTP (Email) Server to use for sending emails
    $GLOBALS['MailHost'] = "";

    // The SMTP Port used by the SMTP Server
    $GLOBALS['MailPort'] = "";

    // The Email Login or Username used to send emails
    $GLOBALS['MailUsername'] = "";

    // The Password for the Email Account
    $GLOBALS['MailPassword'] = "";

    // SMTP Transport Level, most of the times 'TLS' (default: TLS)
    $GLOBALS['MailTransport'] = "tls";

    // The Name that will appear in the From field of sent emails
    $GLOBALS['MailFromName'] = "CPV Instance";

    // The Email Address that will appear in the From field of sent emails
    $GLOBALS['MailFromEmail'] = "";

    // The Subject for the Notification Emails
    $GLOBALS['MailSubjectNotifications'] = "CPV Notifications";

    // Send HTML emails or only Plain-text emails
    $GLOBALS['MailSendHtml'] = "false";

    // Use SMTP Authentication when sending emails. Almost always needs to be checked.
    $GLOBALS['MailSMTPAuth'] = "false";

    // Use isSMTP Feature when sending emails. Enable this only if your email keeps failing and you know your credentials are correct
    $GLOBALS['MailIsSMTPFeature'] = "false";

    // Controls if cached data are used in application ('true' or 'false' values); you must also setup the Cache Cron job
    $GLOBALS['UseDataCaching'] = "false";

    // The maximum number of clicks processed in a single Cron job execution
    $GLOBALS['CachingMaxItems'] = 10000;

    // The delay in aggregating clicks - clicks from the last xxx seconds won't be aggregated yet - in seconds
    //     300 -  5 minutes
    //     600 - 10 minutes
    //     900 - 15 minutes
    //    1800 - 30 minutes
    $GLOBALS['CachingDelay'] = 600;

    // The interval after which clicks are removed from the 'clicks' table (after these clicks have been aggregated) - in seconds
    //   86400 -  1 day
    //  432000 -  5 days
    //  864000 - 10 days
    // 1728000 - 20 days
    // 2592000 - 30 days
    // 7776000 - 90 days
    $GLOBALS['CachingRemoveTime'] = 2592000;

    // The interval after which conversions cannot be marked in the aggregated data - in seconds
    //   86400 -  1 day
    //  432000 -  5 days
    //  864000 - 10 days
    // 1728000 - 20 days
    // 2592000 - 30 days
    // 7776000 - 90 days
    $GLOBALS['CachingRemoveCacheRelation'] = 2592000;

    // Controls if the GEO details are pulled by the Cron job; otherwise they are captured by the base.php page
    $GLOBALS['UseGeoCron'] = "false";

    // The maximum number of clicks geo-encoded in a single Cron job execution
    $GLOBALS['GeoMaxItems'] = 2000;

} // end of inclusive if
?>
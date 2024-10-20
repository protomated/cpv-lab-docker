{include file="partMessage.tpl" errorMessageNotAutoclose=$errorMessageType==1 }

<div class="alert alert-info alert-has-icon alert-dismissible show fade">
    <div class="alert-icon"><i class="ion ion-ios-lightbulb-outline"></i></div>
    <div class="alert-body">
        <button class="close" data-dismiss="alert">
            <span>×</span>
        </button>
        Edit only the configuration settings that you are sure about. Leave everything else to default.
    </div>
</div>
<div class="card" id="wdgConfigurationAppearance">
    <div class="card-header">
        <h4>General Appearance Settings</h4>
    </div>
    <div class="card-body">
        <div class="row align-items-end">
            <div class="col-xl-4 col-lg-6 form-group">
                <label>Root URL for CPV Lab Instance {include file='partTooltip.tpl' tooltipID=323}</label>
                <input name="txtRootURL" type="text" class="form-control"
                       value="{$currentSettings.RootURL|default:$rootURL}"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Date/Time Format {include file='partTooltip.tpl' tooltipID=301}</label>
                <input name="txtDateFormat" type="text" class="form-control"
                       value="{$currentSettings.DateFormat|default:'m/d/Y g:i A'}"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Short Date/Time Format {include file='partTooltip.tpl' tooltipID=302}</label>
                <input name="txtDateShortFormat" type="text" class="form-control"
                       value="{$currentSettings.DateShortFormat|default:'m/d/Y g:i A'}"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Thousands Separator in CSV files {include file='partTooltip.tpl' tooltipID=304}</label>
                <input name="txtThousandsSeparatorCSV" type="text" class="form-control"
                       value="{$currentSettings.ThousandsSeparatorCSV|default:''}"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Decimal Separator in CSV files {include file='partTooltip.tpl' tooltipID=305}</label>
                <input name="txtDecimalSeparatorCSV" type="text" class="form-control"
                       value="{$currentSettings.DecimalSeparatorCSV|default:'.'}"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Character limit for URL columns {include file='partTooltip.tpl' tooltipID=321}</label>
                <input name="txtCharLimitUrlColumns" type="text" class="form-control"
                       value="{$currentSettings.CharLimitUrlColumns|default:'100'}"
                       onblur="validateInt(this,10,10000)"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Maximum Multiselect items {include file='partTooltip.tpl' tooltipID=303}</label>
                <input name="txtMaxMultiselectItems" type="text" class="form-control"
                       value="{$currentSettings.MaxMultiselectItems|default:'1000'}"
                       onblur="validateInt(this,50,10000)"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Application Session Timeout {include file='partTooltip.tpl' tooltipID=322}</label>
                <input name="txtSessionTimeout" type="text" class="form-control"
                       value="{$currentSettings.SessionTimeout|default:'30'}" onblur="validateInt(this,5,50000)"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Pages Layout {include file='partTooltip.tpl' tooltipID=324}</label>
                <select name="txtPagesLayout" class="form-control">
                    {html_options options=$pagesLayoutOptions selected=$currentSettings.PagesLayout|default:'2'}
                </select>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Default Currency {include file='partTooltip.tpl' tooltipID=329}</label>
                <select name="txtDisplayCurrencyID" class="form-control">
                    {html_options options=$currencyOptions selected=$currentSettings.DisplayCurrencyID|default:'1'}
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-4 col-sm-6">

                <div class="form-group d-flex justify-content-between align-items-center">
                    <span class="custom-switch-description ml-0">Auto-assign Page IDs {include file='partTooltip.tpl' tooltipID=320}</span>
                    <label class="custom-switch">
                        <input type="checkbox" class="custom-switch-input" name="txtAssignAutoPageIDs"
                               {if $currentSettings.AssignAutoPageIDs|default:true}checked="checked"{/if}>
                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>
            </div>
        </div> <!-- row -->
    </div>
</div>

<div class="card">
    <div class="card-header">
        <h4>Tracking Settings</h4>
    </div>

    <div class="card-body">
        <div class="row align-items-end">
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Tracking Cookie Lifetime {include file='partTooltip.tpl' tooltipID=306}</label>
                <select name="txtCookieTimeout" class="form-control">
                    {html_options options=$cookieTimeoutOptions selected=$currentSettings.CookieTimeout|default:30}
                </select>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Tracking Cookie SameSite value {include file='partTooltip.tpl' tooltipID=318}</label>
                <input name="txtThirdPartyCookieSameSite" type="text" class="form-control"
                       value="{$currentSettings.ThirdPartyCookieSameSite|default:'None'}"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Pages Rotation Method {include file='partTooltip.tpl' tooltipID=326}</label>
                <select name="txtPageRotationMethod" class="form-control">
                    {html_options options=$pageRotationMethodOptions selected=$currentSettings.PageRotationMethod|default:2}
                </select>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Seconds to Ignore Duplicate Clicks {include file='partTooltip.tpl' tooltipID=330}</label>
                <input name="txtSecondsIgnoreDuplicateClicks" type="text" class="form-control"
                       value="{$currentSettings.SecondsIgnoreDuplicateClicks|default:'0'}"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Mobile Detection Method {include file='partTooltip.tpl' tooltipID=309}</label>
                {if $showupdstobj.alternatedatabases|default:0}
                    <br/>
                    <span class="text-muted updColor"><a
                                href="{if $iscldvrs|default:0}https://billing.stripe.com/p/login/9AQeWsa2Z32D8x2144{else}https://cpvlab.pro/pricing-signup.php?utm_source=starter-confb{/if}"
                                target="_blank">Upgrade NOW</a> to use Alternate Mobile Detection Method</span>
                {else}
                    <select name="txtMobileDetection" class="form-control">
                        {html_options options=$mobileDatabaseOptions selected=$currentSettings.MobileDetection|default:'3'}
                    </select>
                {/if}
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Computer Detection Method {include file='partTooltip.tpl' tooltipID=310}</label>
                {if $showupdstobj.alternatedatabases|default:0}
                    <br/>
                    <span class="text-muted updColor"><a
                                href="{if $iscldvrs|default:0}https://billing.stripe.com/p/login/9AQeWsa2Z32D8x2144{else}https://cpvlab.pro/pricing-signup.php?utm_source=starter-confb{/if}"
                                target="_blank">Upgrade NOW</a> to use Alternate Computer Detection Method</span>
                {else}
                    <select name="txtComputerDetection" class="form-control">
                        {html_options options=$computerDatabaseOptions selected=$currentSettings.ComputerDetection|default:'3'}
                    </select>
                {/if}
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>External Requests Method {include file='partTooltip.tpl' tooltipID=307}</label>
                <select name="txtRequestMethod" class="form-control">
                    {html_options options=$requestMethodOptions selected=$currentSettings.RequestMethod|default:'auto'}
                </select>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Custom Header for IP Address {include file='partTooltip.tpl' tooltipID=308}</label>
                <input name="txtCustomIpHeader" type="text" class="form-control"
                       value="{$currentSettings.CustomIpHeader|default:''}"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Clickbank Secret Key {include file='partTooltip.tpl' tooltipID=312}</label>
                <input name="txtClickbankSecretKey" type="text" class="form-control"
                       value="{$currentSettings.ClickbankSecretKey|default:''}"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Clickbank Sale Status {include file='partTooltip.tpl' tooltipID=313}</label>
                <input name="txtClickbankSaleStatus" type="text" class="form-control"
                       value="{$currentSettings.ClickbankSaleStatus|default:''}"/>
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Google Ads Conversion Key {include file='partTooltip.tpl' tooltipID=311}</label>
                {if $showupdstobj.googleconversions|default:0}
                    <br/>
                    <span class="text-muted updColor"><a
                                href="{if $iscldvrs|default:0}https://billing.stripe.com/p/login/9AQeWsa2Z32D8x2144{else}https://cpvlab.pro/pricing-signup.php?utm_source=starter-confg{/if}"
                                target="_blank">Upgrade NOW</a> to use Google Ads Integration</span>
                {else}
                    <input name="txtGoogleConversionKey" type="text" class="form-control"
                           value="{$currentSettings.GoogleConversionKey|default:''}"/>
                {/if}
            </div>
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Microsoft (Bing) Ads Conversion Key {include file='partTooltip.tpl' tooltipID=325}</label>
                {if $showupdstobj.bingconversions|default:0}
                    <br/>
                    <span class="text-muted updColor"><a
                                href="{if $iscldvrs|default:0}https://billing.stripe.com/p/login/9AQeWsa2Z32D8x2144{else}https://cpvlab.pro/pricing-signup.php?utm_source=starter-confb{/if}"
                                target="_blank">Upgrade NOW</a> to use Microsoft (Bing) Ads Integration</span>
                {else}
                    <input name="txtBingConversionKey" type="text" class="form-control"
                           value="{$currentSettings.BingConversionKey|default:''}"/>
                {/if}
            </div>
        </div>

        <div class="row">
            <div class="col-xl-4 col-sm-6">

                <div class="form-group d-flex justify-content-between align-items-center">
                    <span class="custom-switch-description ml-0">Secure Tracking Cookie {include file='partTooltip.tpl' tooltipID=319}</span>
                    <label class="custom-switch">
                        <input type="checkbox" class="custom-switch-input" name="txtThirdPartyCookieSecure"
                               {if $currentSettings.ThirdPartyCookieSecure|default:true}checked="checked"{/if}>
                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>

                <div class="form-group d-flex justify-content-between align-items-center">
                    <span class="custom-switch-description ml-0">Set Cookie on Root Domain {include file='partTooltip.tpl' tooltipID=328}</span>
                    <label class="custom-switch">
                        <input type="checkbox" class="custom-switch-input" name="txtThirdPartyCookieRootDomain"
                               {if $currentSettings.ThirdPartyCookieRootDomain|default:true}checked="checked"{/if}>
                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>

                <div class="form-group d-flex justify-content-between align-items-center">
                    <span class="custom-switch-description ml-0">Capture Full Referrer {include file='partTooltip.tpl' tooltipID=314}</span>
                    <label class="custom-switch">
                        <input type="checkbox" class="custom-switch-input" name="txtCaptureFullReferrer"
                               {if $currentSettings.CaptureFullReferrer|default:false}checked="checked"{/if}>
                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>

                <div class="form-group d-flex justify-content-between align-items-center">
                    <span class="custom-switch-description ml-0">Encode URL Params {include file='partTooltip.tpl' tooltipID=315}</span>
                    <label class="custom-switch">
                        <input type="checkbox" class="custom-switch-input" name="txtUrlEncodeParameters"
                               {if $currentSettings.UrlEncodeParameters|default:true}checked="checked"{/if}>
                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>

                <div class="form-group d-flex justify-content-between align-items-center">
                    <span class="custom-switch-description ml-0">Ignore Prefetch Requests {include file='partTooltip.tpl' tooltipID=327}</span>
                    <label class="custom-switch">
                        <input type="checkbox" class="custom-switch-input" name="txtIgnorePrefetchRequests"
                               {if $currentSettings.IgnorePrefetchRequests|default:0==1}checked="checked"{/if}>
                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>

                <div class="form-group d-flex justify-content-between align-items-center">
                    <span class="custom-switch-description ml-0">No Cost for Bots {include file='partTooltip.tpl' tooltipID=316}</span>
                    <label class="custom-switch">
                        <input type="checkbox" class="custom-switch-input" name="txtNoCostForBots"
                               {if $currentSettings.NoCostForBots|default:1==1}checked="checked"{/if}>
                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>

                <div class="form-group mb-0 d-flex justify-content-between align-items-center">
                    <span class="custom-switch-description ml-0">Direct Traffic Logging {include file='partTooltip.tpl' tooltipID=317}</span>
                    <label class="custom-switch">
                        <input type="checkbox" class="custom-switch-input" name="txtDirectTrafficLogging"
                               {if $currentSettings.DirectTrafficLogging|default:false}checked="checked"{/if}>
                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header">
        <h4>Landing Page Protection Settings</h4>
    </div>

    <div class="card-body">
        <div class="row align-items-end">
            {if $showupdstobj.landingpageprotection|default:0}
                <div class="col-12 form-group">
                    {include file='partUpdPage.tpl' name='Landing Page Protection'}
                </div>
            {else}
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>Protection Timeout (minutes) {include file='partTooltip.tpl' tooltipID=361}</label>
                    <input name="txtLpProtectTimeout" type="text" class="form-control"
                           value="{$currentSettings.LpProtectTimeout|default:'5'}"/>
                </div>
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>Protection Level {include file='partTooltip.tpl' tooltipID=362}</label>
                    <select name="txtLpProtectLevel" class="form-control">
                        {html_options options=$lpProtectLevelOptions selected=$currentSettings.LpProtectLevel|default:'2'}
                    </select>
                </div>
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>Default No-access Message {include file='partTooltip.tpl' tooltipID=363}</label>
                    <input name="txtLpProtectDefaultMessage" type="text" class="form-control"
                           value="{$currentSettings.LpProtectDefaultMessage|default:'No Access'}"/>
                </div>
            {/if}
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header">
        <h4>Page Name Settings</h4>
    </div>

    <div class="card-body">
        <div class="row">
            <div class="col-xl-4 col-sm-6 form-group">
                <label>Campaign URL Page {include file='partTooltip.tpl' tooltipID=331}</label>
                <input name="txtBasePhpPage" type="text" class="form-control"
                       value="{$currentSettings.BasePhpPage|default:'base.php'}"/>
            </div>

            <div class="col-xl-4 col-sm-6 form-group">
                <label>Offer Redirect Page {include file='partTooltip.tpl' tooltipID=332}</label>
                <input name="txtBase2PhpPage" type="text" class="form-control"
                       value="{$currentSettings.Base2PhpPage|default:'base2.php'}"/>
            </div>

            <div class="col-xl-4 col-sm-6 form-group">
                <label>Offer Redirect LPS Page {include file='partTooltip.tpl' tooltipID=333}</label>
                <input name="txtBase3PhpPage" type="text" class="form-control"
                       value="{$currentSettings.Base3PhpPage|default:'base3.php'}"/>
            </div>

            <div class="col-xl-4 col-sm-6 form-group">
                <label>Tracking Pixel / Postback URL Page {include file='partTooltip.tpl' tooltipID=334}</label>
                <input name="txtAdclickPhpPage" type="text" class="form-control"
                       value="{$currentSettings.AdclickPhpPage|default:'adclick.php'}"/>
            </div>

            <div class="col-xl-4 col-sm-6 form-group">
                <label>Tracking Pixel iframe Page {include file='partTooltip.tpl' tooltipID=335}</label>
                <input name="txtAdclickfPhpPage" type="text" class="form-control"
                       value="{$currentSettings.AdclickfPhpPage|default:'adclickf.php'}"/>
            </div>

            <div class="col-xl-4 col-sm-6 form-group">
                <label>Tracking Pixel script Page {include file='partTooltip.tpl' tooltipID=336}</label>
                <input name="txtAdclicksPhpPage" type="text" class="form-control"
                       value="{$currentSettings.AdclicksPhpPage|default:'adclicks.php'}"/>
            </div>

            <div class="col-xl-4 col-sm-6 form-group">
                <label>Subscribers/Lead Pixel Page {include file='partTooltip.tpl' tooltipID=337}</label>
                <input name="txtAdsubPhpPage" type="text" class="form-control"
                       value="{$currentSettings.AdsubPhpPage|default:'adsub.php'}"/>
            </div>

            <div class="col-xl-4 col-sm-6 form-group">
                <label>Double Meta Refresh Page {include file='partTooltip.tpl' tooltipID=338}</label>
                <input name="txtDoubleMetaRedirectPage" type="text" class="form-control"
                       value="{$currentSettings.DoubleMetaRedirectPage|default:'baseredirect.php'}"/>
            </div>

            <div class="col-xl-4 col-sm-6 form-group mb-0">
                <label>Redirect Loop Refresh Page {include file='partTooltip.tpl' tooltipID=339}</label>
                <input name="txtLoopRedirectPage" type="text" class="form-control"
                       value="{$currentSettings.LoopRedirectPage|default:'baseloopredirect.php'}"/>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header">
        <h4>Email Notification Settings</h4>
    </div>

    <div class="card-body">
        {if $showupdstobj.sendnotifications|default:0}
            <div class="row">
                <div class="col-12 form-group">
                    {include file='partUpdPage.tpl' name='Email Notifications'}
                </div>
            </div>
        {else}
            <div class="row">
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>SMTP Server {include file='partTooltip.tpl' tooltipID=371}</label>
                    <input name="txtMailHost" id="txtMailHost" type="text" class="form-control"
                           value="{$currentSettings.MailHost|default:''}"/>
                </div>
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>SMTP Port {include file='partTooltip.tpl' tooltipID=372}</label>
                    <input name="txtMailPort" id="txtMailPort" type="text" class="form-control"
                           value="{$currentSettings.MailPort|default:''}"/>
                </div>
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>SMTP Transport {include file='partTooltip.tpl' tooltipID=375}</label>
                    <select name="txtMailTransport" id="txtMailTransport" class="form-control">
                        {html_options options=$mailTransportOptions selected=$currentSettings.MailTransport|default:'tls'}
                    </select>
                </div>
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>Email Login/Username {include file='partTooltip.tpl' tooltipID=373}</label>
                    <input name="txtMailUsername" id="txtMailUsername" type="text" class="form-control"
                           value="{$currentSettings.MailUsername|default:''}"/>
                </div>
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>Email Password {include file='partTooltip.tpl' tooltipID=374}</label>
                    <input name="txtMailPassword" id="txtMailPassword" type="password" class="form-control"
                           value="{$currentSettings.MailPassword|default:''}" autocomplete="new-password"/>
                </div>
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>From Name {include file='partTooltip.tpl' tooltipID=376}</label>
                    <input name="txtMailFromName" id="txtMailFromName" type="text" class="form-control"
                           value="{$currentSettings.MailFromName|default:'CPV Lab Pro Instance'}"/>
                </div>
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>From Email {include file='partTooltip.tpl' tooltipID=377}</label>
                    <input name="txtMailFromEmail" id="txtMailFromEmail" type="text" class="form-control"
                           value="{$currentSettings.MailFromEmail|default:''}"/>
                </div>

                <div class="col-xl-4 col-sm-6 form-group">
                    <label>Email Subject {include file='partTooltip.tpl' tooltipID=378}</label>
                    <input name="txtMailSubjectNotifications" type="text" class="form-control"
                           value="{$currentSettings.MailSubjectNotifications|default:'CPV Lab Pro Notifications'}"/>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-sm-6">

                    <div class="form-group d-flex justify-content-between align-items-center">
                        <span class="custom-switch-description ml-0">Send HTML Emails {include file='partTooltip.tpl' tooltipID=379}</span>
                        <label class="custom-switch">
                            <input type="checkbox" class="custom-switch-input" name="txtMailSendHtml"
                                   id="txtMailSendHtml"
                                   {if $currentSettings.MailSendHtml|default:true}checked="checked"{/if}>
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </div>

                    <div class="form-group d-flex justify-content-between align-items-center">
                        <span class="custom-switch-description ml-0">SMTP Authentication {include file='partTooltip.tpl' tooltipID=380}</span>
                        <label class="custom-switch">
                            <input type="checkbox" class="custom-switch-input" name="txtMailSMTPAuth"
                                   id="txtMailSMTPAuth"
                                   {if $currentSettings.MailSMTPAuth|default:true}checked="checked"{/if}>
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </div>

                    <div class="form-group d-flex justify-content-between align-items-center">
                        <span class="custom-switch-description ml-0">Use isSMTP Feature {include file='partTooltip.tpl' tooltipID=381}</span>
                        <label class="custom-switch">
                            <input type="checkbox" class="custom-switch-input" name="txtMailIsSMTPFeature"
                                   id="txtMailIsSMTPFeature"
                                   {if $currentSettings.MailIsSMTPFeature|default:false}checked="checked"{/if}>
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </div>

                    <button type="button" name="btnTestEmails" class="btn btn-primary" data-toggle="modal"
                            data-target="#mdlEmailCheck"><i class="fa fa-envelope-o"></i> Test SMTP Settings
                    </button>
                </div>
            </div>
        {/if}
    </div>
</div>

<div class="card">
    <div class="card-header d-flex align-items-center">
        <h4>True Caching Settins {include file='partTooltip.tpl' tooltipID=341}</h4>
        <label class="custom-switch mb-0 ml-3">
            <input type="checkbox" class="custom-switch-input" name="txtUseDataCaching" id="txtUseDataCaching"
                   {if $currentSettings.UseDataCaching|default:false}checked="checked"{/if}{if $showupdstobj.truecaching|default:0} disabled="disabled"{/if}/>
            <span class="custom-switch-indicator"></span>
        </label>
    </div>

    <div class="card-body">
        <div class="row align-items-end">
            {if $showupdstobj.truecaching|default:0}
                <div class="col-12 form-group">
                    {include file='partUpdPage.tpl' name='True Caching'}
                </div>
            {else}
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>Clicks to process at once {include file='partTooltip.tpl' tooltipID=342}</label>
                    <input name="txtCachingMaxItems" type="text" class="form-control truecache"
                           value="{$currentSettings.CachingMaxItems|default:'10000'}"
                           onblur="validateInt(this,500,9999999)"/>
                </div>
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>Delay in aggregating clicks {include file='partTooltip.tpl' tooltipID=343}</label>
                    <select name="txtCachingDelay" class="form-control truecache">
                        {html_options options=$cachingDelayOptions selected=$currentSettings.CachingDelay|default:10}
                    </select>
                </div>
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>Click removal delay {include file='partTooltip.tpl' tooltipID=344}</label>
                    <select name="txtCachingRemoveTime" class="form-control truecache">
                        {html_options options=$cachingRemoveOptions selected=$currentSettings.CachingRemoveTime|default:30}
                    </select>
                </div>
                <div class="col-xl-4 col-sm-6 form-group mb-0">
                    <label>Conversion removal delay {include file='partTooltip.tpl' tooltipID=345}</label>
                    <select name="txtCachingRemoveCacheRelation" class="form-control truecache">
                        {html_options options=$cachingRemoveOptions selected=$currentSettings.CachingRemoveCacheRelation|default:30}
                    </select>
                </div>
            {/if}
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header d-flex align-items-center">
        <h4>Geo Cron Job Settins {include file='partTooltip.tpl' tooltipID=351}</h4>
        <label class="custom-switch mb-0 ml-3">
            <input type="checkbox" class="custom-switch-input" name="txtUseGeoCron" id="txtUseGeoCron"
                   {if $currentSettings.UseGeoCron|default:false}checked="checked"{/if}{if $showupdstobj.geocronjob|default:0} disabled="disabled"{/if}/>
            <span class="custom-switch-indicator"></span>
        </label>
    </div>

    <div class="card-body">
        <div class="row">
            {if $showupdstobj.geocronjob|default:0}
                <div class="col-12 form-group">
                    {include file='partUpdPage.tpl' name='Geo Cron Job'}
                </div>
            {else}
                <div class="col-xl-4 col-sm-6 form-group">
                    <label>Clicks to geo-encode at once {include file='partTooltip.tpl' tooltipID=352}</label>
                    <input name="txtGeoMaxItems" type="text" class="form-control geocron"
                           value="{$currentSettings.GeoMaxItems|default:'2000'}"
                           onblur="validateInt(this,500,9999999)"/>
                </div>
            {/if}
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header d-flex align-items-center">
        <h4>Manage Cron Jobs {include file='partTooltip.tpl' tooltipID=391}</h4>
    </div>

    <div class="card-body">
        {foreach $currentCronJobs as $cron}
            <div class="row pt-2">
                <div class="col-3 col-md-2 col-xl-1 form-group">
                    <label class="custom-switch">
                        <input type="checkbox" class="custom-switch-input" name="chkCronActive{$cron.CronID}"
                               {if $cron.Active|default:false}checked="checked"{/if} {if ($showupdstobj.geocronjob|default:0 && $cron.CronFile == "cron-notifications.php") || ($showupdstobj.truecaching|default:0 && $cron.CronFile == "cron-cache.php")}disabled="disabled"{/if}>
                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>
                <div class="col-9 col-md-5 col-lg-5 col-xl-5 form-group">
                    <b>{$cron.CronName}</b>&nbsp;(<a href="{$cron.DocLink}" target="_blank">{$cron.CronFile}</a>)
                </div>
                <div class="col-9 offset-3 col-md-5 offset-md-0 col-lg-5 col-xl-4 form-group">
                    {if ($showupdstobj.geocronjob|default:0 && $cron.CronFile == "cron-notifications.php") || ($showupdstobj.truecaching|default:0 && $cron.CronFile == "cron-cache.php")}
                        <span class="text-muted updColor"><a
                                    href="{if $iscldvrs|default:0}https://billing.stripe.com/p/login/9AQeWsa2Z32D8x2144{else}https://cpvlab.pro/pricing-signup.php?utm_source=starter-confg{/if}"
                                    target="_blank">Upgrade NOW</a> to use {$cron.CronName}</span>
                    {else}
                        <input name="txtCronScheduleInterval{$cron.CronID}" type="text"
                               style="display:inline; width:30%" class="form-control text-center"
                               value="{$cron.ScheduleInterval}" onblur="validateInt(this,1,100)">
                        <select name="ddlCronScheduleType{$cron.CronID}" style="display:inline; width:60%"
                                class="form-control">
                            {html_options options=$cronScheduleTypes selected=$cron.ScheduleType|default:'m'}
                        </select>
                    {/if}
                </div>
            </div>
            {if count($cron.Params) > 0}
                <div class="row offset-2">
                    {foreach $cron.Params as $cronParam}
                        <div class="col-sm-12 col-md-6 col-xl-4 form-group">
                            <label>{$cronParam.ParameterDescription}</label>
                            <input name="txtCronParam{$cronParam.CronID}{$cronParam.ParameterName}" type="text"
                                   class="form-control" value="{$cronParam.ParameterValue|default:''}"/>
                        </div>
                    {/foreach}
                </div>
            {/if}
        {/foreach}
    </div>
</div>

<div class="card">
    <div class="card-body">
        <button type="submit" name="btnSubmit_x" class="btn btn-primary mr-3">Save</button>
        <button type="button" name="btnCancel_x" class="btn btn-secondary" onclick="return redirectToCampaigns()">
            Cancel
        </button>
    </div>
</div>

<script type="text/javascript">
    {literal}
    $(document).ready(function () {
        checkTrueCaching();
        checkGeoCron();
        $('#txtUseDataCaching').change(function () {
            checkTrueCaching();
        });
        $('#txtUseGeoCron').change(function () {
            checkGeoCron();
        });
    });

    function checkTrueCaching() {
        $(".truecache").prop("disabled", !$("#txtUseDataCaching").prop("checked"));
    }

    function checkGeoCron() {
        $(".geocron").prop("disabled", !$("#txtUseGeoCron").prop("checked"));
    }
    {/literal}
</script>

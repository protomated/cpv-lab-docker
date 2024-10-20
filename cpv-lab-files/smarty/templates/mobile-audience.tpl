<div class="row">
    <div class="col-xl-7 mb-30">
        <div class="card mb-0 h-100">
            <div class="card-header">
                <h4>Mobile Audience</h4>
            </div>

            <div class="card-body">
                <div class="row align-items-end mb-3">
                    <div class="col-sm-9 pr-xl-1">
                        <div class="form-group mb-sm-0">
                            <label>Select Campaign</label>

                            {include file='partControlSelectCampaign.tpl'}
                        </div>
                    </div>

                    <div class="col-sm-3">
                        {include file='partControlEditCampaign.tpl'}
                    </div>
                </div>

                {include file='partControlIntervalRange.tpl'}

            </div>
        </div>
    </div>

    <div id="here-block-totals" class="col-xl-5 mb-30">
        {include file='partCampaignTotalsSection.tpl'}
    </div>
</div>

<div id="divMobileAud">
    <div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" id="wdgMobileAudienceTopPerformance">

        <a name="dt" class="fixanchor"></a>

        <div class="card-header">
            <div class="float-right">
                <a data-collapse="#performance-collapse" class="btn btn-icon d-table-cell">
                    <i class="ion ion-minus"></i>
                </a>
            </div>
            <h4>Top Performance</h4>
        </div>

        <div role="content" class="collapse show" id="performance-collapse">
            <div class="card-body">

                <div class="form-group row justify-content-end">
                    <label class="col-4 form-label text-right pr-0">View by</label>
                    <div class="col-lg-3 col-sm-6 col-8">
                        <select name="ddlViewBy" id="ddlViewBy" onchange="changeCampaign(true)" class="form-control form-control-height-smaller">
                            {html_options options=$sortOptions selected=$sortField}
                        </select>
                    </div>
                </div>

                <div class="table-responsive">
                    <table class="{$theme_table_classes} text-nowrap">
                        <thead>
                            <tr class="headerRow">
                                <th>&nbsp;</th>
                                {if $showSelectedMetricColumn}
                                <th style="width:8%">{if $sortOptions.$sortField == 'Conversions'}Conv.{else}{$sortOptions.$sortField}{/if}</th>
                                {/if}
                                <th style="width:8%">% of Visitors</th>
                                <th style="width:8%"># Visitors</th>
                                <th style="width:8%">Spend</th>
                                <th style="width:8%">Revenue</th>
                                <th style="width:8%">Profit</th>
                                <th style="width:8%">ROI</th>
                            </tr>
                        </thead>
                            {include file='partMobileSubtitleRow.tpl' rowImage='ma-brands.png' rowCaption='Brands' className='left bold' reportType=2}
                            {include file='partMobileRows.tpl' rows=$lookupRows.BrandName resetCycle=true reportType=2}

                            {include file='partMobileSubtitleRow.tpl' rowImage='ma-carriers.png' rowCaption='Carriers' className='left bold' reportType=2}
                            {if $showupdstobj.ispcarrier|default:0}{include file='partUpdCarrier.tpl'}{else}{include file='partMobileRows.tpl' rows=$lookupRows.IspName resetCycle=true reportType=2}{/if}

                            {include file='partMobileSubtitleRow.tpl' rowImage='ma-models.png' rowCaption='Device Models' className='left bold' reportType=2}
                            {include file='partMobileRows.tpl' rows=$lookupRows.MarketingName resetCycle=true reportType=2}

                            {include file='partMobileSubtitleRow.tpl' rowImage='ma-browsers.png' rowCaption='Mobile OS' className='left bold' reportType=2}
                            {include file='partMobileRows.tpl' rows=$lookupRows.BrowserName resetCycle=true reportType=2}

                            {include file='partMobileSubtitleRow.tpl' rowImage='ma-deviceos.png' rowCaption='Carriers' className='left bold' reportType=2}
                            {include file='partMobileRows.tpl' rows=$lookupRows.OperatingSystem resetCycle=true reportType=2}

                            {include file='partMobileSubtitleRow.tpl' rowImage='ma-screenres.png' rowCaption='Screen Resolutions' className='left bold' reportType=2}
                            {include file='partMobileRows.tpl' rows=$lookupRows.Resolution resetCycle=true reportType=2}

                            {include file='partMobileSubtitleRow.tpl' rowImage='ma-screensiz.png' rowCaption='Screen Sizes' className='left bold' reportType=2}
                            {include file='partMobileRows.tpl' rows=$lookupRows.DisplaySize resetCycle=true reportType=2}
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" id="wdgMobileAudienceSupportUsage">

        <div class="card-header">
            <div class="float-right">
                <a data-collapse="#support-collapse" class="btn btn-icon d-table-cell">
                    <i class="ion ion-minus"></i>
                </a>
            </div>
            <h4>Support &amp; Usage</h4>
        </div>

        <div role="content" class="collapse show" id="support-collapse">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="{$theme_table_classes} text-nowrap">
                        <thead>
                            <tr class="headerRow">
                                <th>&nbsp;</th>
                                <th style="width:8%">% of Visitors</th>
                                <th style="width:8%"># Visitors</th>
                                <th style="width:8%">LP CTR</th>
                                <th style="width:8%">CR%</th>
                                <th style="width:8%">Conv.</th>
                                <th style="width:8%">Spend</th>
                                <th style="width:8%">Revenue</th>
                                <th style="width:8%">Profit</th>
                                <th style="width:8%">ROI</th>
                            </tr>
                        </thead>
                        {include file='partMobileSubtitleRow.tpl' rowImage='ma-browsersettings.png' rowCaption='Browser Capabilities' className='left bold'}
                        {include file='partMobileRows.tpl' rows=$yesRows.CookieSupport}
                        {include file='partMobileRows.tpl' rows=$yesRows.PartyCookieSupport}
                        {include file='partMobileRows.tpl' rows=$yesRows.EmbeddedVideo}
                        {include file='partMobileRows.tpl' rows=$yesRows.IframeSupport}
                        {include file='partMobileRows.tpl' rows=$yesRows.JavaScriptSupport}

                        {include file='partMobileSubtitleRow.tpl' rowImage='ma-contentsup.png' rowCaption='Content Support' className='left bold'}
                        {include file='partMobileRows.tpl' rows=$yesRows.FlashSupport resetCycle=true}
                        {include file='partMobileRows.tpl' rows=$yesRows.PlaybackFlv}
                        {include file='partMobileRows.tpl' rows=$yesRows.PlaybackMov}
                        {include file='partMobileRows.tpl' rows=$yesRows.PlaybackMp4}
                        {include file='partMobileRows.tpl' rows=$yesRows.PdfSupport}
                        {include file='partMobileRows.tpl' rows=$yesRows.PushSupport}
                        {include file='partMobileRows.tpl' rows=$yesRows.MmsSupport}
                        {include file='partMobileRows.tpl' rows=$yesRows.SmsSupport}
                        {include file='partMobileRows.tpl' rows=$yesRows.RssSupport}

                        {include file='partMobileSubtitleRow.tpl' rowImage='ma-datarate.png' rowCaption='Data Rates' className='left bold'}
                        {include file='partMobileRows.tpl' rows=$lookupRows.DataRateText resetCycle=true}

                        {include file='partMobileSubtitleRow.tpl' rowImage='ma-devices.png' rowCaption='Device Types' className='left bold'}
                        {include file='partMobileRows.tpl' rows=$lookupRows.DeviceType resetCycle=true}

                        {include file='partMobileSubtitleRow.tpl' rowImage='ma-usage.png' rowCaption='Device Usage' className='left bold'}
                        {include file='partMobileRows.tpl' rows=$yesRows.DualOrientation resetCycle=true}
                        {include file='partMobileRows.tpl' rows=$yesRows.NumberSupport}
                        <tr class="normalRow"><td colspan="10" class="left">Pointing Method</td></tr>
                        {include file='partMobileRows.tpl' rows=$lookupRows.PointingMethod dontEncode=true}
                        {include file='partMobileRows.tpl' rows=$yesRows.QwertyKeyword}
                        {include file='partMobileRows.tpl' rows=$yesRows.WifiSupport}
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<input type="hidden" name="hidColumn" id="hidColumn" value=""/>
<input type="hidden" name="hidCampaignType" id="hidCampaignType" value="{$campaignTypeID}"/>
<input type="hidden" name="hidReportType" id="hidReportType" value=""/>
<input type="hidden" name="hidFullUrl" id="hidFullUrl" value=""/>

<script type="text/javascript">
	function changeCampaign(withDT)
	{
		window.location.href = getFullUrl() + (withDT ? "#dt" : "");
	}

	function getFullUrl()
	{
		return redirectUrl = 'mobile-audience.php?camp=' + $("#ddlCampaigns").val() +
				"&int=" + $("#ddlInterval").val() +
				($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
						"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '') +
				"&sort=" + $("#ddlViewBy").val();
	}
</script>

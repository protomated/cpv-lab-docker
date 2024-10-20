    <label>Conversion reporting URL for {$trafficSourceName} (see setup details <a href="{$setupUrl}" target="_blank">here</a>)
        {if $showupdstobj.googleconversions|default:0}<small class="text-muted updColor"><a href="{if $iscldvrs|default:0}https://billing.stripe.com/p/login/9AQeWsa2Z32D8x2144{else}https://cpvlab.pro/pricing-signup.php?utm_source=starter-cmpsetup{/if}" target="_blank">Upgrade NOW</a> to use {$trafficSourceName} integration</small>{/if}
    </label>
    <div class="input-group">
        <input type="text" id="txtStepTrackingT{$trafficSourceShortName}" class="form-control back-diff" readonly="readonly" onclick="select_all(this)" value="{$tsPostbackUrl}"/>
        <span class="input-group-addon cursor-pointer d-flex align-items-center" rel="copyclipboard" data-toggle="tooltip" data-placement="right" title="" data-original-title="Copy to Clipboard"><i class="fa fa-copy"></i></span>
        <span class="input-group-addon cursor-pointer d-flex align-items-center" rel="generateqrcode" data-toggle="tooltip" data-placement="right" title="" data-original-title="Generate QR Code"><i class="fe fe-grid"></i></span>
    </div>
    <br/>
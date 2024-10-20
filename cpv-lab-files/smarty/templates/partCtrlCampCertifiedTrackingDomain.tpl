<label class="custom-switch" style="padding-left:0rem">
    <input type="checkbox" class="custom-switch-input" name="chkCertifiedDomain" id="chkCertifiedDomain" {if $campaignDetails.UseCertifiedDomain}checked="checked"{/if} onclick="clickUseCertifiedDomain()"/>
    <span class="custom-switch-indicator"></span>
    <span class="custom-switch-description">Use Google Certified Domain</span>
</label>
<label style="vertical-align:middle">{include file='partTooltip.tpl' tooltipID=31}</label>
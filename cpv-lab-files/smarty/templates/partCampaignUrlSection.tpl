<input type="hidden" id="hidCampaignKeyCode" value="{$campaignDetails.KeyCode}"/>
<input type="hidden" id="hidCampaignUrlSuffix" value="{$suffix|default:''}"/>
<input type="hidden" id="hidCampaignUrlTestSuffix" value="{$testSuffix|default:''}"/>
<div class="mt-2">
    <div class="row">
        <div class="col-12">
            <h6 class="font-weight-bold" style="float:left"><span id="spCampUrlLabel">{$title|default:'Campaign URL:'}</span>&nbsp;<span id="spCamp2">{$campaignDetails.CampaignName}</span></h6>
            <select id="ddlCampaignUrlLP" class="form-control" style="float:right; width: 200px;"></select>
            <div style="clear:both"></div>
            {if $subtitle|default:''}<div class="div-instruction-clarification">{$subtitle}</div>{/if}
            <div class="form-group">
                <div class="input-group">
                    <input id="txtCampaignUrl" type="text" class="form-control back-diff" readonly="readonly" onclick="select_all(this)" value=""/>
                    <!--<span class="input-group-addon"><a id="txtCampaignTestUrl" href="{$root}base.php?c={$campaignID}&key={$campaignDetails.KeyCode}{$testSuffix|default:''}&test=true" target="_blank">Test Link</a></span>-->
                    <span class="input-group-addon cursor-pointer d-flex align-items-center" onclick="confirmChangeUrlKey();" data-toggle="tooltip" data-placement="right" title="" data-original-title="Generate New Campaign Key"><i class="fa fa-key"></i></span>
                    {include file="partCopyClipboard.tpl" copyprevlevels="2" qrprevlevels="3"}
                </div>
            </div>
        </div>
    </div>
    <div id="divParallelTrackingLinks" style="display:none">
        <div class="row mt-2">
            <div class="col-12">
                <h6 class="font-weight-bold"><span id="spParallelTsTitle1"></span> - use your <span id="spParallelTsSubtitle1">Landing Page</span> URL, like 
                        {include file='partTooltip.tpl' tooltipID=0 tooltipControlID='tipParallelFinalUrl'}</h6>
                <div class="form-group">
                    <div class="input-group">
                        <input id="txtParallelFinalUrl" type="text" class="form-control back-diff" readonly="readonly" onclick="select_all(this)" value=""/>
                        {include file="partCopyClipboard.tpl"}
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12">
                <h6 class="font-weight-bold"><span id="spParallelTsTitle2"></span>
                    {include file='partTooltip.tpl' tooltipID=0 tooltipControlID='tipParallelFinalSuffix'}</h6>
                <div class="form-group">
                    <div class="input-group">
                        <input id="txtParallelFinalSuffix" type="text" class="form-control back-diff" readonly="readonly" onclick="select_all(this)" value=""/>
                        {include file="partCopyClipboard.tpl"}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
function confirmChangeUrlKey() {
    confirm('Are you sure you want to change the Campaign URL Key?\r\nYou will need to update the Campaign URL at your Traffic Source.', function(){
        $('#btnChangeKey').click();
    });
}
</script>

<div class="max-w-850">
	{if $showupdstobj.landingpageprotection|default:0|default:0}{include file='partUpdPage.tpl' name='Landing Page Protection'}{/if}
    <div class="form-group">
        <label>
            <i>
                Use this feature if you want to protect your landing pages from direct access. Your landing pages must be saved as .php.
				Full details in the <a href="https://doc.cpvlab.pro/landing-page-protection.html" target="_blank">Online Documentation</a>.<br/>
                Changes to this section will re-create the LP Protection code, so you have to update it in your Landing Pages.
            </i>
        </label>
    </div>

	<div class="form-group">
		<label for="chkUseLpProtect" class="font-weight-bold">
			<input type="checkbox" class="flat-purple" name="chkUseLpProtect" id="chkUseLpProtect" {if $campaignDetails.LpProtectType != 0}checked="checked"{/if} {if $showupdstobj.landingpageprotection|default:0}disabled="disabled"{else}onchange="ajaxLoadLpProtectCode()"{/if}/>
			Use Landing Page Protect
		</label>
	</div>

    <div class="row">
        <div class="col-md-6">
        	<div class="form-group">
        		<label>LP Protect Key</label>
        		<input name="txtLpProtectKey" id="txtLpProtectKey" type="text" class="form-control" value="{$campaignDetails.LpProtectKey}" {if $showupdstobj.landingpageprotection|default:0}disabled="disabled"{else}onchange="ajaxLoadLpProtectCode()"{/if}/>
        	</div>
        </div>

        <div class="col-md-6">
        	<div class="form-group">
        		<label>LP Protect Parameter</label>
        		<input name="txtLpProtectParameter" id="txtLpProtectParameter" type="text" class="form-control" value="{$campaignDetails.LpProtectParameter}" {if $showupdstobj.landingpageprotection|default:0}disabled="disabled"{else}onchange="ajaxLoadLpProtectCode()"{/if}/>
        	</div>
        </div>
    </div>

	<div class="form-group">
		<label>No-access behavior</label>
		<div>
			<label for="radLpProtectMessage" class="mr-3">
				<input type="radio" class="flat-purple minimal-lpprotect" name="radLpProtectType" id="radLpProtectMessage" value="1" {if $campaignDetails.LpProtectType == 1 || $campaignDetails.LpProtectType == 0}checked="checked"{/if} {if $showupdstobj.landingpageprotection|default:0}disabled="disabled"{/if}/>
				Display message
			</label>
			<label for="radLpProtectRedirect" class="mr-3">
				<input type="radio" class="flat-purple minimal-lpprotect" name="radLpProtectType" id="radLpProtectRedirect" value="2" {if $campaignDetails.LpProtectType == 2}checked="checked"{/if} {if $showupdstobj.landingpageprotection|default:0}disabled="disabled"{/if}/>
				Redirect to URL
			</label>
			<label for="radLpProtectPage">
				<input type="radio" class="flat-purple minimal-lpprotect" name="radLpProtectType" id="radLpProtectPage" value="3" {if $campaignDetails.LpProtectType == 3}checked="checked"{/if} {if $showupdstobj.landingpageprotection|default:0}disabled="disabled"{/if}/>
				Show "white" page
			</label>
		</div>
	</div>

    <div class="row">
		<div id="divLpProtectTypeMessage" class="col-md-6" style="display:{if $campaignDetails.LpProtectType==1 || $campaignDetails.LpProtectType == 0}block{else}none{/if}">
			<div class="form-group">
				<label>No-access message</label>
				<input name="txtLpProtectMessage" id="txtLpProtectMessage" type="text" class="form-control" value="{$campaignDetails.LpProtectMessage}" {if $showupdstobj.landingpageprotection|default:0}disabled="disabled"{else}onchange="ajaxLoadLpProtectCode()"{/if}/>
			</div>
		</div>
		<div id="divLpProtectTypeRedirect" class="col-md-6" style="display:{if $campaignDetails.LpProtectType==2}block{else}none{/if}">
			<div class="form-group">
				<label>No-access redirect URL</label>
				<input name="txtLpProtectRedirect" id="txtLpProtectRedirect" type="text" class="form-control" value="{$campaignDetails.LpProtectRedirect}" {if $showupdstobj.landingpageprotection|default:0}disabled="disabled"{else}onchange="ajaxLoadLpProtectCode()"{/if}/>
			</div>
		</div>
		<div id="divLpProtectTypeWhitePage" class="col-md-12" style="display:{if $campaignDetails.LpProtectType==3}block{else}none{/if}">
			<div class="form-group">
				<label>Use the white page template below and customize it to look as you wish</label>
			</div>
		</div>
    </div>

	<div class="form-group">
		<label>LP Protect Code (place it at the beginning of your LP)<img src="images/spinner.gif" alt="Working..." id="spinlpp" class="ml-4" style="display:none"/></label>
		<div class="input-group">
			<textarea id="txtLpProtectCode" rows="6" class="form-control"  {if $showupdstobj.landingpageprotection|default:0}disabled="disabled"{/if}></textarea>
			{include file="partCopyClipboard.tpl"}
		</div>
	</div>
</div>

{if !$showupdstobj.landingpageprotection|default:0}
<script type="text/javascript">
	{literal}
	$(document).ready(function () {
		{/literal}{if $campaignDetails.LpProtectType!=0}$('#card-lp-protection').collapse("show"); ajaxLoadLpProtectCode();{/if}{literal}
	});
	{/literal}
</script>
{/if}
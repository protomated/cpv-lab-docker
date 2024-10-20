{include file="partMessage.tpl"}

<div class="card" id="wdgMultivariateGenerateModify">
    <div class="card-header">
        <h4>Generate Multivariate Tool Code <span class="ml-2">{include file='partCampaignTooltip.tpl'}</span></h4>
    </div>

    <div class="card-body">
        <div class="max-w-850">
    		    <div class="row align-items-end mb-4">
                <div class="col-xl-9 col-lg-8">
            				<div class="form-group mb-3 mb-lg-0">
					               <label>Select the Campaign to generate MultiVariate Code for<br/><small>(make sure that you already defined Multivariate Extra Tokens for this campaign)</small></label>

                         {include file='partControlSelectCampaign.tpl'}
                    </div>
				         </div>

                 <div class="col-xl-3 col-lg-4">
                     {include file='partControlEditCampaign.tpl'}
                 </div>
             </div>

             <div class="row">
         				<div class="col-xl-9 col-lg-8">
                     <div class="form-group mb-4">
               					<label>(Optional) Use existing MVLab Code <br><small>If you have an existing Multivariate PHP Code that you want to modify, paste it in the box below:</small></label>
               					<textarea name="txtExistingCode" id="txtExistingCode" class="form-control" rows="4">{$txtExistingCode}</textarea>
                     </div>
         				</div>
             </div>

            <button name="btnImport_x" class="btn btn-primary">Parse existing code</button>
				</div>

			  <div id="divMVGroups" class="mt-5">
  				{for $k=1 to $groups.max|default:1}
  					{include file='partHtmlMvGroup.tpl'}
  				{/for}
  			</div>

      <div class="row">
    			<div class="col-12 text-right" id="divAddMVGroup">
    				<button type="button" onclick="addMVGroup()" class="btn btn-primary btn-add-mv btn-add-mv-group btn-sm" data-placement="right" data-toggle="tooltip" title="" data-original-title="Add New Group"><i class="fe fe-plus"></i> group</button>
    			</div>
      </div>

			<div id="divHtmlNewVariation" class="d-none">{include file='partHtmlMvVariation.tpl' j=null}</div>
			<div id="divHtmlNewSnippet" class="d-none">{include file='partHtmlMvSnippet.tpl' i=null}</div>
			<div id="divHtmlNewGroup" class="d-none">{include file='partHtmlMvGroup.tpl' k=null}</div>

			<div class="row mt-5 mb-2">
				<div class="col-lg-5">
					<div class="form-group">
						<label>Tracking Domain for the Campaign{include file='partTooltip.tpl' tooltipID=21}</label>
						<select class="form-control" id="ddlTrackingDomains" name="ddlTrackingDomains">
							{html_options options=$trackingDomains selected=$trackingDomain}
						</select>
					</div>
				</div>

				<div class="col-lg-1 col-0">&nbsp;</div>

				<div class="col-lg-6 col-sm-8">
					<div class="row">
						<div class="form-group">
							<label for="chkUseDirectTrafficCode" class="mb-0 mb-xl-2">
								<input type="checkbox" class="flat-purple" name="chkUseDirectTrafficCode" id="chkUseDirectTrafficCode" {if $groups.delayseconds|default:0 || $groups.useDirectTrafficCode|default:false == 'true'}checked="checked"{/if}>
								Use Direct Traffic Code in page
								<label>{include file='partTooltip.tpl' tooltipID=26}</label>
							</label>
						</div>
					</div>
					<div class="row">
						<div class="form-group form-inline-long">
							<label for="chkCaptureValue" class="mb-0 mb-xl-2">
								<input type="checkbox" class="flat-purple" name="chkCaptureValue" id="chkCaptureValue" {if $groups.displaytype|default:'' == 'value'}checked="checked"{/if}>
								Show Variation Text instead of Index Number in Stats
								<label>{include file='partTooltip.tpl' tooltipID=27}</label>
							</label>
							<br/><label class="d-inline-block ml-4">Limit Variation Texts to
							<input type="text" class="form-control width-80px text-center" name="txtLimitCharacters" id="txtLimitCharacters" value="{$groups.limitcharsvariation|default:'50'}" {if $groups.displaytype|default:'' != 'value'}disabled="disabled"{/if} onblur="validateInt(this, 0, 65535, 50)">
							characters {include file='partTooltip.tpl' tooltipID=28}</label>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label for="chkHideGroupData" class="mb-0 mb-xl-2">
								<input type="checkbox" class="flat-purple" name="chkHideGroupData" id="chkHideGroupData" {if $groups.hidegroupdata|default:false == 'true'}checked="checked"{/if}>
								Hide Group Data in Variations
								<label>{include file='partTooltip.tpl' tooltipID=29}</label>
							</label>
						</div>
					</div>
				</div>
			</div>

			<div>
				<button name="btnGenerate_x" class="btn btn-primary text-truncate" onclick="ajaxGenerateMVCode();
							return false">Generate Code with above values</button>
				<img src="images/spinner.gif" alt="Working..." id="sping" class="ml-4" style="display:none"/>
			</div>

            <div class="row" style="displday:{if $code}block{else}none{/if}">
				<div id="divResultG" style="display:none">
					<div class="col-sm-12 mt-3">
						<label><span class="text-larger" style="color:red">GENERATED MULTIVARIATE CODE:</span><br/>
							Copy and pase the code below at the beginning of your Landing Page HTML code. Make sure that you save your Landing Page as *.php</label>
						<div class="input-group">
							<textarea name="txtGeneratedCode" id="txtGeneratedCode" class="form-control" rows="6" readonly="readonly">{$code}</textarea>
							{include file="partCopyClipboard.tpl"}
						</div>
					</div>
				</div>
            </div>


		</div>
		<input type="hidden" name="hidGroupsMax" id="hidGroupsMax" value="{$groups.max|default:1}"/>
		<input type="hidden" id="hidAssignedTokens" value="{$assignedTokensJson}"/>

	</div>
</div>
{include file="partMVParamsOverlay.tpl"}

<script type="text/javascript">
	{literal}
		function changeCampaign()
		{
			window.location.href = getFullUrl();
		}

		function getFullUrl()
		{
			return redirectUrl = 'multivariate-generate.php?camp=' + $("#ddlCampaigns").val();
		}
		function checkCaptureValue()
		{
			if ($('#chkCaptureValue').prop("checked"))
			{
				$('#txtLimitCharacters').prop("disabled", false);
			}
			else
			{
				$('#txtLimitCharacters').prop("disabled", true);
			}
		}

	{/literal}
		$(document).ready(function () {
			initializeMVParamsOverlayTokens();
			initializeCopyToClipboard();
			initializeQrCode();
			$('#chkCaptureValue').on('ifChanged', function(event){
				checkCaptureValue();
			});
		});
</script>

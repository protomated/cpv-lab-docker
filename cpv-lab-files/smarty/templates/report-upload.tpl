{include file="partMessage.tpl" errorMessageNotAutoclose=true}

<div class="card upload-reports">
    <div class="card-header">
        <h4>Upload Reports</h4>
    </div>

    <div class="card-body">
        <div class="row">
            <div class="col-xl-4 col-lg-6 col-sm-10">
                <div class="form-group">
                    <label>Select Campaign</label>
                    <select name="ddlCampaign" id="ddlCampaign" class="form-control" onchange="ajaxChangeCampaignDropdownCpv()">
                        {html_options options=$campaignsArray selected=$selectedCampaignID}
                    </select>
                </div>
            </div>

            <div class="col-xl-4 col-lg-6">
				{include file='partControlIntervalRangeSimple.tpl' customID=''
					customIntervalFrom=$currentDateFormatted|default:'' customIntervalTo=$currentDateFormatted|default:''}
				<input type="hidden" id="hidInterval1" value="{$int1Title}"/>
				<input type="hidden" id="hidInterval2" value="{$int2Title}"/>
				<input type="hidden" id="hidInterval3" value="{$int3Title}"/>
				<input type="hidden" id="hidInterval5" value="{$int5Title|default:''}"/>
				<input type="hidden" id="hidInterval9" value="{$int9Title}"/>
				<input type="hidden" id="hidInterval7" value="{$int7Title}"/>
				<input type="hidden" id="hidInterval10" value="{$int10Title}"/>
				<input type="hidden" id="hidInterval6" value="{$int6Title}"/>
				<input type="hidden" id="hidInterval8" value="{$int8Title}"/>
            </div>

            <div class="col-xl-4 col-lg-6 col-sm-10 mt-3 mt-xl-0">
                <div class="form-group">
                    <label>Report Name</label>
                    <input type="text" name="txtName" id="txtName" class="form-control"/>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-lg-6">
                <div class="form-group">
                    <label class="d-block">Take Spending Data from</label>
                    <div>
                        <label for="radCpvStats" class="mr-3">
                            <input type="radio" class="flat-purple minimal-repuploadSpending" name="radCpv" id="radCpvStats" value="1" checked="checked"/>
                            Current Stats
                        </label>
                        <label for="radCpvFile">
                            <input type="radio" class="flat-purple minimal-repuploadSpending" name="radCpv" id="radCpvFile" value="2"/>
                            Uploaded Report File
                        </label>
                    </div>
                </div>

                <div id="divSpending" style="display:none">
                    {if !$mbstringEnabled}
                        <div class="form-group">
                            <div class="col-xs-12">
                                <div class="alert alert-danger" role="alert">
                                    Warning: The 'mbstring' PHP extension required for report upload is not enabled on your server.<br/>
                                    Please ask your host to enable the 'mbstring' extension before uploading reports.
                                </div>
                            </div>
                        </div>
                    {/if}
                    <div class="form-group max-w-500">
                        <div class="col-xs-12">
                            <label><span id="spanCpvName">Network</span> file</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input form-control-file" name="uplReportCpv"/>
                                <label for="file" class="custom-file-label">Choose file</label>
                                {include file='partFileUploadJS.tpl'}
                            </div>
                        </div>
                    </div>
                    <div class="form-group max-w-500">
                        <label>Report Template</label>
                        <select name="ddlTemplate" class="form-control">
                            {html_options options=$cpvtemplatesArray}
                        </select>
                    </div>
                    <div class="form-group mb-4">
                        <div class="form-inline">
                            <label>
                                <input type="checkbox" name="chkUpdateStatsCpv" id="chkUpdateStatsCpv" class="flat-purple"/>
                                <i></i>
                            </label>
                            <label for="chkUpdateStatsCpv" id="lblUpdateStatsCpv" class="cursor-pointer ml-1">
                                Update Stats CPV with Average CPV from upload file
                            </label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 mt-4 mt-lg-0">
                <div class="form-group">
                    <label class="d-block">Take Converting SubIDs from</label>
                    <div>
                        <label for="radConvertingStats" class="mr-3">
                            <input type="radio" class="flat-purple minimal-repuploadSubIDs" name="radConverting" id="radConvertingStats" value="1" checked="checked"/>
                            Current Stats
                        </label>

                        <label for="radConvertingFile" class="">
                            <input type="radio" class="flat-purple minimal-repuploadSubIDs" name="radConverting" id="radConvertingFile" value="2"/>
                            Enter SubIDs
                        </label>
                    </div>
                </div>
                <div id="divConverting" style="display:none">
                    <div class="form-group">
                        <label>
                            Converting SubIds <span class="text-muted">(one per line)</span>
                            <span class="mt-1 d-block"><em>Optional: Enter unique payouts for each SubID as <strong>subId | revenue</strong></em></span>
                        </label>
                        <textarea name="txtSubIDs" class="form-control" rows="12"></textarea>
                    </div>
                </div>
            </div>
        </div>

        <button type="submit" name="btnSave_x" class="btn btn-primary">Save</button>
    </div>
</div>

<script type="text/javascript">
	{literal}
		function handleDaterangeSelection(datavalue, rangeID)
		{
			if (rangeID == 4)
			{
				$('#txtName').val($('#txtIntervalFrom').val().replace(new RegExp('/', "g"), '-') + ' to ' + $('#txtIntervalTo').val().replace(new RegExp('/', "g"), '-'));
			}
			else
			{
				$('#txtName').val($('#hidInterval' + rangeID).val());
			}
		}

		$(document).ready(function () {
			ajaxChangeCampaignDropdownCpv();
			initializeDaterangeSimple();

			$('.minimal-repuploadSpending').on('ifChecked', function(){
				$('#radCpvStats').prop("checked") ? $("#divSpending").slideUp(700) : $("#divSpending").slideDown(700);
			});

			$('.minimal-repuploadSubIDs').on('ifChecked', function(){
				$('#radConvertingStats').prop("checked") ? $("#divConverting").slideUp(700) : $("#divConverting").slideDown(700);
			});
		});
	{/literal}
</script>

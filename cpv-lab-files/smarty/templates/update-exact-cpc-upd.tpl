{include file='partUpdPage.tpl'}
{include file="partMessage.tpl" errorMessageNotAutoclose=true}

<div class="card">
    <div class="card-header">
        <h4>Update CPC</h4>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-lg-6">
                <div class="max-w-500">
                    <div class="form-group">
                        <label>Select Campaign:</label>
                        <select name="ddlCampaign" id="ddlCampaign" class="form-control">
                            {html_options options=$campaignsArray selected=$selectedCampaignID}
                        </select>
                    </div>

                    <div class="form-group">
              			<label>Exact CPC File:</label>
                        <div class="custom-file">
                          <input type="file" class="custom-file-input form-control-file" name="uplExactBids">
                          <label for="file" class="custom-file-label">Choose file</label>
                        </div>
        			    {include file='partFileUploadJS.tpl'}
          			</div>

                    <div class="form-group mb-4">
                        <label>Report Template</label>
                        <select name="ddlTemplate" class="form-control">
                          {html_options options=$cpvtemplatesArray}
                        </select>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                {include file='partControlIntervalRangeSimple.tpl' customID=''
                    customIntervalFrom=$currentDateFormatted|default:'' customIntervalTo=$currentDateFormatted|default:''}

                <div class="form-group mt-3">
                    <label>Upload Bids for</label>
                    <div>
                        <label for="radBidTypeTarget" class="mr-3">
                            <input type="radio" class="flat-purple" name="radBidType" id="radBidTypeTarget" value="1" checked="checked"/>
                            Keywords/Targets
                        </label>
                        <label for="radBidTypeAd">
                            <input type="radio" class="flat-purple" name="radBidType" id="radBidTypeAd" value="2" />
                            Ads
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label>
                        <input type="checkbox" class="flat-purple" name="chkNewBids" id="chkNewBids"/>
                        Set as New CPC/CPV
                    </label>
                </div>

                <div class="form-group">
    				<label id="lblUpdateStatsCpv">
    					<input type="checkbox" class="flat-purple" name="chkUpdateStatsCpv" id="chkUpdateStatsCpv" class="form-control"/>
    					Update Stats CPV with Average CPV from upload file
    				</label>
      			</div>
            </div>
        </div>

        <button type="submit" name="btnSave_x" class="btn btn-primary" disabled="disabled">Save</button>
    </div>
</div>

<div class="row">
    <div class="col-12 col-lg-6">
        <div class="card">
            <div class="card-header">
                <h4>Define Keyword CPC Bids</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-xl-12 mb-5 mb-xl-0">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="form-group">
                                    <label>Keyword/Target:</label>
                                    <input type="text" class="form-control" name="txtNewBidTarget" />
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Bid Value:</label>
                                    <input type="text" class="form-control" name="txtNewBidTargetValue" onblur="validateFloat(this,0)" />
                                </div>
                            </div>
                        </div>
                        <button type="submit" name="btnSaveNewBidTarget_x" class="btn btn-primary" disabled="disabled">Save Keyword Bid</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-12 col-lg-6">
        <div class="card">
            <div class="card-header">
                <h4>Define Ad CPC Bids</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-xl-12 mb-5 mb-xl-0">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="form-group">
                                    <label>Ad:</label>
                                    <input type="text" class="form-control" name="txtNewBidAd" />
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Bid Value:</label>
                                    <input type="text" class="form-control" name="txtNewBidAdValue" onblur="validateFloat(this,0)" />
                                </div>
                            </div>
                        </div>
                        <button type="submit" name="btnSaveNewBidAd_x" class="btn btn-primary" disabled="disabled">Save Ad Bid</button>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="card" id="wdgExactBidsCurrent">
    <div class="card-header">
        <h4>Current CPC Bids<img src="images/spinner.gif" alt="Working..." id="spinL" class="ml-4" style="display:none"/></h4>
    </div>
    <div class="card-body" id="divCurrentExactBids"></div>
</div>

<div class="card">
    <div class="card-header">
        <h4>Update Total Campaign Cost</h4>
    </div>
    <div class="card-body">
        <div class="row pb-4">
            <div class="col-lg-6">
                <div class="max-w-500">
                    <div class="form-group">
                        <label>Select Campaign:</label>
                        <select name="ddlCampaignTotalCost" id="ddlCampaignTotalCost" class="form-control">
                            {html_options options=$campaignsArray selected=$selectedCampaignID}
                        </select>
                    </div>

                    <div class="form-group">
                        <div class="form-inline-long">
                            <label class="font-weight-bold">Total Campaign Cost: $ </label>
                            <input type="text" name="txtTotalCampaignCost" id="txtTotalCampaignCost" class="form-control width-80px" onblur="validateFloat(this,0)" value="">
                        </div>
          			</div>
                </div>
            </div>
        </div>

        <button type="button" onclick="saveTotalCost()" class="btn btn-primary" disabled="disabled">Update Campaign Cost</button>
        <button type="submit" id="btnSaveTotalCost_x" name="btnSaveTotalCost_x" class="btn btn-primary d-none" disabled="disabled">Save</button>
    </div>
</div>

<script type="text/javascript">
	{literal}
		$(document).ready(function () {
			initializeDaterangeSimple();
		});
	{/literal}
</script>

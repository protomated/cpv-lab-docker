{include file="partMessage.tpl" errorMessageNotAutoclose=true}

<div class="card">
    <div class="card-header">
        <h4>Update Conversions</h4>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-lg-7">
                <div class="form-group">
                    <label>Select Campaign</label>
                    <select name="ddlCampaign" id="ddlCampaign" class="form-control">
                        {html_options options=$campaignsArray selected=-1}
                    </select>
                </div>
            </div>

            <div class="col-lg-5">
                <div class="form-group">
                    <label>Additional Details</label>
                    <div class="mt-1">
                        <label for="chkDetailsRevenue" class="mr-3">
                            <input type="checkbox" class="flat-purple" name="chkDetailsRevenue" id="chkDetailsRevenue"/>
                            Revenue
                        </label>
                        <label for="chkDetailsDate">
                            <input type="checkbox" class="flat-purple" name="chkDetailsDate" id="chkDetailsDate"/>
                            Conversion Date
                        </label>
                    </div>
                </div>
            </div>

            <div class="col-xl-9 mt-2">
                <div class="form-group">
                    <label>
                        Enter Converting SubIDs or IP Addresses <span class="text-muted">(one per line)</span><br/>
                        Optional: Enter unique payouts for each SubID and/or the Converting Date as <strong>subId | revenue</strong> or <strong>subId | date</strong> or <strong>subId | revenue | date</strong>
                    </label>
                    <textarea name="txtSubIDs" rows="15" class="form-control"></textarea>
                </div>
            </div>

            <div class="col-12">
                <div class="form-group">
                    <label for="chkFireTsPostback">
                        <input type="checkbox" class="flat-purple" id="chkFireTsPostback" name="chkFireTsPostback"/>
                        Send Conversions to Traffic Source
                    </label>
                </div>
            </div>

            <div class="col-12">
                <div class="form-group">
                    <label for="chkRemoveCurrent">
                        <input type="checkbox" class="flat-purple" id="chkRemoveCurrent" name="chkRemoveCurrent"/>
                        Remove existing Conversions for the selected campaign
                    </label>
                </div>
            </div>
        </div>

        <button type="button" onclick="savePage()" class="btn btn-primary">Save</button>
        <button id="btnSave_x" name="btnSave_x" class="btn btn-success d-none">Save</button>
    </div>
</div>

<script type="text/javascript">
	{literal}
		function savePage()
		{
			if ($('#chkRemoveCurrent').prop("checked"))
			{
                            confirm("Are you sure you want to remove all current registered conversions for " +
                                $("#ddlCampaign").children("option").filter(":selected").text() + "? Warning:  This action cannot be undone!", function(){
                                    $('#btnSave_x').click();
                            });
			}
			else
				$('#btnSave_x').click();
		}
	{/literal}
</script>

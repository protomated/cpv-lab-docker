{include file="partMessage.tpl"}

<div class="card">
    <div class="card-header">
        <h4><span class="badge badge-light mr-2">1</span> Select Offer</h4>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-xl-6 col-lg-8">
                <div class="form-group mb-0">
                    <label>Select Offer</label>
                    <select name="ddlOffers" class="form-control">
                        {html_options options=$offersArray selected=$selectedOfferID|default:0}
                    </select>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header">
        <h4><span class="badge badge-light mr-2">2</span> Select Campaign/s to Add Offer</h4>
    </div>
    <div class="card-body">
        <p>Filter Campaigns by</p>

        <div class="row">
            <div class="col-lg-4">
                <div class="form-group">
                    <label>Traffic Souce</label>
                    <select name="ddlFilterSources" id="ddlFilterSources" class="form-control" onchange="ajaxGetCampaignsOfferManagement()">
                        {html_options options=$filterSources}
                    </select>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="form-group">
                    <label>Campaign Group</label>
                    <select name="ddlFilterGroups" id="ddlFilterGroups" class="form-control" onchange="ajaxGetCampaignsOfferManagement()">
                        {html_options options=$filterGroups}
                    </select>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="form-group">
                    <label>Campaigns that Include</label>
                    <select name="ddlFilterOffers" id="ddlFilterOffers" class="form-control" onchange="ajaxGetCampaignsOfferManagement()">
                        {html_options options=$filterOffers}
                    </select>
                </div>
            </div>
        </div>

        <div class="row align-items-center mb-3">

            <div class="col-lg-2 col-sm-4 col-6">
                <div class="form-group mb-0">
                    <label>Share %</label>
                    <input type="text" class="form-control" name="txtShare" id="txtShare" value="0" onblur="validateInt(this, 0, 100)">
                </div>
            </div>

            <div class="col-lg-6 col-sm-8">
                <div class="form-group mb-0 mt-4">
                    <label class="mb-0">
                        <input type="checkbox" class="flat-purple" name="chkAutoOfferID" id="chkAutoOfferID"/>
                        Automatically Assign Unique Offer ID
                    </label>
                </div>
            </div>
        </div>

		{foreach $campaignTypes as $campaignType}
        <div class="row mt-5">
            <div class="col-12">
                <h5 class="mb-4">{$campaignType.CampaignType}s</h5>
                <div class="transfer{$campaignType.CampaignTypeID}"></div>
            </div>
        </div>
		{/foreach}

    </div>
</div>
<input type="hidden" name="chkCamp" id="chkCamp" value=""/>
<div class="card">
    <div class="card-body">
        <button type="submit" name="btnSave_x" class="btn btn-primary" onclick="saveSelectedCampaigns()">Save</button>
    </div>
</div>

<script type="text/javascript">
	var myTransfer = [];
	function saveSelectedCampaigns()
	{
		var selectedCampaigns = '';
		for(campaignType=4; campaignType<=9; campaignType++)
		{
			$.each(myTransfer[campaignType].getSelectedItems(), function(key, value)
			{
				selectedCampaigns += value["value"] + ',';
			});
		}
		$('#chkCamp').val(selectedCampaigns);
	}
	{literal}
    $(document).ready(function () {
        ajaxGetCampaignsOfferManagement();
    })
	{/literal}
</script>
			
<!--Jquerytransfer css-->
<link rel="stylesheet" href="style-spl/plugins/jQuerytransfer/jquery.transfer2.css"/>
<link rel="stylesheet" href="style-spl/plugins/jQuerytransfer/icon_font/icon_font.css"/>

<!--jquery transfer js-->
<script src="style-spl/plugins/jQuerytransfer/jquery.transfer2.js"></script>
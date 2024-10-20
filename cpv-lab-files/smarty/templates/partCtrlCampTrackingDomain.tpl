<select class="form-control" id="ddlTrackingDomains" name="ddlTrackingDomains" onchange="updateCampaignLinks()" {if $showupdstobj.customdomains|default:0}disabled="disabled"{/if}>
					{html_options options=$trackingDomains selected=$campaignDetails.TrackingDomain}
				</select>
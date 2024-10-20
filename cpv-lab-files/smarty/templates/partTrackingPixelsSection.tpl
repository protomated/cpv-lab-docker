<input type="hidden" name="hidPixelsToShow" id="hidPixelsToShow" value="{$additionalPixelsToShow}"/>
<div class="">
	{if $campaignTypeID!=9}
		<div class="form-group mt-3 mb-2">
			<label for="chkPostbackUrl">
				<input type="checkbox" class="flat-purple" name="chkPostbackUrl" id="chkPostbackUrl"{if $postbackUrl.Enabled|default:0} checked="checked"{/if}>
				<span class="font-weight-bold">Use Traffic Source Postback URL to mark conversions at your Traffic Source</span>
			</label>
		</div>

		<div class="row">
			<div class="col-sm-9">
				<textarea id="txtPostbackUrl" class="form-control" rows="7">{$postbackUrl.TrackingCode|default:''}</textarea>
				<input type="hidden" name="hidPostbackUrlID" id="hidPostbackUrlID" value="{$postbackUrl.TrackingID|default:''}" />
				<input type="hidden" name="hidPostbackUrl" id="hidPostbackUrl" />
			</div>
			<div class="col-sm-3 mt-3 mt-sm-0">
				<div class="form-group">
					<label>Offer IDs: {include file='partTooltip.tpl' tooltipID=23}</label>
					<input type="text" name="txtPostbackUrlOffers" id="txtPostbackUrlOffers" value="{$postbackUrl.OfferID|default:''}" class="form-control" />
				</div>
				<div class="form-group">
					<label>Send Postback %: {include file='partTooltip.tpl' tooltipID=25}</label>
					<input type="text" name="txtPostbackUrlSend" id="txtPostbackUrlSend" value="{$postbackUrl.SendPercentage|default:'100'}" class="form-control" onblur="validateInt(this, 0, 100)" />
				</div>
			</div>
		</div>
	{/if}
	<input type="hidden" id="hidApiData" value="{$postbackApiData|default:''}" />
	<p><i>
		Enter additional pixel / postback URLs to include in the tracking pixel (one per field)<br/>
		If you want to fire the pixel for specific offers, enter the offer IDs separated by comma</i>
	</p>
	<div class="mb-3" id="divTrackingsContainer">
        {for $i=0 to $additionalPixelsToShow-1}
			{include file='partHtmlAdditionalPixel.tpl'}
        {/for}
    </div>
	<a href="javascript:;" onclick="addTracking()" class="btn btn-primary btn-sm"><i class="fe fe-plus"></i> Add Pixel Field</a>

	<div id="divHtmlNewAdditionalPixel" class="d-none">{include file='partHtmlAdditionalPixel.tpl' i=null}</div>
</div>

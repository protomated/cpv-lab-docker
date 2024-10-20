{if is_null($i)}
	{assign var="i" value='tmpCount'}
{/if}
<div class="row mb-3">
	<div class="col-sm-9">
		<textarea name="txtTrackingCode{$i}" id="txtTrackingCode{$i}" class="form-control" rows="3">{$additionalPixels.$i.TrackingCode|default:''}</textarea>
		<input type="hidden" name="hidTrackingID{$i}" id="hidTrackingID{$i}" value="{$additionalPixels.$i.TrackingID|default:''}" />
		<input type="hidden" name="hidTrackingCode{$i}" id="hidTrackingCode{$i}" />
	</div>
	<div class="col-sm-3">
		<div class="form-group mt-3 mt-sm-0 mb-0">
			<label>Offer IDs: {include file='partTooltip.tpl' tooltipID=24}</label>
			<input type="text" name="txtTrackingOffers{$i}" id="txtTrackingOffers{$i}" value="{$additionalPixels.$i.OfferID|default:''}" class="form-control" />
		</div>
	</div>
</div>

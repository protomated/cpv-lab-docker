{$showOfferPixels = $campaignTypeID == 6 || $campaignTypeID == 7}
{$isModal = $isModal|default:false}
{$modalSuffix = ($isModal) ? 'Mdl' : ''}
{if !$isModal}
	<div class="row">
		<div class="col-12">

		{/if}
		<div class="form-group">
			<label>Image Pixel</label>
			<div class="input-group">
				<input type="text" id="txtStepTrackingI{$modalSuffix}" class="form-control back-diff" readonly="readonly" onclick="select_all(this)"/>
				{include file="partCopyClipboard.tpl"}
			</div>
		</div>
		{if $showOfferPixels}
		<div class="form-group">
			<label class="font-italic">Use the Pixel below, if Mulitple Conversions are tracked per visitor
					{if !$isModal}<br/>Replace <b>xxx</b> with the offer ID{/if}</label>
			<div class="input-group">
				<input type="text" id="txtStepTrackingIb{$modalSuffix}" class="form-control back-diff" readonly="readonly" onclick="select_all(this)"/>
				{include file="partCopyClipboard.tpl"}
			</div>
		</div>
		{/if}
		<div class="form-group">
			<label>Iframe Pixel (required when calling multiple 3rd party pixels)</label>
			<div class="input-group">
				<input type="text" id="txtStepTrackingF{$modalSuffix}" class="form-control back-diff" readonly="readonly" onclick="select_all(this)"/>
				{include file="partCopyClipboard.tpl"}
			</div>
		</div>
		{if $showOfferPixels}
		<div class="form-group">
			<label class="font-italic">Use the Pixel below, if Mulitple Conversions are tracked per visitor
					{if !$isModal}<br/>Replace <b>xxx</b> with the offer ID{/if}</label>
			</label>
			<div class="input-group">
				<input type="text" id="txtStepTrackingFb{$modalSuffix}" class="form-control back-diff" readonly="readonly" onclick="select_all(this)"/>
				{include file="partCopyClipboard.tpl"}
			</div>
		</div>
		{/if}
		<div class="form-group">
			<label>Script Pixel</label>
			<div class="input-group">
				<input type="text" id="txtStepTrackingS{$modalSuffix}" class="form-control back-diff" readonly="readonly" onclick="select_all(this)">
				{include file="partCopyClipboard.tpl"}
			</div>
		</div>
		{if $showOfferPixels}
		<div class="form-group">
			<label class="font-italic">Use the Pixel below, if Mulitple Conversions are tracked per visitor
					{if !$isModal}<br/>Replace <b>xxx</b> with the offer ID{/if}</label>
			</label>
			<div class="input-group">
				<input type="text" id="txtStepTrackingSb{$modalSuffix}" class="form-control back-diff" readonly="readonly" onclick="select_all(this)">
				{include file="partCopyClipboard.tpl"}
			</div>
		</div>
		{/if}
		{if !$modalSuffix}
			<div class="form-group">
				<label>
					General Postback URL (Server2Server Pixel)
					<span class="font-italic text-muted">
						You need to pass the CPV Lab Pro subID corresponding to the converting visitor in place of "subid-here"
					</span>
				</label>
				<div class="input-group">
					<input type="text" id="txtStepTrackingP" class="form-control back-diff" readonly="readonly" onclick="select_all(this)"/>
					{include file="partCopyClipboard.tpl"}
				</div>
			</div>
			<div id="divSpecificPostbacks"></div>
			<div id="divSpecificTsPostback"></div>
		{/if}
		{if !$isModal}
		</div>
	</div>
{/if}

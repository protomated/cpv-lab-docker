<div class="modal fade" id="mdlPostbackURL" tabindex="-1" role="dialog" aria-labelledby="postbackModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="postbackModalLabel">Postback URL &amp; Tracking Pixels for Offer <span id="spnMdlOfferName"></span></h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<h6 class="mb-3">In order to get conversion details passed from your Offer Source <b><span id="spnMdlOfferSourceName"></span></b> back to CPV Lab Pro, use one of the options below:</h6>
				<div id="divMdlOfferSourceHasPostback" style="display:block">
					<label>The network accepts Postback URLs, so setup the following URL as the Postback URL in their interface:</label>
					<div class="input-group">
						<input type="text" id="txtPostbackURLSpecificMdl" class="form-control back-diff" readonly="readonly" onclick="select_all(this)"/>
						{include file="partCopyClipboard.tpl"}
					</div>
				</div>
				<div id="divMdlOfferSourceNoPostback" style="display:none">
					<label>If your Offer Source allows using a Postback URL, then use the one below:</label>
					<div class="input-group">
						<input type="text" id="txtPostbackURLGeneralMdl" class="form-control back-diff" readonly="readonly" onclick="select_all(this)"/>
						{include file="partCopyClipboard.tpl"}
					</div>
				</div>

				<p class="mt-4 mb-2">Instead of a Postback URL, you can also use a Tracking Pixel to get conversions from your Offer Source.<br/>
				In this case, use only one of the Tracking Pixels below:</p>
				{include file='partPixelVariationsSection.tpl' isModal=true}

				<p class="mt-4 mb-0">Check the Online Documentation for more details about
					<a href="https://doc.cpvlab.pro/tracking-pixels.html" target="_blank">Tracking Pixels</a> &amp;
					<a href="https://doc.cpvlab.pro/postback-url.html" target="_blank">Postback URLs</a>.
				</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

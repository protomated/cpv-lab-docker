<div class="modal fade" id="mdlDirectTraffic" tabindex="-1" role="dialog" aria-labelledby="directModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="directModalLabel">Tracking Links &amp; Tracking Code for Landing Page <span id="mdlDirectTrafficLpName1"></span></h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div id="mdlDirectTrafficDivOk">
					<h6 class="mb-3"><b>Step 1: Use the tracking link below in your Landing Page</b></h6>
					
					<div class="form-group mb-4">
						<div class="mb-2">
							<select id="ddlTrackingLinkLPModal" class="form-control mb-2 ddlTrackingLinkLP" style="float:right; width: 200px;"></select>
							<label style="display:inline"><i>Choose the desired target redirect (offer, option group, level) from the dropdown, then you will receive the exact tracking link to use in your page.</i></label>
						</div>
						<div class="form-group">
							<label>Landing Page Tracking Link:</label>
							<div class="input-group">
								<input type="text" id="txtStep1Modal" class="form-control back-diff" readonly="readonly" onclick="select_all(this)"/>
								{include file="partCopyClipboard.tpl"}
							</div>
						</div>
					</div>

					<h6 class="mb-3"><b>Step 2: Place the tracking code below in your Landing Page</b></h6>
					<div class="mb-2">
					<label><i>Code should be added in the HTML of the page, before the &lt;/body&gt; ending tag.<br/>
					If using a landing page builder tool, you will choose to place the code in the Footer section of the page.</i></label>
					</div>
					<div class="form-group">
						<label>Landing Page Tracking Code:</label>
						<div class="input-group">
							<textarea id="txtMdlTrackingCode" class="form-control back-diff" readonly="readonly" rows="5" onclick="select_all(this)"></textarea>
							{include file="partCopyClipboard.tpl"}
						</div>
					</div>
				</div>
				<div id="mdlDirectTrafficDivError" style="display:none" class="text-red font-weight-bold">
					Please set a numeric ID to your Landing Page (greater than 0)!<br/><br/>
					Make sure that all landing pages from your campaign have unique IDs assigned to them.
				</div>

				<p class="mt-4 mb-0">More details about the Tracking Code can be found in
					<a href="https://doc.cpvlab.pro/tracking-code-tracking-links.html" target="_blank">the Online Documentation</a>.
				</p>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

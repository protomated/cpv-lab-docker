<script src="lib/qrcode.min.js"></script>
<div class="modal fade modal-qrcode" id="qrCodeModal" tabindex="-1" role="dialog" aria-labelledby="predefModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm modal-qrcode modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="predefModalLabel">Scan the QR Code</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>

			<div class="modal-body p-0">
				<div class="fullwidth p-2">
					<input type="text" id="txtQrText" value="" style="width:100%" readonly="readonly" class="form-control"/>
				</div>
				<div class="fullwidth modalQrBack p-3">
					<div class="mt-3 d-flex justify-content-center" id="qrcode">
					</div>
				</div>
			</div>
			<!--<div class="modal-footer">
			  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			  <button type="button" class="btn btn-primary">Save changes</button>
			</div>-->
		</div>
	</div>
</div>

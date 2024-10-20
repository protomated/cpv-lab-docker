<div class="modal fade" id="mdlEmailCheck" tabindex="-1" role="dialog" aria-labelledby="emailCheckModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
					<h5 class="modal-title" id="emailCheckModalLabel">Test Email Settings</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span></button>
			</div>

			<div class="modal-body">
				<p>Send a Test Email in order to verify that the email settings are correct.</p>

				<div class="form-group">
					<label>Recipient Email</label>
					<input type="text" class="form-control" id="txtRecipient"/>
				</div>

				<button type="button" name="btnTestEmails" class="btn btn-primary" onclick="ajaxEmailCheck()"><i class="fa fa-envelope-o"></i> Test SMTP Settings</button>

				<div class="form-group mt-4 pt-1">
					<div>
						<label>Test Result</label>
						<img src="images/spinner.gif" alt="Working..." id="spnec" style="display:none"/>
					</div>
					<textarea id="txtCheckEmailResult" rows="5" class="form-control"></textarea>
				</div>

				<p><b>Make sure to save the Configuration Editor page after testing the email settings!</b></p>
				<p class="mb-0">More details about configuring Emails can be found in
					<a href="https://doc.cpvlab.pro/setting-up-notifications.html" target="_blank">the Online Documentation</a>.</p>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

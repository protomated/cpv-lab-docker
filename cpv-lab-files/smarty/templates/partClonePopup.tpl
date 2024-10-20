<input type="hidden" id="hidCloneID" name="hidCloneID" value="0"/>
<!-- Modal for Clone Campaign-->
<div class="modal fade" id="cloneCampaignModal" tabindex="-1" role="dialog" aria-labelledby="cloneCampaignModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="cloneCampaignModalLabel">Clone Campaign</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<p class="mb-0">You are cloning campaign <b id="cloneObjectName"></b>.</p><br/><br/>
				What campaign type to clone to?<br/><br/>
				<select name="ddlCloneCampaignType" id="ddlCloneCampaignType" class="form-control">
					{html_options options=$campaignTypesOptions}
				</select><br/>
			</div>
			<div class="modal-footer">
				<button type="submit" name="btnClone" value="Clone" class="btn btn-primary btn-sm">YES</button>
				<button type="button" id="btnNO" value="Cancel" class="btn btn-secondary btn-sm" data-dismiss="modal">NO</button>
			</div>
		</div>
	</div>
</div>
<!-- Modal closed -->
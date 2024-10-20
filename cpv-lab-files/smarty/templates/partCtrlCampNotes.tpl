<div class="card">
	<div class="card-header">
		<div class="float-right">
		  <a data-collapse="#card-notes" class="btn btn-icon d-table-cell">
			<i class="ion ion-minus"></i>
		  </a>
		</div>
		<h4>Campaign Notes</h4>
	</div>

	<div class="collapse show" id="card-notes">
		<div class="card-body">
			<div class="form-group mb-0">
				<div class="input-group">
					<textarea id="txtNotes" rows="3" class="form-control">{$campaignDetails.Notes|default:''}</textarea>
					{include file="partCopyClipboard.tpl"}
					<input type="hidden" name="hidNotes" id="hidNotes" />
				</div>
			</div>
		</div>
	</div>
</div>

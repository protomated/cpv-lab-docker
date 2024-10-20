<input type="hidden" id="hidDeleteID" name="hidDeleteID" value="0"/>
<!-- Modal for Delete Item-->
<div class="modal fade" id="deleteItemModal" tabindex="-1" role="dialog" aria-labelledby="deleteItemModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="deleteItemModalLabel">Confirm the Delete Action</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
                {if isset($showPartDeleteCustomMessage) && $showPartDeleteCustomMessage}
                    The <span id="currentTabName"></span> associated with this group will be added to the default group.
                {/if}
				<p class="mb-0">Are you sure you want to delete {$objectLabel|default:'' nofilter}<b id="deleteObjectName"></b>?</p>
			</div>
			<div class="modal-footer">
				{if $useAjaxButton|default:false}
					<button type="button" id="btnSubmitYes" value="YES" class="btn btn-danger btn-sm" data-dismiss="modal" onclick="ajaxDeleteRedirectProfile()">YES</button>
				{else}
					<button type="submit" name="btnSubmitYes" value="YES" class="btn btn-danger btn-sm">YES</button>
				{/if}
				<button type="button" id="btnNO" value="NO" class="btn btn-default btn-sm" data-dismiss="modal">NO</button>
			</div>
		</div>
	</div>
</div>
<!-- Modal closed -->
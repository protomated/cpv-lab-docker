<div id="divModalDeleteContainer">
	<div id="divModalDelete" style="position: relative; top:0px; left:0px; display:none">
		<div class="divDeleteLarge">Are you sure you want to delete {$objectLabel nofilter}<b id="deleteObjectName"></b>?<br/><br/>
			<input type="button" id="btnSubmitYes" value="YES" class="btn btn-danger btn-sm" onclick="ajaxDeleteRedirectProfile()" style="width:70px" />&nbsp;
			<input type="button" id="btnNO" value="NO" class="btn btn-default btn-sm" onclick="closeOpenWindows()" style="width: 70px" />
		</div>
	</div>
</div>
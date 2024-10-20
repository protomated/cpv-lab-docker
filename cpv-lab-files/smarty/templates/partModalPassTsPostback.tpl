<div class="modal fade" id="tsPostbackModal" tabindex="-1" role="dialog" aria-labelledby="tsPostbackModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="tsPostbackModalLabel">Sending Conversions to the Traffic Source</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="mt-4 text-center" style="width:100%" id="divtsPostback">
					<p>Please wait until all conversions are passed to the Traffic Source!</p>
                    
                    <div class="row mb-0 align-items-center">
                        <div class="col-12">
                            <div class="card-icon text-center">
                                <input type="text" id="knobPassedTsPostback" class="knob" value="0" data-thickness="0.2" data-width="60" data-height="60" data-fgColor="#7673e6">
                            </div>
                        </div>
                    </div>

                    <p id="txtTsPostbackStatus" class="mt-3 mt-2">Passed 0 conversions.</p>
					<button type="button" class="btn btn-primary" id="btnTsPostbackSuccess" data-dismiss="modal" style="display:none">Close</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function () {
	});
</script>

<div class="modal fade" id="predefModal" tabindex="-1" role="dialog" aria-labelledby="predefModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="predefModalLabel">Click on the Logo of the Traffic Source that you want to import</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<input type="text" id="txtFilterPredef" class="form-control" placeholder="Search for name..."/>
				<div class="mt-4" style="width:100%; height:350px; overflow: auto" id="divPredefTrafficSource">
					<table id="tblPredefTrafficSource" style="width:100%;" class="table table-striped table-bordered table-hover margin-top-1px tbl-responsive"></table>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function () {
		ajaxGetPredefTrafficSources();
		initializePredefinedTableFilter("tblPredefTrafficSource");
	});
</script>
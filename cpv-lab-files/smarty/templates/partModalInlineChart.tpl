<div class="modal fade" id="mdlInlineChart" tabindex="-1" role="dialog" aria-labelledby="inlineChartModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="inlineChartModalLabel">Chart</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<div class="modal-body">
				<div class="form-group row">
					<label class="col-auto form-label">Currently displaying</label>
					<div class="col-md-4 col-sm-6">
						<select id="ddlInlineChartColumns" name="ddlInlineChartColumns" onchange="ajaxLoadChart(this)" class="form-control">
						</select>
					</div>
				</div>

				<div class="chart-container" style="height: 400px;">
					<div id="chartplaceholderinline" class="chart-placeholder"></div>
				</div>

				<input type="hidden" id="hidInlineChartReportTypeID" id="hidReportType" value=""/>
				<input type="hidden" id="hidInlineChartLevelID" id="hidReportType" value=""/>
			</div>
		</div>
	</div>
</div>

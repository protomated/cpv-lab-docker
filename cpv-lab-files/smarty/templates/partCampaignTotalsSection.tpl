<!--row open-->
<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-body p-4">
				<div class="d-flex align-items-center justify-content-center">
				  <span class="stamp stamp-md bg-info mr-3">
					<i class="fa fa-eye pt-12"></i>
				  </span>
					<div>
						<h4 class="m-0"><strong>{$campaignTotals.TotalViews|default:0|number_format:0}</strong></h4>
						<h6 class="mb-0">Total Visitors</h6>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-sm-6">
		<div class="card">
			<div class="card-body knob-chart pt-4 pr-3 pb-4 pl-3">
				<div class="row mb-0 align-items-center">
					<div class="col-6">
						<div class="card-icon text-center">
							<input type="text" class="knob" value="{(($campaignTotals.TotalViews > 0) ? $campaignTotals.Views * 100.0 / $campaignTotals.TotalViews : 0)|default:0|number_format:0}" data-thickness="0.2" data-width="60" data-height="60" data-fgColor="#31c92e">
						</div>
					</div>
					<div class="col-6 pl-0">
						<div class="dash3 text-center mt-0">
							<small class="text-muted mt-0">Campaign</small>
							<h2 class="text-dark mb-0">{$campaignTotals.Views|default:0|number_format:0}</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="card">
			<div class="card-body knob-chart pt-4 pr-3 pb-4 pl-3">
				<div class="row mb-0 align-items-center">
					<div class="col-6">
						<div class="card-icon text-center">
							<input type="text" class="knob" value="{(($campaignTotals.TotalViews > 0) ? $campaignTotals.DirectViews * 100.0 / $campaignTotals.TotalViews : 0)|default:0|number_format:0}" data-thickness="0.2" data-width="60" data-height="60" data-fgColor="#7673e6">
						</div>
					</div>
					<div class="col-6 pl-0">
						<div class="dash3 text-center mt-0">
							<small class="text-muted mt-0">Direct</small>
							<h2 class="text-dark mb-0">{$campaignTotals.DirectViews|default:0|number_format:0}</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="card mb-sm-0">
			<div class="card-body knob-chart pt-4 pr-3 pb-4 pl-3">
				<div class="row mb-0 align-items-center">
					<div class="col-6">
						<div class="card-icon text-center">
							<input type="text" class="knob" value="{(($campaignTotals.TotalViews > 0) ? $campaignTotals.MobileViews * 100.0 / $campaignTotals.TotalViews : 0)|default:0|number_format:0}" data-thickness="0.2" data-width="60" data-height="60" data-fgColor="#3ebaef">
						</div>
					</div>
					<div class="col-6 pl-0">
						<div class="dash3 text-center mt-0">
							<small class="text-muted mt-0">Mobile</small>
							<h2 class="text-dark mb-0">{$campaignTotals.MobileViews|default:0|number_format:0}</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="card mb-sm-0">
			<div class="card-body knob-chart pt-4 pr-3 pb-4 pl-3">
				<div class="row mb-0 align-items-center">
					<div class="col-6">
						<div class="card-icon text-center">
							<input type="text" class="knob" value="{(($campaignTotals.TotalViews > 0) ? $campaignTotals.BlockedViews * 100.0 / $campaignTotals.TotalViews : 0)|default:0|number_format:0}" data-thickness="0.2" data-width="60" data-height="60" data-fgColor="#f47b25">
						</div>
					</div>
					<div class="col-6 pl-0">
						<div class="dash3 text-center mt-0">
							<small class="text-muted mt-0">Blocked</small>
							<h2 class="text-dark mb-0">{$campaignTotals.BlockedViews|default:0|number_format:0}</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--row closed-->

<div class="row">
	<div class="col-xl-6 mb-5 mb-xl-0">
		<div class="table-responsive">
				<table class="table table-striped table-hover icheckbox-whitebg">
					<thead>
						<tr>
							<th class="text-center">
								<label class="mb-1">
									<input type="checkbox" class="flat-purple" id="chkTAll"/>
								</label>
							</th>
							<th>Keyword/Target</th>
							<th>Bid</th>
						</tr>
					</thead>
					<tbody>
						{foreach $bidTargets as $bidTarget}
							<tr>
								<td class="center">
									<label class="mb-1">
										<input type="checkbox" class="flat-purple chkcolT" id="chkT{$bidTarget.SubIdID}"/>
									</label>
								</td>
								<td>{$bidTarget.Keyword}</td>
								<td>{$bidTarget.Cost|number_format:4}</td>
							</tr>
						{/foreach}
					</tbody>
				</table>
		</div>
		<div class="form-inline justify-content-center">
			<div class="form-group">
				<label class="control-label">Remove Exact CPC for Selected Keywords/Targets</label>
				<button type="button" onclick="removeExactBids('T')" class="btn btn-primary btn-sm ml-2">GO</button>
			</div>
		</div>
	</div>

	<div class="col-xl-6">
		<div class="table-responsive">
				<table class="table table-striped table-hover icheckbox-whitebg">
					<thead>
						<tr>
							<th class="center">
								<label class="mb-1">
									<input type="checkbox" class="flat-purple" id="chkAAll"/>
								</label>
							</th>
							<th>Ad</th>
							<th>Bid</th>
						</tr>
					</thead>
					<tbody>
						{foreach $bidAds as $bidAd}
							<tr>
								<td class="center">
									<label class="mb-1">
										<input type="checkbox" class="flat-purple chkcolA" id="chkA{$bidAd@index}"/>
									</label>
								</td>
								<td>{$bidAd.AdValue}</td>
								<td>{$bidAd.Cost|number_format:4}</td>
							</tr>
						{/foreach}
					</tbody>
				</table>
		</div>
		<div class="form-inline justify-content-center">
			<div class="form-group">
				<label class="control-label">Remove Exact CPC for Selected Ads</label>
				<button type="button" onclick="removeExactBids('A')" class="btn btn-primary btn-sm ml-2">GO</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	{literal}
	$(document).ready(function () {
		initializeIcheckControls();
		$('#chkTAll').on('ifChanged', function(event){
			checkAllStats('chkT');
		});
		$('#chkAAll').on('ifChanged', function(event){
			checkAllStats('chkA');
		});
	});
	{/literal}
</script>

<div class="form-group mb-0">
	<label>Date Range</label>
	<div class="input-group">
		<button type="button" class="btn btn-primary pull-right daterange-btn-simple" id="daterange-btn-simple{$customID}">
			<span>
				<i class="fa fa-calendar"></i> Date range picker
			</span>
			<i class="fa fa-caret-down"></i>
		</button>
	</div>
	<input type="hidden" name="txtIntervalFrom{$customID}" id="txtIntervalFrom{$customID}" value="{$customIntervalFrom}"/>
	<input type="hidden" name="txtIntervalTo{$customID}" id="txtIntervalTo{$customID}" value="{$customIntervalTo}"/>
	<input type="hidden" name="txtIntervalNow" id="txtIntervalNow" value="{$intervalNow|default:''}"/>
</div>

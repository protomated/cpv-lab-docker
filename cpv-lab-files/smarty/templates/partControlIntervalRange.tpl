<div class="form-group mb-0">
	<label>Date Range</label>
	<div class="input-group">
		<button type="button" class="btn btn-primary pull-right" id="daterange-btn">
			<span>
				<i class="fa fa-calendar"></i> Date range picker
			</span>
			<i class="fa fa-caret-down"></i>
		</button>
	</div>
	<input type="hidden" name="txtIntervalFrom" id="txtIntervalFrom" value="{$intervalFrom}"/>
	<input type="hidden" name="txtIntervalTo" id="txtIntervalTo" value="{$intervalTo}"/>
	<input type="hidden" name="txtIntervalNow" id="txtIntervalNow" value="{$intervalNow|default:''}"/>
	<input type="hidden" name="ddlInterval" id="ddlInterval" value="{$intervalType}"/>
	<input type="hidden" name="hidCampaignStartDate" id="hidCampaignStartDate" value="{$campaignStartDate|default:'2010-01-01'}"/>
	{if $withInterval|default:false}<input type="hidden" id="hidWithInterval" value="{$intervalType}"/>{/if}
</div>
<script type="text/javascript">
	{literal}
		$(document).ready(function () {
			initializeDaterange();
		});
	{/literal}
</script>

{if empty($rows)}
	<div class="mb-4 text-left">No records to display</div>
{else}
{foreach $rows as $row}
	<div class="mb-4 text-left">
		<p class="mb-2">{$row.Name}<span class="float-right text-muted">{$row.Value} Visitors ({$row.Percent|number_format:2}%)</span></p>
		<div class="progress h-6">
			<div class="progress-bar {cycle values="bg-primary,bg-secondary,bg-warning,bg-success,bg-info"}" role="progressbar" style="width: {$row.PercentInt}%" aria-valuenow="{$row.PercentInt}" aria-valuemin="0" aria-valuemax="100"></div>
		</div>
	</div>
{/foreach}
{/if}
<table id="tblDash_{$tableID|default:''}_{$metric|default:''}_{$order|default:''}" style="display:none" class="table table-striped table-bordered table-hover border-t0 text-nowrap text-left">
	<thead>
		<tr>
			<th>ID</th>
			<th>Campaign Name</th>
			<th>Source</th>
			<th>Views</th>
			<th>Cost</th>
			<th>Clicks</th>
			<th>Conversion</th>
			<th>Revenue</th>
			<th>Profit</th>
			<th>ROI</th>
		</tr>
	</thead>
	<tbody>
		{foreach $rows as $row}
			<tr>
				<td>{$row.ID}</td>
				<td>{$row.Name nofilter}</td>
				<td>{$row.Source}</td>
				<td>{$row.Views nofilter}</td>
				<td>{$row.Cost nofilter}</td>
				<td>{$row.Clicks nofilter}</td>
				<td>{$row.Conversion nofilter}</td>
				<td>{$row.Revenue nofilter}</td>
				<td>{$row.Profit nofilter}</td>
				<td>{$row.ROI nofilter}</td>
			</tr>
		{/foreach}
	</tbody>
</table>
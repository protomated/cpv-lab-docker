<table id="tblDash_{$tableID|default:''}_{$metric|default:''}_{$order|default:''}" style="display:none" class="table table-striped table-bordered table-hover border-t0 text-nowrap text-left">
	<thead>
		<tr>
			<th>{$columnHeader|default:''}</th>
			<th style="width:120px">{$metricHeader|default:''}</th>
		</tr>
	</thead>
	<tbody>
		{foreach $rows as $row}
			<tr>
				<td>{$row.Name nofilter}</td>
				<td>{$row.Value nofilter}</td>
			</tr>
		{/foreach}
	</tbody>
</table>
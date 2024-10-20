<table class="{$theme_table_classes|default:'table table-striped table-bordered table-hover border-t0'} text-nowrap" style="width:100%">
	<thead>
		<tr>
			<th>Profile Name</th>
			<th class="text-center">Active</th>
			<th class="text-center">Redirect Type</th>
			<th class="text-center">Date Added</th>
			<th class="text-center">Actions</th>
		</tr>
	</thead>
	<tbody>
		{foreach $profiles as $profile}
			<tr>
				<td class="left">{$profile.RedirectProfileName}</td>
				<td class="text-center">
					<label>
						<input type="checkbox" class="flat-purple" {if $profile.Active == 1}checked="checked"{/if} disabled="disabled" />
					</label>
				</td>
				<td class="text-center">{$profile.RedirectTypeName|default:''}</td>
				<td class="text-center">{$profile.CreateDate|date_format:$globalDateFormat}</td>
				<td class="text-right">
					<a href="#redprof" onclick="ajaxLoadRedirectProfile({$profile.RedirectProfileID},0)" class="btn btn-primary btn-sm mr-2"><i class="fa fa-edit"></i>&nbsp;Edit</a>
					{include file='partButtonDelete.tpl' itemID=$profile.RedirectProfileID extraDeleteClass='mr-2'}
					<a href="#redprof" onclick="ajaxLoadRedirectProfile(0,{$profile.RedirectProfileID})" class="btn btn-default btn-sm"><i class="fa fa-cubes"></i>&nbsp;Clone</a>
				</td>
			</tr>
		{/foreach}
	</tbody>
</table>
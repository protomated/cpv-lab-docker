<div class="row">
    <div class="col-lg-7 mb-30">
        <div class="card mb-0">
            <div class="card-header">
                <h4>Logins List</h4>
            </div>
            <div class="card-body logins-filter">

                {include file='partControlIntervalRange.tpl'}

                <div class="form-group">
                    <label>Login Type</label>
                    <div class="input-group">
                        <select id="selLoginType" onchange="changeCampaign();" class="form-control">
                            <option value="">All logins</option>
                            <option {$selectLoginTypeFailed} value="0">Failed logins</option>
                        </select>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="col-lg-5 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Clear Logins List</h4>
            </div>
            <div class="card-body">
                <button id="btnClearFailed_x" name="btnClearFailed_x" class="d-none">Clear</button>
                <button type="button" onclick="clickClearLogins()" class="btn btn-danger"><i class="fe fe-x"></i> Clear Logins List</button>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-body search-with-btn-export">
        <button onclick="window.location.href = '{$exportLink}'; return false" class="btn btn-default btn-sm btn-export" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i></button>

        <table id="tblFailedLogins" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
					{assign var=sortColumnID value=-1}
                    {foreach $columnsArray as $columnDetails}
                        <th class="text-nowrap {$columnDetails[2]}">{$columnDetails[1]}</th>
						{if $sortField == $columnDetails[0]}{assign 'sortColumnID' $columnDetails@index}{/if}
                    {/foreach}
                </tr>
            </thead>
            <tbody>
                {foreach $reportLines as $row}
                    <tr>
                        <td>{$row.LoginDate|date_format:$globalDateFormat}</td>
                        <td>{$row.Username}</td>
                        <td>{$row.Password}</td>
                        <td>{$row.IP}</td>
                        {* <td>{$row.UserAgent|escape:'html'}</td>*}
                        <td>{($row.LoginType == 0) ? 'failed' : 'success'}</td> 
                        <td><img src="images/flags/{$row.CountryFlag}.gif" alt="{$row.CountryName}"/>&nbsp;{$row.CountryName}</td>
                        <td>{$row.RegionName}</td>
                        <td>{$row.CityName}</td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    </div>
</div>

<input type="hidden" id="hidSortField" value="{$sortField}"/>
<input type="hidden" id="hidDirField" value="{$dirField}"/>
{if $sortColumnID!=-1}
<input type="hidden" id="hidSortColumnID" value="{$sortColumnID}" />
{/if}

<script type="text/javascript">
	{literal}
		function changeCampaign()
		{
			window.location.href = getFullUrl();
		}

		function getFullUrl()
		{
			return 'logins-list.php?logintype=' + $("#selLoginType").val() + '&int=' + $("#ddlInterval").val() +
					($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
							"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '') +
					"&sort=" + $("#hidSortField").val() + "&dir=" + $("#hidDirField").val();
		}

		function clickClearLogins()
		{
                    confirm("Are you sure you want to clear logins list?", function(){
                        $('#btnClearFailed_x').click();
                    });
		}
	{/literal}
</script>

<style>
.logins-filter {
    display: flex;
    justify-content: space-between;
}
.logins-filter > .form-group {
    width: 48%;

}
@media (max-width: 1029px) {
    .logins-filter {
        display: block;
    }
    .logins-filter > .form-group {
        width: 100%;

    }

    .logins-filter .form-group:not(:first-child) {
        padding-top: 2em;
    }
}
</style>
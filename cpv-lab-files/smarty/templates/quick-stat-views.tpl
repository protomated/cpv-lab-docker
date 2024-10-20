{include file="partMessage.tpl"}

<div class="row" id="wdgQuickStatViewsModify">
    <div class="col-xl-9 mb-30">
        <div class="card h-100 mb-0">
			<div class="card-header">
				<h4>{if $editMode}Edit{else}Add{/if} Stat View</h4>
			</div>
			<div class="card-body">
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label>View Name</label>
							<input type="text" name="txtViewName" id="txtViewName" class="form-control" value="{$currentView.CustomViewName|default:''}"/>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Notes</label>
							<input type="text" name="txtViewDescription" class="form-control" value="{$currentView.CustomViewDescription|default:''}"/>
						</div>
					</div>
				</div>

				<div class="row mt-3">
					<div class="col-lg-3 col-6 mb-4">
						<h6 class="pb-1"><i class="fa fa-briefcase"></i> <u>Campaign Data</u></h6>
						{include file='partColumnCategory.tpl' categoryID=1}

						<div class="mt-5">
							<h6 class="pb-1"><i class="fa fa-calendar"></i> <u>Time &amp; Day</u></h6>
							{include file='partColumnCategory.tpl' categoryID=6}
						</div>
					</div>
					<div class="col-lg-3 col-6 mb-4">
						<h6 class="pb-1"><i class="fa fa-check-square-o"></i> <u>Clicks & Conversions</u></h6>
						{include file='partColumnCategory.tpl' categoryID=2}
					</div>
					<div class="col-lg-3 col-6 mb-4">
						<h6 class="pb-1"><i class="fa fa-cog"></i> <u>Custom Tokens</u></h6>
						{include file='partColumnCategory.tpl' categoryID=3}
					</div>
					<div class="col-lg-3 col-6 mb-4">
						<h6 class="pb-1"><i class="fe fe-dollar-sign"></i> <u>Revenue Data</u></h6>
						{include file='partColumnCategory.tpl' categoryID=4}

						<div class="mt-5">
							<h6 class="pb-1"><i class="fa fa-external-link"></i> <u>Referrers</u></h6>
							{include file='partColumnCategory.tpl' categoryID=5}
						</div>
					</div>
				</div>
						
						
				<h5 class="mb-3"><i class="fe fe-smartphone"></i> <u>Mobile Data</u></h5>
				<div class="row mt-3">

					<div class="col-lg-3 col-sm-6 col-xs-12 mb-4">
						<h6>Mobile Browser</h6>
						{include file='partColumnCategory.tpl' categoryID=7}
					</div>
					<div class="col-lg-3 col-sm-6 col-xs-12 mb-4">
						<h6>Content Support</h6>
						{include file='partColumnCategory.tpl' categoryID=8}
					</div>
					<div class="col-lg-3 col-sm-6 col-xs-12 mb-4">
						<h6>Device Info</h6>
						{include file='partColumnCategory.tpl' categoryID=9}
					</div>
					<div class="col-lg-3 col-sm-6 col-xs-12 mb-4">
						<h6>Device Usage</h6>
						{include file='partColumnCategory.tpl' categoryID=10}
					</div>
				</div>
				
			</div>
		</div>
	</div>

    <div class="col-xl-3 mb-30">
        <div class="card h-100 mb-0">
			<div class="card-header">
				<h4>Column Order for this View</h4>
			</div>
			<div class="card-body">
                <h5 class="mb-5">Drag&amp;drop columns below to set the desired order</h5>
				<ul id="tblPreview" class="pl-0">
				{foreach $currentColumns as $currentColumn}
					<li id="thColumn{$currentColumn.ColumnID}" class="list-group-item">{$currentColumn.ColumnCaption} <i class="fe fe-move" style="float:right"></i>
						{if $currentColumn.ColumnCaption != $currentColumn.ColumnCaption2}/{$currentColumn.ColumnCaption2}{/if}
					</li>
				{/foreach}
				</ul>
				<input type="hidden" name="hidColumnsOrder" id="hidColumnsOrder" value="" />
			</div>
		</div>
	</div>
</div>
				
<div class="card">
    <div class="card-body">
        <button name="btnSave_x" onclick="return validateName('txtViewName', 'Stat View') && saveColumnsOrder()" class="btn btn-primary mr-3">Save</button>
        {if $editMode}
            <button name="btnCancel" onclick="window.location.href = 'quick-stat-views.php'; return false" class="btn btn-secondary">Cancel</button>
        {/if}
    </div>
</div>

<div class="card" id="wdgQuickStatViewsCurrent">
    <div class="card-header">
        <h4>Current Stat Views<img src="images/spinner.gif" alt="Working..." id="spin1" class="ml-4" style="display:none"/></h4>
    </div>
    <div class="card-body">
        <table id="tblQuickStatViews" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
                    <th class="text-center">ID</th>
                    <th>Name</th>
                    <th class="text-center">Default</th>
                    <th>Notes</th>
                    <th class="text-center">Data</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                {foreach $customViews as $customView}
                    <tr>
                        <td class="text-center">{$customView.CustomViewID}</td>
                        <td>{$customView.CustomViewName}</td>
                        <td class="text-center">
                            <label>
                                <input type="radio" class="flat-purple minimal-defaultoption" name="radDefaultProfile" id="radDefaultProfile{$customView.CustomViewID}"
                                    value="{$customView.CustomViewID}" {if $customView.DefaultProfile == 1}checked="checked"{/if}  />
                            </label>
                        </td>
                        <td>{$customView.CustomViewDescription}</td>
                        <td class="text-center">{$customView.ColumnsNumber}</td>
                        <td class="text-right">
                            <a href="quick-stat-views.php?id={$customView.CustomViewID}" class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i>&nbsp;Edit</a>
							{include file='partButtonDelete.tpl' itemID=$customView.CustomViewID extraDeleteClass='mr-2' isDefaultItem=$customView.DefaultProfile==1}
                            <a href="quick-stat-views.php?clone={$customView.CustomViewID}" class="btn btn-default btn-sm"><i class="fe fe-copy"></i>&nbsp;Clone</a>
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    </div>
</div>

<input type="hidden" name="hidEditID" value="{$editID}"/>

<script type="text/javascript">
	{literal}
		function checkColumn(control)
		{
			var id = control.value;
			if (control.checked)
			{
				var newHtml = '<li id="thColumn' + id + '" class="list-group-item">' + $('#lblColumn' + id).html() + ' <i class="fe fe-move" style="float:right"</li>';
				$("#tblPreview").append(newHtml);
			}
			else
			{
				$('#thColumn' + id).remove();
			}
		}
		function saveColumnsOrder()
		{
			if ($("#tblPreview>li").length == 0)
			{
				alert('Please select at least a column!');
				return false;
			}
			var columnsOrder = '';
			$("#tblPreview>li").each(function () {
				columnsOrder += $(this).attr('id').replace("thColumn", "") + ',';
			});
			$("#hidColumnsOrder").val(columnsOrder);
			return true;
		}

		$(document).ready(function () {
			$('.minimal-defaultoption').on('ifChecked', function(event){
				ajaxSetDefaultProfile(event.target.value, 'q', event.target);
			});
			$('.minimal-column').on('ifChanged', function(event){
				checkColumn(event.target);
			});
			$("#tblPreview").sortable();
		});
	{/literal}
</script>
<link rel="stylesheet" type="text/css" href="lib/jquery-ui-theme/smoothness/jquery-ui.min.css?v=700" />
<script type="text/javascript" src="lib/jquery-ui.min.js?v=700"></script>
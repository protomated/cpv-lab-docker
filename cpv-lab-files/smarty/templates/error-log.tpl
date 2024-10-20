{include file="partMessage.tpl"}

<div class="row">
    <div class="col-xl-7 mb-30">
        <div class="card mb-0">
            <div class="card-header">
                <h4>Error Log</h4>
            </div>

            <div class="card-body">

                <div class="mb-4">
                    {include file='partControlIntervalRange.tpl'}
                </div>

                <div class="form-group mb-0">
                    <label>Error Type</label>
                    <div id="divErrorTypeRadios">
                        <span class="font-weight-normal-for-label">
                            {html_radios_margin options=$errorTypes selected=$errorType name="radErrorType" label_ids=true class='flat-purple minimal-campaignchange'}
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-5 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Clean Error Log</h4>
            </div>

            <div class="card-body">

                <div class="form-group mb-0">
                    <label>Remove errors before</label>
                    <div class="row">
                        <div class="col-auto">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" name="txtRemoveDate" id="txtRemoveDate" value="" class="form-control pull-right date" autocomplete="off" data-toggle="tooltip" data-placement="top" title="mm/dd/yyyy"/>
                                <!--<span class="input-group-addon cursor-pointer" onclick="$('#txtRemoveDate').focus();"><i class="icon-append fa fa-calendar"></i></span>-->
                            </div>
                        </div>
                        <script>addDatePicker('txtRemoveDate');</script>
                        <button id="btnClearErrors_x" name="btnClearErrors_x" class="d-none">Remove Errors</button>
                        <button type="button" onclick="clickClearErrors()" class="btn btn-danger">Remove</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header">
        <h4>Current Errors</h4>
    </div>
    <div class="card-body search-with-btn-export">
        <button onclick="window.location.href = '{$exportLink}'; return false" class="btn btn-default btn-sm btn-export" data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i></button>

        <table id="tblErrorLog" class="{$theme_table_classes} dtSettings" style="width:100%">
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
                        <td>{$row.ErrorDate|date_format:$globalDateFormat}</td>
                        <td>{$row.ErrorType}</td>
                        <td>{$row.Page}</td>
                        <td>{$row.Error}</td>
                        <td>{$row.Query}</td>
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
			return 'error-log.php?int=' + $("#ddlInterval").val() +
					($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
							"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '') +
					($('[name="radErrorType"]:checked').val() != 0 ? "&type=" + $('[name="radErrorType"]:checked').val() : '');
					//"&sort=" + $("#hidSortField").val() + "&dir=" + $("#hidDirField").val();
		}

		function clickClearErrors()
		{
			if ($('#txtRemoveDate').val() == '')
				return false;
			confirm("Are you sure you want to remove errors that appeared before " + $('#txtRemoveDate').val() + "?", function(){
									$('#btnClearErrors_x').click();
								});
		}
		$(document).ready(function () {
			$('.minimal-campaignchange').on('ifChecked', function(){
				changeCampaign();
			});
		});
	{/literal}
</script>

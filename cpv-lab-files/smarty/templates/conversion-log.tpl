{include file="partMessage.tpl"}

<div class="row">
    <div class="col-xl-7 mb-30">
        <div class="card mb-0">
            <div class="card-header">
                <h4>Conversion Log</h4>
            </div>
            <div class="card-body">
                <div class="row align-items-end mb-3">
                    <div class="col-sm-9 pr-xl-1">
                        <div class="form-group mb-sm-0">
                            <label>Select Campaigns</label>
                            <div>
                                <select name="ddlCampaigns[]" id="ddlCampaigns"
                                        class="slect-campaign form-control" multiple="multiple">
                                    {html_options options=$campaignsArray selected=$selectedCampaignIDArray}
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        {if count($selectedCampaignIDArray) < 2} {include file='partControlEditCampaign.tpl'}  {/if}
                    </div>
                </div>

                {include file='partControlIntervalRange.tpl'}

            </div>
        </div>
    </div>

    <div class="col-xl-5 mb-30">
        {if $allowConversionLogDelete}
            <div class="card h-100 mb-0">
                <div class="card-header">
                    <h4>Clean Conversion Log</h4>
                </div>
                <div class="card-body">
                    <div class="form-group mb-0">
                        <label>Remove conversion log entries before</label>
                        <div class="row">
                            <div class="col-auto">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" name="txtRemoveDate" id="txtRemoveDate" value=""
                                           class="form-control pull-right date" autocomplete="off" data-toggle="tooltip"
                                           data-placement="top" title="mm/dd/yyyy"/>
                                    <!--<span class="input-group-addon cursor-pointer" onclick="$('#txtRemoveDate').focus();"><i class="icon-append fa fa-calendar"></i></span>-->
                                </div>
                            </div>
                            <script>addDatePicker('txtRemoveDate');</script>
                            <button id="btnClearConversions_x" name="btnClearConversions_x" class="d-none">Remove
                                Entries
                            </button>
                            <button type="button" onclick="clickClearConversions()" class="btn btn-danger">Remove
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        {/if}
    </div>
</div>

<div class="card">
    <div class="card-body search-with-btn-export">
        <button onclick="window.location.href = '{$exportLink}'; return false" class="btn btn-default btn-sm btn-export"
                data-toggle="tooltip" data-placement="right" title="Export Table as CSV"><i class="fe fe-share"></i>
        </button>

        <table id="tblConversionLog" class="{$theme_table_classes} dtSettings" style="width:100%">
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
                    <td>{$row.RequestDate|date_format:$globalDateFormat}</td>
                    <td>{$row.RequestTid}</td>
                    <td>{$row.RequestClick}</td>
                    <td>{$row.RequestCampaign}</td>
                    <td>{$row.RequestAmount}</td>
                    <td>{$row.RequestUrl}</td>
                    <td>{$row.SecretKey}</td>
                    <td>{$row.PostVars}</td>
                </tr>
            {/foreach}
            </tbody>
        </table>

    </div>
</div>

<input type="hidden" id="hidSortField" value="{$sortField}"/>
<input type="hidden" id="hidDirField" value="{$dirField}"/>
<input type="hidden" id="hidCampaignsCount" value="{count($campaignsArray)}"/>
<input type="hidden" id="hidInitialCampaignsSelected" value=""/>
{if $sortColumnID!=-1}
    <input type="hidden" id="hidSortColumnID" value="{$sortColumnID}"/>
{/if}

<style>
    .SumoSelect {
        width: 100%;
    }

    .SumoSelect > .CaptionCont span {
        border: 0;
    }
</style>
<script type="text/javascript">
    {literal}
    function changeCampaign() {
        window.location.href = getFullUrl();
    }

    function getFullUrl() {
        return 'conversion-log.php?camp=' +
            ($('#ddlCampaigns').find("option:selected").length == $("#hidCampaignsCount").val() ? "0" : $('#ddlCampaigns').val()) +
            '&int=' + $("#ddlInterval").val() + ($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
                "&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '');
        //"&sort=" + $("#hidSortField").val() + "&dir=" + $("#hidDirField").val();
    }

    function clickClearConversions() {
        if ($('#txtRemoveDate').val() == '')
            return false;
        confirm("Are you sure you want to remove conversion log entries that appeared before " + $('#txtRemoveDate').val() + "?", function () {
            $('#btnClearConversions_x').click();
        });
    }

    $(document).ready(function () {
        $('#hidInitialCampaignsSelected').val($('#ddlCampaigns').val());
        $('select#ddlCampaigns').on('sumo:closed', function (sumo) {
            if ($('#hidInitialCampaignsSelected').val() != $('#ddlCampaigns').val()) {
                changeCampaign();
            }
        });
    });
    {/literal}
</script>

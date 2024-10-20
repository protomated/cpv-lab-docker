{if $noCampaignsMessage}
    <div class="col-xs-8 col-xs-offset-2 alert alert-danger text-center" role="alert">
        {$noCampaignsMessage nofilter}
    </div>
{/if}
{if $missingExtensions}
    <div class="col-xs-8 col-xs-offset-2 alert alert-danger text-left" role="alert">
        Some required components are not enabled on your server. Please contact your webhost to fix them.
        <ul>
            {$missingExtensions nofilter}
        </ul>
    </div>
{/if}

<div class="row">
    {if $showEarningsBox}
        <div class="col-lg-6 col-xl-3 col-md-6 col-sm-6 col-12">
            <div class="widget-card card text-center bg-primary">
                <h4 class="mb-3">Today</h4>
                <div class="row">
                    <div class="col-6">
                        <h5 class="font-weight-bold">{$viewsToday}</h5>
                        <p class="mb-0">Visitors</p>
                    </div>
                    <div class="col-6">
                        <h5 class="font-weight-bold">{$displayCurrencySign}{$earningsToday}</h5>
                        <p class="mb-0">Earnings</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-xl-3 col-md-6 col-sm-6 col-12">
            <div class="widget-card card text-center bg-pink">
                <h4 class="mb-3">Yesterday</h4>
                <div class="row">
                    <div class="col-6">
                        <h5 class="font-weight-bold">{$viewsYesterday}</h5>
                        <p class="mb-0">Visitors</p>
                    </div>
                    <div class="col-6">
                        <h5 class="font-weight-bold">{$displayCurrencySign}{$earningsYesterday}</h5>
                        <p class="mb-0">Earnings</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-xl-3 col-md-6 col-sm-6 col-12">
            <div class="widget-card card text-center bg-info">
                <h4 class="mb-3">This Week</h4>
                <div class="row">
                    <div class="col-6">
                        <h5 class="font-weight-bold">{$viewsThisWeek}</h5>
                        <p class="mb-0">Visitors</p>
                    </div>
                    <div class="col-6">
                        <h5 class="font-weight-bold">{$displayCurrencySign}{$earningsThisWeek}</h5>
                        <p class="mb-0">Earnings</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-xl-3 col-md-6 col-sm-6 col-12">
            <div class="widget-card card text-center bg-warning">
                <h4 class="mb-3">This Month</h4>
                <div class="row">
                    <div class="col-6">
                        <h5 class="font-weight-bold">{$viewsThisMonth}</h5>
                        <p class="mb-0">Visitors</p>
                    </div>
                    <div class="col-6">
                        <h5 class="font-weight-bold">{$displayCurrencySign}{$earningsThisMonth}</h5>
                        <p class="mb-0">Earnings</p>
                    </div>
                </div>
            </div>
        </div>
    {/if}
</div>

<div class="row">
    <div class="col-xl-8 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-body">
                <div class="row align-items-end">
                    <div class="col-lg-4 col-sm-6">
                        <div class="form-group mb-lg-0">
                            <label>View</label>
                            {include file='partControlCampaignFilterView.tpl'}
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="form-group mb-lg-0">
                            <label>Group</label>
                            {include file='partControlCampaignFilterGroup.tpl'}
                        </div>
                    </div>
                    <div class="col col-lg-4">
                        <div class="form-group mb-0">
                            <label>Visible Columns</label>
                            {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumns selectedColumns=$showhideSelectedColumns}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-4 mb-30">
        <div class="card mb-0">
            <div class="card-body">
                <div class="d-flex flex-wrap">
                    <div class="form-group mb-0">
                        <label class="mb-0">Perform Bulk Actions for&nbsp;<span id="spnSelectedCampaigns">0</span>&nbsp;Selected
                            Campaigns:</label>

                        <select name="ddlBulkAction" id="ddlBulkAction" class="form-control d-inline w-auto mr-2 mt-2">
                            <option value="0">Select Action</option>
                            <option value="1">Delete Campaigns</option>
                            <option value="2">Reset Clicks</option>
                            <option value="3">Set Campaigns Active</option>
                            <option value="4">Set Campaigns Inactive</option>
                        </select>
                        <input type="submit" id="btnBulkAction" name="btnBulkAction" class="d-none" value="GO"/>
                        <button type="button" onclick="bulkAction()" class="btn btn-primary align-bottom mt-2">GO
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{foreach $campaignTypes as $campaignType}
    <div class="card" data-widget-sortable="false" data-widget-deletebutton="false"
         id="wdgCampaigns{$campaignType.CampaignTypeID}">
        <a name="{$campaignType.AnchorText}" class="fixanchor"></a>
        <div class="card-header">
            <div class="float-right">
                <a data-collapse="#card-collapse{$campaignType.CampaignTypeID}" class="btn btn-icon d-table-cell">
                    <i class="ion ion-minus"></i>
                </a>
            </div>
            <h4>{$campaignType.CampaignType}s</h4>
        </div>
        <div role="content" class="collapse show" id="card-collapse{$campaignType.CampaignTypeID}">
            <div class="card-body">
                <div class="table-responsive">
                    <table id="tbl0-{$reportTypeID}-{$campaignType.CampaignTypeID}"
                           class="{$theme_table_classes} dtCampaigns" data-leftColumns="2" style="width:100%">
                        {include file='partHeaderRow.tpl' columns=$visibleColumnsArray.{$campaignType.CampaignTypeID}}
                        {include file='partNormalRows.tpl' columns=$visibleColumnsArray.{$campaignType.CampaignTypeID} rows=$reportRowsArray.{$campaignType.CampaignTypeID}}
                        {include file='partTotalsRow.tpl' columns=$visibleColumnsArray.{$campaignType.CampaignTypeID} totals=$totalsRowArray.{$campaignType.CampaignTypeID}}
                    </table>
                </div>
            </div>
        </div>
    </div>
{/foreach}
{foreach $otherCampaignTypes as $campaignType}
    <div class="card" data-widget-sortable="false" data-widget-deletebutton="false"
         id="wdgCampaigns{$campaignType.CampaignTypeID}">
        <a name="{$campaignType.AnchorText}" class="fixanchor"></a>
        <div class="card-header">
            <div class="float-right">
                <a data-collapse="#card-collapse{$campaignType.CampaignTypeID}" class="btn btn-icon d-table-cell">
                    <i class="ion ion-minus"></i>
                </a>
            </div>
            <h4>{$campaignType.CampaignType}s</h4>
        </div>
        <div role="content" class="collapse show" id="card-collapse{$campaignType.CampaignTypeID}">
            <div class="card-body">
                <div class="table-responsive">
                    {include file='partUpdCampaignType.tpl' campaignType=$campaignType.CampaignType}
                </div>
            </div>
        </div>
    </div>
{/foreach}
<div style="clear:both">&nbsp;</div>
<input type="hidden" id="hidFilterUrl" value="{$filterUrl}"/>
<input type="hidden" id="hidFullUrl" name="hidFullUrl" value="{$fullUrl}"/>
<input type="hidden" id="hidNewID" name="hidNewID" value="0"/>
<input type="hidden" id="hidResetID" name="hidResetID" value="0"/>
<input type="hidden" id="hidBulkAction" name="hidBulkAction" value="0"/>
<input type="submit" id="btnReset" name="btnReset" style="display:none"/>
<input type="submit" id="btnDelete" name="btnDelete" style="display:none"/>
<input type="hidden" name="hidColumn" id="hidColumn" value=""/>
<input type="submit" name="btnColumn" id="btnColumn" style="display:none"/>
<input type="hidden" name="hidReportType" id="hidReportType" value="{$reportTypeID}"/>
<input type="hidden" id="hidUserRole" value="{$userroleid}"/>

<script type="text/javascript">
    {literal}
    var pageSettingsDTRightColumns = 1;
    var menuRedirectPage = '';
    var menuNewWindow = false;

    $(document).ready(function () {
        cmCampaign(true, true, true);

        $('.chkcol').on('ifChanged', function (event) {
            $('#spnSelectedCampaigns').html($('.chkcol:checked').length);
        });
    });

    function resetCampaign(campaignID) {
        var nameField = $("#tc" + campaignID);
        if (nameField.length > 0) {
            confirm("Are you sure you want to reset the clicks for the '" + nameField.text().trim() + "' campaign?", function () {
                $("#hidResetID").val(campaignID);
                $("#btnReset").click();
            });
        }
    }

    function deleteCampaign(campaignID) {
        var nameField = $("#tc" + campaignID);
        if (nameField.length > 0) {
            confirm("Are you sure you want to delete campaign '" + nameField.html().trim() + "'?\r\nAll click information will be lost!", function () {
                $("#hidDeleteID").val(campaignID);
                $("#btnDelete").click();
            });
        }
    }

    function changeFilter() {
        var groupID = $("#ddlFilterGroup").val();
        var redirectUrl = $("#hidFilterUrl").val() + "&type=" + $("#ddlFilterType").val() + (groupID != -1 ? "&group=" + groupID : "");
        window.location.href = redirectUrl;
    }

    function changeColumn(sender, reportType, defaultColumns) {
        var ddlvalue = typeof defaultColumns !== 'undefined' ? "default" : $(sender).val();
        if (ddlvalue != null && ddlvalue != $('#hidCurrentColumn' + reportType).val()) {
            $("#hidColumn").val(ddlvalue);
            $("#btnColumn").click();
        }
    }

    function changeCampaign() {
        window.location.href = "campaigns.php";
    }

    function bulkAction() {
        var numberSelected = $('.chkcol:checked').length;
        if (numberSelected == 0) {
            alert("Please select at least one campaign!");
            return false;
        }
        var selectedAction = parseInt($('#ddlBulkAction').val());
        if (selectedAction == 0) {
            alert("Please select an action to perform!");
            return false;
        }

        var messageText = '', messageText2 = '';
        switch (selectedAction) {
            case 1:
                messageText = 'delete the';
                break;
            case 2:
                messageText = 'reset clicks for the';
                break;
            case 3:
                messageText = 'set the';
                messageText2 = ' Active';
                break;
            case 4:
                messageText = 'set the';
                messageText2 = ' Inactive';
                break;
        }

        confirm("Are you sure you want to " + messageText + " " + numberSelected + " selected campaigns" + messageText2 + "?", function () {
            var selectedCampaigns = [];
            $('.chkcol:checked').each(function () {
                selectedCampaigns.push($(this).attr("id").replace("chk", ""));
            });
            $('#hidBulkAction').val(selectedCampaigns.join());
            $('#btnBulkAction').click();
        });
    }
    {/literal}
</script>

{if $showInitialTour}
    <script>
        $(document).ready(function () {
            setTimeout(StartInitialTour, 2000);
        });
    </script>
{/if}
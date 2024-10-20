<div class="card">
    <div class="card-header">
        <h4>Filters</h4>
    </div>

    <div class="card-body">
        <div class="max-w-850">
            <div class="row align-items-end select-btn mb-3">
                <div class="col-sm-9">
                    <div class="form-group mb-sm-0">
                        <label>Select Campaigns</label>
                        <div>
                            <select name="ddlCampaigns[]" id="ddlCampaigns" class="slect-campaign form-control"
                                    multiple="multiple">
                                {html_options options=$campaignsArray selected=$selectedCampaignIDArray}
                            </select>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3 pl-sm-0 pr-sm-0">
                    {if count($selectedCampaignIDArray) < 2} {include file='partControlEditCampaign.tpl'} {/if}
                </div>
            </div>

            <div class="row">
                <div class="col-xl-6 mb-3 mb-xl-0">

                    {include file='partControlIntervalRange.tpl'}
                </div>

                <div class="col-xl-6">
                    <div class="form-group mb-0" id="divViewType">
                        <label>Show records by</label>
                        <div class="pt-1">
                            <label for="radVisitDate" class="mr-3">
                                <input type="radio" class="flat-purple" name="radViewType" id="radVisitDate" value="1"
                                       {if $viewType == 1}checked="checked" {else}onchange="changeCampaign()"{/if}/>
                                Visit Date
                            </label>

                            <label for="radConversionDate">
                                <input type="radio" class="flat-purple" name="radViewType" id="radConversionDate"
                                       value="2" {if $viewType == 2}checked="checked"
                                       {else}onchange="changeCampaign()"{/if}/>
                                Conversion Date
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-body">
        <div class="chart-container-trends">
            <div id="chartplaceholder{$reportTypeID}" class="chart-placeholder"></div>
        </div>
    </div>
</div>

<div class="card mb-5" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false"
     id="wdgConversionsList">
    <div class="card-header">
        <h4>Converting Visitors<img src="images/spinner.gif" alt="Working..." id="spinCL" class="ml-4"
                                    style="display:none"/></h4>
    </div>
    <div class="card-body">
        <div id="divEarnings">
            <div class="d-flex align-items-center justify-content-sm-end mb-3">
                {include file='partButtonFireTsPostback.tpl' extraClass="btn-sm mr-3"}
                {include file='partButtonExport.tpl' exportTitle="Export Report as CSV" exportExtraClass="btn-sm mr-3"}
                <div class="d-inline-block min-w-200">
                    {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumns selectedColumns=$showhideSelectedColumns}
                </div>
            </div>

            <table id="tbl{$selectedCampaignID}-{$reportTypeID}"
                   class="{$theme_table_classes} text-nowrap icheckbox-whitebg dtReportsNoSort" style="width:100%">
                {include file='partHeaderRow.tpl' columns=$visibleColumns}
                {include file='partNormalRows.tpl' columns=$visibleColumns rows=$reportRows}
            </table>
        </div>
    </div>
</div>

<input type="hidden" id="hidSortField" value="{$sortField}"/>
<input type="hidden" id="hidDirField" value="{$dirField}"/>
<input type="hidden" id="hidCampaignsCount" value="{count($campaignsArray)}"/>
<input type="hidden" id="hidInitialCampaignsSelected" value=""/>
<input type="hidden" id="hidFullUrl" name="hidFullUrl" value="{$fullUrl}"/>
<input type="hidden" name="hidColumn" id="hidColumn" value=""/>
<input type="submit" name="btnColumn" id="btnColumn" style="display:none"/>
<input type="hidden" name="hidReportType" id="hidReportType" value="{$reportTypeID}"/>
<input type="hidden" name="hidSelectedCampaignID" id="hidSelectedCampaignID" value="{$selectedCampaignID}"/>
<input type="hidden" name="hidViewTypeField" id="hidViewTypeField" value="{$viewTypeField}"/>
<input type="hidden" name="hidWhereClause" id="hidWhereClause" value="{$whereClause}"/>
<input type="hidden" name="hidUseCaching" id="hidUseCaching" value="{$useCaching}"/>
<input type="hidden" name="hidIntervalFromTimestamp" id="hidIntervalFromTimestamp" value="{$intervalFromTimestamp}"/>
<input type="hidden" name="hidIntervalToTimestamp" id="hidIntervalToTimestamp" value="{$intervalToTimestamp}"/>
<input type="hidden" id="hidUserRole" value="{$userroleid}"/>

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
        return 'conversions-list.php?camp=' +
            ($('#ddlCampaigns').find("option:selected").length == $("#hidCampaignsCount").val() ? "0" : $('#ddlCampaigns').val()) +
            "&int=" + $("#ddlInterval").val() +
            ($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
                "&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '') +
            "&sort=" + $("#hidSortField").val() + "&dir=" + $("#hidDirField").val() +
            "&type=" + $("#divViewType input[type='radio']:checked").val();
    }

    function changeColumn(sender, reportType, defaultColumns) {
        var ddlvalue = typeof defaultColumns !== 'undefined' ? "default" : $(sender).val();
        if (ddlvalue != null && ddlvalue != '' && ddlvalue != $('#hidCurrentColumn' + reportType).val()) {
            $("#hidColumn").val(ddlvalue);
            $("#btnColumn").click();
        }
    }

    function bulkAction(selectedAction) {
        objectType = "CL";
        var numberSelected = $('input[type=checkbox][id^="cc' + objectType + '"]:checked').length;
        if (numberSelected == 0) {
            alert("Please select at least one conversion!");
            return false;
        }

        var messageText = '';
        switch (selectedAction) {
            case 1:
                messageText = 'pass ' + numberSelected + ' conversion' + (numberSelected > 1 ? 's' : '') + ' to the Traffic Source';
                break;
        }

        confirm("Are you sure you want to " + messageText + "?", function () {
            var selectedObjects = [];
            if (selectedAction == 1 || selectedAction == 2) {
                $('input[type=checkbox][id^="cc' + objectType + '"]:checked').each(function () {
                    var id = $(this).attr("id").replace("cc" + objectType, "");
                    if (selectedObjects.indexOf(id) == -1)
                        selectedObjects.push(id);
                });
            }
            ajaxBulkActionConversionsList(selectedAction, selectedObjects, objectType);
        });
    }

    var menuRedirectPage = '';
    var menuNewWindow = false;

    $(document).ready(function () {
        ajaxLoadChartDay();

        cmKeyword(true);
        cmLandingPage(true);
        cmOffer(true);
        cmCampaign(true, true, true);
        cmDate(true);
        cmIpAddress(true);
        cmGeoCountry(true);
        cmGeoRegion(true);
        cmGeoCity(true);
        $('#hidInitialCampaignsSelected').val($('#ddlCampaigns').val());
        $('select#ddlCampaigns').on('sumo:closed', function (sumo) {
            if ($('#hidInitialCampaignsSelected').val() != $('#ddlCampaigns').val()) {
                changeCampaign();
            }
        });
    });
    {/literal}
</script>

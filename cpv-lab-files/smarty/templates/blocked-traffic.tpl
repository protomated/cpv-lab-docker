<div class="card">
    <div class="card-header">
        <h4>Blocked Traffic Stats</h4>
    </div>

    <div class="card-body">
        <div class="max-w-850">
            <div class="row align-items-end mb-4">
                <div class="col-sm-9">
                    <div class="form-group mb-3 mb-sm-0">
                        <label>Select Campaign</label>

                        {include file='partControlSelectCampaign.tpl'}
                    </div>
                </div>

                <div class="col-sm-3 pl-sm-0">
                    {include file='partControlEditCampaign.tpl'}
                </div>
            </div>

            {include file='partControlIntervalRange.tpl'}
        </div>
    </div>
</div>

<div class="card">
    <div class="card-body">
        <div class="chart-container-trends mb-0">
            <div id="chartplaceholder{$reportTypeID}" class="chart-placeholder"></div>
        </div>
    </div>
</div>

<div class="card" data-widget-editbutton="false" data-widget-deletebutton="false" data-widget-sortable="false"
     id="wdgBlockedTrafficTbl">
    <div class="card-header">
        <h4>Blocked Traffic</h4>
    </div>
    <div class="card-body search-with-btn-export">
        {include file='partButtonExport.tpl' exportExtraClass="btn-sm btn-export"}

        <table id="tblBlockedStats" class="{$theme_table_classes} text-nowrap dtReportsSort" style="width:100%">
            {include file='partHeaderRow.tpl' columns=$visibleColumns writeSimpleHeader=true}
            {include file='partNormalRows.tpl' columns=$visibleColumns rows=$reportRows}
        </table>
    </div>

</div>

<input type="hidden" id="hidSortField" value="{$sortField}"/>
<input type="hidden" id="hidDirField" value="{$dirField}"/>
<input type="hidden" name="hidSelectedCampaignID" id="hidSelectedCampaignID" value="{$selectedCampaignID}"/>
<input type="hidden" name="hidReportType" id="hidReportType" value="{$reportTypeID}"/>
<input type="hidden" name="hidWhereClause" id="hidWhereClause" value="{$whereClause}"/>
<input type="hidden" name="hidIntervalFromTimestamp" id="hidIntervalFromTimestamp" value="{$intervalFromTimestamp}"/>
<input type="hidden" name="hidIntervalToTimestamp" id="hidIntervalToTimestamp" value="{$intervalToTimestamp}"/>
<input type="hidden" id="hidUserRole" value="{$userroleid}"/>

<script type="text/javascript">
    {literal}
    function changeCampaign() {
        window.location.href = getFullUrl();
    }

    function getFullUrl() {
        return 'blocked-traffic.php?camp=' + $("#ddlCampaigns").val() +
            "&int=" + $("#ddlInterval").val() +
            ($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
                "&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '');
        //+ "&sort=" + $("#hidSortField").val() + "&dir=" + $("#hidDirField").val();
    }

    var menuRedirectPage = '';
    var menuNewWindow = false;

    $(document).ready(function () {
        ajaxLoadChartDay();
        cmCampaign(true, true, true);
        cmKeyword(true);
        cmIpAddress(true);
    });
    {/literal}
</script>

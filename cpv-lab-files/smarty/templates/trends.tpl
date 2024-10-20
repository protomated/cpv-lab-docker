{if $reportTypeID==18 && $showupdstobj.trendsheatmap|default:0}
{include file='partUpdReport.tpl' name='Trends Heatmap'}
{/if}
<div class="row">
    <div class="col-xl-6 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Select</h4>
            </div>

            <div class="card-body">
                <div class="row align-items-end mb-3">
                    <div class="col-md-9">
                        <div class="form-group mb-sm-0">
                            <label>Select Campaign</label>
                            {include file='partControlSelectCampaign.tpl'}
                        </div>
                    </div>
                    <div class="col-md-3 pl-lg-0">
                        {include file='partControlEditCampaign.tpl'}
                    </div>
                </div>

                <div class="mt-3">
                    <div class="d-sm-inline-block mr-3 mb-3">
                        {include file='partControlIntervalRange.tpl'}
                    </div>

                    <div class="d-sm-inline-block">
                        <div class="form-group">
                            <label>View Type</label>
                            <select name="ddlViewType" id="ddlViewType" onchange="changeCampaign(true)" class="form-control">
                                {html_options options=$viewTypes selected=$reportTypeID}
                            </select>
                        </div>
                    </div>
                </div>

                {if $reportTypeID != 18}
                  <div class="form-group mb-0">
                      <label>Chart View</label>
                      <div class="form-inline">
                          <select id="ddlChartColumns{$reportTypeID}" name="ddlChartColumns{$reportTypeID}" onchange="ajaxLoadChartTrends(this)" class="form-control">
                              {html_options options=$chartColumnsArray selected=$selectedColumn}
                          </select>
                          <span class="ml-2 mr-2">and</span>
                          <select id="ddlChartColumnsS{$reportTypeID}" name="ddlChartColumnsS{$reportTypeID}" onchange="ajaxLoadChartTrends(this)" class="form-control">
                              {html_options options=$chartColumnsSArray selected=$selectedColumnS}
                          </select>
                      </div>
                  </div>
                {/if}
            </div>
        </div>
    </div>

    <div class="col-xl-6 mb-30">
        <div class="card h-100 mb-0">
            <div class="card-header">
                <h4>Filters</h4>
            </div>

            <div class="card-body">

                {if $reportTypeID != 8 && $reportTypeID != 18}
                    <div class="form-group">
                        <label class="d-block">Filter by Day</label>

                        <label for="chkDayMonday" class="mr-3 mb-3">
                            <input type="checkbox" class="flat-purple" name="chkDayMonday" id="chkDayMonday" {if $dayMonday}checked="checked"{/if}/>
                            Monday
                        </label>

                        <label for="chkDayTuesday" class="mr-3 mb-3">
                            <input type="checkbox" class="flat-purple" name="chkDayTuesday" id="chkDayTuesday" {if $dayTuesday}checked="checked"{/if}/>
                            Tuesday
                        </label>

                        <label for="chkDayWednesday" class="mr-3 mb-3">
                            <input type="checkbox" class="flat-purple" name="chkDayWednesday" id="chkDayWednesday" {if $dayWednesday}checked="checked"{/if}/>
                            Wednesday
                        </label>

                        <label for="chkDayThursday" class="mr-3 mb-3">
                            <input type="checkbox" class="flat-purple" name="chkDayThursday" id="chkDayThursday" {if $dayThursday}checked="checked"{/if}/>
                            Thursday
                        </label>

                        <label for="chkDayFriday" class="mr-3 mb-3">
                            <input type="checkbox" class="flat-purple" name="chkDayFriday" id="chkDayFriday" {if $dayFriday}checked="checked"{/if}/>
                            Friday
                        </label>

                        <label for="chkDaySaturday" class="mr-3 mb-3">
                            <input type="checkbox" class="flat-purple" name="chkDaySaturday" id="chkDaySaturday" {if $daySaturday}checked="checked"{/if}/>
                            Saturday
                        </label>

                        <label for="chkDaySunday" class="mr-3 mb-3">
                            <input type="checkbox" class="flat-purple" name="chkDaySunday" id="chkDaySunday" {if $daySunday}checked="checked"{/if}/>
                            Sunday
                        </label>
                    </div>
                {/if}

                <div class="form-group trends-filters mb-0">
                    <label>Filters</label>
                    <div class="d-flex flex-wrap align-items-baseline w-xs-100">
                        {include file='partFiltersSection.tpl' controlWidth=180}
                    </div>
                </div>

                <a href="javascript:;" onclick="resetFilters()" class="btn btn-secondary" title="Remove All Filters">Remove All Filters</a>

            </div>
        </div>
    </div>
</div>

{if $reportTypeID != 18}
    <div class="card">
        <div class="card-body">
            <div class="chart-container-trends mb-0">
                <div id="chartplaceholder{$reportTypeID}" class="chart-placeholder"></div>
            </div>
        </div>
    </div>
{/if}

{if $reportTypeID == 18}

    <div class="card">
        <div class="card-header">
            <h4>Trends Heatmap</h4>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-lg-2">
                    <div class="form-group">
                        <label>Data Type</label>
                        <select name="ddlDataType" id="ddlDataType" onchange="changeCampaign(true)" class="form-control">
                            {html_options options=$availableDataTypesArray selected=$dataType}
                        </select>
                    </div>
                </div>

                <div class="col-lg-8 text-center text-lg-right mb-3 mb-lg-0">
                    <div class="d-inline-block">
                        <p class="text-center mb-2">Color Scale</p>
                        <span><b>Cold</b></span>
                        <img src="images/trends-color-scale.png" class="img-fluid color-scale" alt="Color Scale"/>
                        <span><b>Hot</b></span>
                    </div>
                </div>
                <div class="col-lg-2 text-right">
					{include file='partButtonExport.tpl' exportExtraClass='mb-3 ml-3' exportText="Export CSV"}
				</div>
            </div>

            <div class="table-responsive">
                <table id="tblHeatmap" class="table table-bordered table-hover w-100">
                    <thead>
                        <tr>
                            <th>Day/Hour</th>
                            <th>Sun</th>
                            <th>Mon</th>
                            <th>Tue</th>
                            <th>Wed</th>
                            <th>Thu</th>
                            <th>Fri</th>
                            <th>Sat</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        {for $i = 0 to 24}
                                <tr>
                                        <th style="padding: 2px 8px;">{$reportRows[$i][0]}</th>
                                        {for $j=1 to 8}
                                                <td class="{$reportRows[$i][$j]["Color"]}" style="padding: 2px 8px;">{$reportRows[$i][$j]["Value"]}</td>
                                        {/for}
                                </tr>
                        {/for}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
{else}
    <div class="card" id="wdgTrendsStats">
        <div class="card-header">
            <h4>Trend Stats</h4>
        </div>
        <div class="card-body">
            <div class="text-right">
            	{if $reportTypeID == 13}
					{include file='partButtonExport.tpl' exportLink=$exportAllLink exportExtraClass='mb-3' exportText="Export All - CSV"}
            	{/if}
				{include file='partButtonExport.tpl' exportExtraClass='mb-3 ml-3' exportText="Export CSV"}
            </div>

            <div class="table-responsive">
                <table id="tbl{$selectedCampaignID}-{$reportTypeID}" class="{$theme_table_classes} text-nowrap datatableStats" style="width:100%">
                    {include file='partHeaderRow.tpl' columns=$visibleColumns}
                    {include file='partNormalRows.tpl' columns=$visibleColumns rows=$reportRows}
                    {include file='partTotalsRow.tpl' columns=$visibleColumns totals=$totalsRow}
                </table>
            </div>
        </div>
    </div>
{/if}


<input type="hidden" id="hidSelectedCampaignID" value="{$selectedCampaignID}"/>
<input type="hidden" id="hidReportTypeID" value="{$reportTypeID}"/>
<input type="hidden" id="hidWhereClause" value="{$whereClause}"/>
<input type="hidden" id="hidIntervalWhere" value="{$intervalFrom}|{$intervalTo}"/>
<input type="hidden" id="hidExcludeDays" value="{if $reportTypeID == 13}{implode(',', $excludeDays)}{/if}"/>

<script type="text/javascript">
	{literal}
                $(document).ready(function(){
                    /*
                    var iframe = $('#divChart > iframe');
                    iframe.css('height', Math.round(iframe.width() * 0.48)+'px');
                    */
                   /*
                   setTimeout(function(){
                        $('.table').each(function(){
                            var id = 0;
                            ++id;
                            var tbl = $(this);
                            tbl.css('layout-table', 'fixed');
                            //var tbl_w = tbl.width();
                            //var tbl_par_w = tbl.parent().width();
                            if (1) {
                                tbl.wrap('<div id="cpvlab_sc_'+id+'" class="cpvlab_scrollable_cont"></div>');
                                //tbl.parent().before('<div style="overflow-x: auto;"><div id="cpvlab_sic_'+id+'" style="width: '+tbl.width()+'px;">&nbsp;</div></div>');
                            }
                            //$(window).resize(function(){
                            //    $('#cpvlab_sic_'+id).css('width', $('#cpvlab_sc_'+id+' > table').width()+'px');
                            //});
                            //tbl.find('tr > td:first-child, tr > th:first-child').css('position', 'absolute');
                            var col1_w = tbl.find('> tbody > tr > td:eq(0)').width();
                            tbl.children('thead, tbody, tfoot').each(function(){
                                $(this).children('tr').each(function(){
                                    var row_ch = $(this).children('th, td');
                                    var col1 = row_ch.filter(':eq(0)');
                                    var col2 = row_ch.filter(':eq(1)');
                                    var w = col1_w; //col1.innerWidth();
                                    var h = $(this).height();
                                    var pt = col1.css('padding-top');
                                    var pb = col1.css('padding-bottom');
                                    if (col1.css('background-color') == 'transparent') {
                                        col1.css('background-color', '#ffa');
                                    }
                                    col1.css('position', 'absolute');
                                    col1.css('top', 'auto');
                                    col2.css('width', (w+col2.width())+'px');
                                    col2.css('padding-left', w+'px');
                                    col1.css('width', w+'px');
                                    col1.css('padding-top', pt);
                                    col1.css('padding-bottom', pb);
                                    col1.css('height', col2.height()+'px');

                                    col1.css('background-color', col2.css('background-color'));
                                });
                            });
                        });
                   }, 1000);
                   */

                });
		function changeCampaign(withFilters)
		{
			var trendsPageName = "";
			switch ($("#ddlViewType").val())
			{
				case "8": trendsPageName = "trends-dayofweek.php"; break;
				case "13": trendsPageName = "trends-days.php"; break;
				case "18": trendsPageName = "trends-heatmap.php"; break;
				default: trendsPageName = "trends-time.php"; break;
			}
			var redirectUrl = trendsPageName + '?camp=' + $("#ddlCampaigns").val() +
					"&int=" + $("#ddlInterval").val() +
					($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
							"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '');
			if ($("#ddlViewType").val() != 8 && $("#ddlViewType").val() != 18)
			{
				var daysNumber = ($('#chkDayMonday').prop("checked") ? 1 : 0) +
						($('#chkDayTuesday').prop("checked") ? 2 : 0) + ($('#chkDayWednesday').prop("checked") ? 4 : 0) +
						($('#chkDayThursday').prop("checked") ? 8 : 0) + ($('#chkDayFriday').prop("checked") ? 16 : 0) +
						($('#chkDaySaturday').prop("checked") ? 32 : 0) + ($('#chkDaySunday').prop("checked") ? 64 : 0);
				if (daysNumber <= 0 || daysNumber > 127)
					daysNumber = 127;
				redirectUrl += "&days=" + daysNumber;
			}
			if ($("#ddlViewType").val() == 18 && $("#ddlDataType").length > 0)
			{
				redirectUrl += "&data=" + $("#ddlDataType").val();
			}
			if (typeof withFilters !== 'undefined' && withFilters)
			{
				$selectedOptions = $('#ddlFilterTarget').find("option:selected").length;
				if ($selectedOptions != 0 && $selectedOptions != $('#hidFilterTargetTotal').val())
					redirectUrl += '&ft=' + $('#ddlFilterTarget').val();
				$selectedOptions = $('#ddlFilterLP').find("option:selected").length;
				if ($selectedOptions != 0 && $selectedOptions != $('#hidFilterLPTotal').val())
					redirectUrl += '&fl=' + $('#ddlFilterLP').val();
				$selectedOptions = $('#ddlFilterOffer').find("option:selected").length;
				if ($selectedOptions != 0 && $selectedOptions != $('#hidFilterOfferTotal').val())
					redirectUrl += '&fo=' + $('#ddlFilterOffer').val();
			}
			window.location.href = redirectUrl;

		}
	{/literal}
        {if $reportTypeID != 18}
            $(document).ready(function() {
                ajaxLoadChartTrends();
            });
        {/if}
</script>

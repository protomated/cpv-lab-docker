{include file='partUpdReport.tpl'}
<div class="row">
	<div class="col-12 mb-30">

        <div class="card mb-0">
			<div class="card-header">
		        <h4>Drill-down Stats</h4>
		    </div>
		    <div class="card-body">

                <div class="">
                    <div class="row align-items-end mb-3">
                        <div class="col-sm-6">
                            <div class="form-group mb-sm-0">
                                <label>Campaign</label>
                                {include file='partControlSelectCampaign.tpl'}
                            </div>
                        </div>

                        <div class="col-sm-6 mt-4">
                            {include file='partControlIntervalRange.tpl'}
                        </div>
                    </div>
                </div>

		        <div class="mt-4">
                    <div class="form-group mb-sm-0">
                        <label>Drill-down levels</label>
                    </div>
                    <div class="ddr-selectors d-flex flex-wrap align-items-center justify-content-start mb-3" style="float:left">

                        <select id="ddlDrilldownLevel0" class="form-control" style="width:200px; display:none">
                            {html_options options=$groupingColumns}
                        </select>

                        <select name="ddlDrilldownLevel1" id="ddlDrilldownLevel1" class="form-control" style="width:200px" onchange="selectdrilllevel(1)">
                            {html_options options=$groupingColumns selected=$level1ColumnID|default:'2'}
                        </select>
                        <select name="ddlDrilldownLevel2" id="ddlDrilldownLevel2" class="form-control" style="width:200px" onchange="selectdrilllevel(2)">
                            <option value="-2">None</option>
                            {html_options options=$groupingColumns selected=$level2ColumnID|default:'-2'}
                        </select>
                        <select name="ddlDrilldownLevel3" id="ddlDrilldownLevel3" class="form-control" style="width:200px" onchange="selectdrilllevel(3)">
                            <option value="-3">None</option>
                            {html_options options=$groupingColumns selected=$level3ColumnID|default:'-3'}
                        </select>
                        <select name="ddlDrilldownLevel4" id="ddlDrilldownLevel4" class="form-control" style="width:200px" onchange="selectdrilllevel(4)">
                            <option value="-4">None</option>
                            {html_options options=$groupingColumns selected=$level4ColumnID|default:'-4'}
                        </select>
                        <button onclick="return false;" class="btn btn-primary ml-3" data-toggle="tooltip" data-placement="top" title="Refresh" disabled="disabled"><i class="fa fa-refresh"></i> Refresh</button>
                        
                        <input type="hidden" name="hidSortField" id="hidSortField" value="{$sortField}" />
                        <input type="hidden" name="hidDirField" id="hidDirField" value="{$dirField}" />
                        <input type="hidden" name="hidCampaignID" id="hidCampaignID" value="{$selectedCampaignID}"/>
                        <input type="hidden" name="hidCampaignType" id="hidCampaignType" value="{$campaignTypeID}"/>
                        <input type="hidden" name="hidReportType" id="hidReportType" value="{$reportTypeID}"/>
                        <input type="hidden" name="hidWhereClause" id="hidWhereClause" value="{$whereClause}"/>
                        <input type="hidden" name="hidColumn" id="hidColumn" value=""/>
                        <input type="hidden" name="hidFullUrl" id="hidFullUrl" value=""/>
                        <input type="submit" name="btnColumn" id="btnColumn" style="display:none"/>

                    </div>
                    <div style="float:right">
                        {include file='partColumnsMultiselect.tpl' allColumns=$showhideColumns selectedColumns=$showhideSelectedColumns}
                    </div>
                    <div style="clear:both"></div>

                    <div>
                        <table id="report_table" class="report-table table table-striped table-bordered  table-drilldown table-hover border-t0 text-nowrap" style="width:100%">
                        
                        </table>
                    </div>
                    {if $showupdstobj.drilldown|default:0}{include file='partUpdPage.tpl' name='Drill-down Report'}{/if}
                </div>
            </div>
        </div>

    </div>
</div>


<div>
    <script type="text/javascript">
        {literal}
            document.addEventListener("DOMContentLoaded", function() {
                init_report_table();
            });

            function init_report_table() {
                
                if ($.fn.DataTable.isDataTable('#report_table')) {
                    $('#report_table').DataTable().clear().destroy();
                }
                $.fn.dataTable.ext.errMode = 'none';
                $('#report_table').on('error.dt', function (e, settings, techNote, message) {
                    console.log('DataTables Error: ', message);
                });

                $('#report_table').DataTable({
                    columns: {/literal}{$tableDataColumnsJson nofilter}{literal},
                    data: {/literal}{$tableDataJson nofilter}{literal},
                    order: [1, 'asc'],
                    bSort: false,
                    searching: false,
                    info: true,
                    paging: 0,
                    scrollX: true,
                    columnDefs: [{
                        defaultContent: "",
                        targets: "_all",
                    },
                    {
                        target: 2,
                        visible: true
                    }
                    ],
                    createdRow: function(row, data, data_index) {
                        if (data['0'].level != undefined) {
                            $(row).addClass('level').addClass('level-'+data['0'].level).data('level', data['0'].level);

                        }
                    }
                });


                $('#report_table tbody').on('click', "tr", function() {
                    //var row = $(this).parents('tr')[0];
                    //for row data
                    //console.log(table.row(row).data().id);
                    // if ($(this).next().hasClass('level')) {
                    //     $(this).next().toggle();
                    // }
                    //console.log($(this).next().data('level'));
                });
                $('#report_table tbody').on('click', "tr td:first-child", function() {
                    var row = $(this).parents('tr')[0];
                    
                    if ($(row).hasClass('level')) {
                        var current_level = parseInt($(row).data('level'));

                        if ($(row).hasClass('level-has-sub-levels')) {
                            $(row).toggleClass('opened');
                        }

                        if ($(row).hasClass('level-has-sub-levels') && $(row).hasClass('opened')) {
                            //console.log($(row).nextUntil('.levels-term').length);
                            $(row).nextUntil('.levels-term').each(function(ind, el) {
                                //console.log($(this).next().attr("class"));
                                //console.log($(this).data('level'));
                                if ($(this).data('level') == current_level) {
                                    return false; }
                                if (parseInt($(this).data('level')) == (current_level + 1)) {
                                    $(this).addClass('visible');
                                    console.log($(this).attr('class'));
                                } //else { return false; }
                            });
                        } else {
                            $(row).nextUntil('.levels-term').each(function(ind, el) {
                                if (parseInt($(this).data('level')) >= (current_level + 1)) {
                                    $(this).removeClass('visible').removeClass('opened');
                                } else { return false; }
                            });

                        }
                    } else {
                        if ($(row).hasClass('has-sub-levels')) {
                            $(row).toggleClass('opened');
                        }
                        
                        if ($(row).hasClass('has-sub-levels') && $(row).hasClass('opened')) {
                            
                            $(row).nextUntil('.levels-term').each(function(ind, el) {
                                if ($(this).hasClass('level-2')) {
                                    $(this).addClass('visible');
                                }
                            });

                        } else {

                            $(row).nextUntil('.levels-term').removeClass('visible').removeClass('opened');

                        }
                    }
                });

                $('#report_table tbody tr').each(function(index, el) {

                    if ($(this).hasClass('level') == false) {
                        if ($(this).next().hasClass('level')) {
                            $(this).addClass('has-sub-levels');

                        } else {
                            $(this).addClass('has-no-sub-levels');
                        }
                        $(this).addClass('levels-term');
                    }

                    if ($(this).hasClass('level')) {
                        var current_level = parseInt($(this).data('level'));
                        if ($(this).next().hasClass('level-'+(1+current_level))) {
                            $(this).addClass('level-has-sub-levels');
                        } else {
                            $(this).addClass('level-has-no-sub-levels');
                        }
                    }
                });
            }
        {/literal}

        function selectdrilllevel(level)
        {
            //nextlevel = parseInt(level) + 1;
            
            for (i=1; i<=4; i++)
            {
                if (i != level)
                {
                    reloadDrillDropdown(i);
                }
            }
        }

        function reloadDrillDropdown(level)
        {
            //console.log('in for level ' + level);
            var currentControl = $('#ddlDrilldownLevel' + level);
            selectedOption = currentControl.val();
            currentControl.html('');
            if (level > 1)
            {
                currentControl.append(new Option("None", -level))
            }
            
            $('#ddlDrilldownLevel0 option').each(function () {
                if ($(this).attr('value') != $('#ddlDrilldownLevel1').val() && 
                    $(this).attr('value') != $('#ddlDrilldownLevel2').val() &&
                    $(this).attr('value') != $('#ddlDrilldownLevel3').val() &&
                    $(this).attr('value') != $('#ddlDrilldownLevel4').val())
                {
                    currentControl.append(new Option($(this).html(), $(this).attr('value')));
                }
            });
            if (selectedOption)
            {
                currentControl.val(selectedOption);
            }
            
        }
    </script>
</div>

<script type="text/javascript">
	{literal}
		function changeCampaign(withFilters, filterID)
		{
			return false;
		}

        function refreshButton()
		{
			return false;
		}

		function changeColumn(sender, reportType, defaultColumns)
		{
			return false;
		}

		$(document).ready(function () {
            selectdrilllevel(1);

			//cmKeyword(false);
			//cmLandingPage(false);
			//cmOffer(false);
		});
	{/literal}
</script>

<style>
    .ddr-selectors {
        column-gap: 5px;
        row-gap: 5px;
    }
</style>


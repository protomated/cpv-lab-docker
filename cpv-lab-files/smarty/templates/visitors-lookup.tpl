<div class="card" id="wdgVisitorsModify">
    <div class="card-header">
        <h4>Filters</h4>
    </div>
    
    <div class="card-body">
        <div class="row">
            <div class="col-sm-12 col-md-6">

                <div class="row align-items-end select-btn mb-3">
                    <div class="col col-sm-9">
                        <div class="form-group mb-sm-0">
                            <label>Select Campaign(s) <small class="text-muted">(leave unchecked for all campaigns)</small></label>
                            {include file='partControlSelectCampaignMultiple.tpl'}
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col col-sm-9 mb-3">
                    {include file='partControlIntervalRange.tpl'}
                    </div>
                </div>
                
            </div>

            <div class="col-sm-12 col-md-6">
                
                <div class="row align-items-end select-btn mb-3">
                    <div class="col col-sm-9">
                        <div class="form-group mb-sm-0">
                            <label>Filter by Landing Page(s) <small class="text-muted">(leave unchecked for all pages)</small></label>
                            <div>
                                <select name="ddlLps[]" id="ddlLps" class="slect-lpsmulti" multiple="multiple">
                                    {html_options options=$lpsArray selected=$selectedLpsOptions}
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row align-items-end select-btn mb-3">
                    <div class="col col-sm-9">
                        <div class="form-group mb-sm-0">
                            <label>Filter by Offers(s) <small class="text-muted">(leave unchecked for all offers)</small></label>
                            <div>
                                <select name="ddlOffers[]" id="ddlOffers" class="slect-offersmulti" multiple="multiple">
                                    {html_options options=$offersArray selected=$selectedOffersOptions}
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-8">
                        <div class="form-group">
                            <label>Filter by IP</label>
                            <input type="text" name="txtFilterIP" id="txtFilterIP" value="{$selectedIP}" class="form-control" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <button onclick="refreshButton(); return false;" class="btn btn-primary"><i class="fa fa-refresh"></i> Search</button>
    </div>
</div>

{if $showDataTable}
<div class="card" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" id="wdgVisitorsLookup">
    <div class="card-header">
        <h4>Visitors List</h4>
    </div>
    <div class="card-body">
        <div class="d-flex align-items-center justify-content-sm-end mb-3">
			{include file='partButtonExport.tpl' exportTitle="Export Report as CSV" exportExtraClass="btn-sm mr-3"}
			<div class="d-inline-block min-w-200">
				{include file='partColumnsMultiselect.tpl' allColumns=$showhideColumns selectedColumns=$showhideSelectedColumns}
			</div>
        </div>

		<table id="tbl0-{$reportTypeID}" class="{$theme_table_classes} text-nowrap dtReportsNoSort" style="width:100%">
            {include file='partHeaderRow.tpl' columns=$visibleColumns}
            {include file='partNormalRows.tpl' columns=$visibleColumns rows=$reportRows}
        </table>
    </div>
</div>
{/if}

<input type="hidden" id="hidSortField" value="{$sortField}"/>
<input type="hidden" id="hidDirField" value="{$dirField}"/>
<input type="hidden" name="hidReportType" id="hidReportType" value="{$reportTypeID}"/>
<input type="hidden" name="hidColumn" id="hidColumn" value=""/>
<input type="submit" name="btnColumn" id="btnColumn" style="display:none"/>
<input type="hidden" name="hidIntervalFrom" id="hidIntervalFrom" value="{$intervalFrom}"/>
<input type="hidden" name="hidIntervalFromTimestamp" id="hidIntervalFromTimestamp" value="{$intervalFromTimestamp}"/>
<input type="hidden" name="hidIntervalToTimestamp" id="hidIntervalToTimestamp" value="{$intervalToTimestamp}"/>


<script type="text/javascript">
	{literal}
		function refreshButton()
		{
			window.location.href = getFullUrl();
		}
		function getFullUrl()
		{
			return 'visitors-lookup.php?search=true&camp=' + $("#ddlCampaigns").val() + 
                    "&lps=" + $("#ddlLps").val() + "&offers=" + $("#ddlOffers").val() +
					"&int=" + $("#ddlInterval").val() +
					($("#ddlInterval").val() == 4 ? "&intfrom=" + encodeURIComponent($("#txtIntervalFrom").val()) +
							"&intto=" + encodeURIComponent($("#txtIntervalTo").val()) : '') +
					"&ip=" + trim($('#txtFilterIP').val()) +
					"&sort=" + $("#hidSortField").val() + "&dir=" + $("#hidDirField").val()
			;
		}


		function changeColumn(sender, reportType, defaultColumns)
		{
			var ddlvalue = typeof defaultColumns !== 'undefined' ? "default" : $(sender).val();
			if (ddlvalue != null && ddlvalue != '' && ddlvalue != $('#hidCurrentColumn' + reportType).val())
			{
				$("#hidColumn").val(ddlvalue);
				$("#btnColumn").click();
			}
		}
		function changeCampaign()
		{}

		var menuRedirectPage = '';
		var menuNewWindow = false;

		$(document).ready(function() {

			cmKeyword(true);
			cmLandingPage(true);
			cmOffer(true);
			cmCampaign(true, true, true);
			cmDate(true);
			cmIpAddress(true);
			cmGeoCountry(true);
			cmGeoRegion(true);
			cmGeoCity(true);

            initializeSumoSelectCampaignsMultiple();
            initializeSumoSelectPredefLpsMultiple();
            initializeSumoSelectPredefOffersMultiple();
		});
	{/literal}
</script>
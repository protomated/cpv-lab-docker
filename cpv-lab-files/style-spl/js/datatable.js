$(function(e) {

	$.fn.dataTable.moment('MM/DD/YYYY h:mm a');
	$.fn.dataTable.moment('MM/DD/YYYY');
	
	// data tables from Settings pages
	var configSettings = {
		scrollX:		true,
		colReorder:		true,
		iDisplayLength:	50,
		stateSave:		true,
		stripeClasses:	[]
	};
	configSettings = SearchForSortOrder(configSettings);
	$('.dtSettings').DataTable(configSettings);
	
	// data tables from report pages without sorting
	var configReports = getConfigReportsNoSort();
	$('.dtReportsNoSort').DataTable(configReports);
	
	// data tables from report pages with sorting
	var configStats = {
		scrollX:		true,
		colReorder:		true,
		iDisplayLength:	50,
		stateSave:		true,
		stripeClasses:	[]
	};
	configStats = SearchForSortOrder(configStats);
	//console.log(configStats);
	$('.dtReportsSort').DataTable(configStats);
	
	// data tables from Campaigns & Overview pages
	var configCampaign = {
		scrollX:        true,
        scrollY:        '50vh',
        scrollCollapse:	true,
		colReorder:		true,
        paging:         false,
        ordering:       false,
        info:           false,
		stateSave:		true,
		stripeClasses:	[]
		//fixedColumns: {
		//		rightColumns: 1
		//	}
	};
	//dataTableConfig["destroy"] = true;
	
	$('.dtCampaigns').DataTable(configCampaign);
});

function getConfigReportsNoSort()
{
	return {
		scrollX:		true,
		colReorder:		true,
        ordering:		false,
		iDisplayLength:	50,
		stateSave:		true,
		stripeClasses:	[]
	};
}
function RedrawDataTables()
{
	$('.dtSettings').DataTable().draw();
	$('.dtCampaigns').DataTable().draw();
	$('.dtReportsNoSort').DataTable().draw();
	$('.dtReportsSort').DataTable().draw();
}

function SearchForSortOrder(configSettings)
{
	
	if ($('#hidSortColumnID').length>0)
	{
		var dirField = $('#hidDirField').length>0 ? $('#hidDirField').val() : "asc";
		configSettings["order"] = [[$('#hidSortColumnID').val(), dirField]]
	}
	else
	{
		configSettings["order"] = [];
	}
	return configSettings;
}
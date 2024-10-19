$(function() {
	
	initializeIcheckControls();

})
	
var campaignStartDate = $('#hidCampaignStartDate').length >0 ? $('#hidCampaignStartDate').val() : '2010-01-01';
var currentDate = $('#txtIntervalNow').length >0 && $('#txtIntervalNow').val() != '' ? $('#txtIntervalNow').val() : moment().format('YYYY-MM-DD');
//console.log(currentDate);
//console.log(moment());
var rangesArray = {
		'Today': [getMomentFromDateYMD(currentDate), getMomentFromDateYMD(currentDate), 1],
		'Yesterday': [getMomentFromDateYMD(currentDate).subtract(1, 'days'), getMomentFromDateYMD(currentDate).subtract(1, 'days'), 2],
		'Past 7 Days': [getMomentFromDateYMD(currentDate).subtract(7, 'days'), getMomentFromDateYMD(currentDate).subtract(1, 'days'), 3],
		'Past 14 Days': [getMomentFromDateYMD(currentDate).subtract(14, 'days'), getMomentFromDateYMD(currentDate).subtract(1, 'days'), 5],
		'Past 30 Days': [getMomentFromDateYMD(currentDate).subtract(30, 'days'), getMomentFromDateYMD(currentDate).subtract(1, 'days'), 6],
		'This Month': [getMomentFromDateYMD(currentDate).startOf('month'), getMomentFromDateYMD(currentDate), 7],
		'Last Month': [getMomentFromDateYMD(currentDate).subtract(1, 'month').startOf('month'), getMomentFromDateYMD(currentDate).subtract(1, 'month').endOf('month'), 9],
		'All Time': [getMomentFromDateYMD(campaignStartDate, 'YYYY-MM-DD'), getMomentFromDateYMD(currentDate), 8],
};
//console.log(rangesArray);
	
function getMomentFromDateMDY(currentDate)
{
	return moment(currentDate, 'MM/DD/YYYY');
}
	
function getMomentFromDateYMD(currentDate)
{
	return moment(currentDate, 'YYYY-MM-DD');
}

function initializeDaterange()
{
	var startDate = $('#txtIntervalFrom').length >0 ? getMomentFromDateMDY($('#txtIntervalFrom').val()) : moment();
	var endDate = $('#txtIntervalTo').length >0 ? getMomentFromDateMDY($('#txtIntervalTo').val()) : moment();
	//console.log(startDate.toDate() + ' - ' + endDate.toDate());
	$('#daterange-btn').daterangepicker({
		ranges: rangesArray,
		startDate: startDate,
		endDate: endDate,
		opens: 'center'
	}, callbackDaterangePicker
			);
	callbackDaterangePicker(startDate, endDate, 'none');
}
function callbackDaterangePicker(start, end, label) {
	var rangeID = 0;
	$('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
	if (label != 'none')
	{
		if (label == "Custom Range")
			rangeID = 4;
		else if (rangesArray[label] != null)
			rangeID = rangesArray[label][2];
		$('#txtIntervalFrom').val(start.format('MM/DD/YYYY'));
		$('#txtIntervalTo').val(end.format('MM/DD/YYYY'));
		$('#ddlInterval').val(rangeID);
		if ($('#hidWithInterval').length > 0)
			changeCampaign(true);
		else
			changeCampaign();
	}
	//console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' -- ' + label + ' - ' + rangeID);
}

function initializeDaterangeSimple()
{
	$('.daterange-btn-simple').each(function() {
		var datavalue = $(this).attr("id").replace("daterange-btn-simple","");
		var customStartDate = $('#txtIntervalFrom' + datavalue).length >0 && $('#txtIntervalFrom' + datavalue).val() != '' ? moment($('#txtIntervalFrom' + datavalue).val(), 'MM/DD/YYYY') : moment();
		var customEndDate = $('#txtIntervalTo' + datavalue).length >0 && $('#txtIntervalTo' + datavalue).val() != '' ? moment($('#txtIntervalTo' + datavalue).val(), 'MM/DD/YYYY') : moment();
		//console.log(datavalue + ' - ' + customStartDate + ' - ' + customEndDate);
		$(this).daterangepicker({
			ranges: rangesArray,
			startDate: customStartDate,
			endDate: customEndDate,
			opens: 'center'
		}, function(start, end, label) {
			callbackDaterangePickerSimple(start, end, label, datavalue);
		});
		callbackDaterangePickerSimple(customStartDate, customEndDate, 'Today', datavalue)
	});
}

function callbackDaterangePickerSimple(start, end, label, datavalue) {

	//console.log(datavalue);
	$('#daterange-btn-simple' + datavalue + ' span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
	$('#txtIntervalFrom' + datavalue).val(start.format('MM/DD/YYYY'));
	$('#txtIntervalTo' + datavalue).val(end.format('MM/DD/YYYY'));
	$('#ddlInterval' + datavalue).val(rangeID);
	var rangeID = 0;
	if (label != 'none')
	{
		if (label == "Custom Range")
			rangeID = 4;
		else if (rangesArray[label] != null)
			rangeID = rangesArray[label][2];
		if (typeof handleDaterangeSelection === "function") { 
			handleDaterangeSelection(datavalue, rangeID);
		}
	}
}

function initializeIcheckControls()
{
	//iCheck for checkbox and radio inputs
	$('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
		checkboxClass: 'icheckbox_minimal-purple',
		radioClass: 'iradio_minimal-purple'
	})

	//purple color scheme for iCheck
	$('input[type="checkbox"].minimal-purple, input[type="radio"].minimal-purple').iCheck({
		checkboxClass: 'icheckbox_minimal-purple',
		radioClass: 'iradio_minimal-purple'
	})

	//Flat purple color scheme for iCheck
	$('input[type="checkbox"].flat-purple, input[type="radio"].flat-purple').iCheck({
		checkboxClass: 'icheckbox_flat-purple',
		radioClass: 'iradio_flat-purple'
	});

	//events for iCheck checkboxes and radio buttons
	$('.minimal-campaigntype').on('ifChecked', function(event){
		clickDestination(event.target.value);
	});
	
	$('.minimal-leadsequence').on('ifChecked', function(event){
		clickDestinationTracking(event.target.value, -1);
	});
	$('.minimal-campaigntype-seq').on('ifChecked', function(event){
		clickDestinationTracking(-1, event.target.value);
	});
	$('.minimal-campaigntype-lead').on('ifChecked', function(event){
		clickTracking(event.target.value);
	});
	
	$('.minimal-lpprotect').on('ifChecked', function(event){
		clickLpProtectType(event.target);
		ajaxLoadLpProtectCode();
	});
	
	$('.minimal-chall-stats').on('ifChanged', function(event){
		checkAllStats($(event.target).attr("data-option"));
	});
	$('.minimal-alerts').on('ifChanged', function(event){
		clickOnlyAlerts(event.target);
	});
	
}

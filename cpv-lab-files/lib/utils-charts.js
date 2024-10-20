// @package     CPV Lab Pro
// @copyright   (C) Uptechvision Solutions. All rights reserved.
// @link        https://cpvlab.pro

var isDarkMode = getCookie("darkmode") == 1;
var flotAxisColor =  isDarkMode ? '#c5c5f3' : '#68686b';

function showChartSpinner(name, control)
{
	$('#' + control).html('<div class="lds-dual-ring" id="' + name + '"></div>')
}

function hideChartSpinner(name)
{
	$('#' + name).fadeOut(10);
}

function showChartPlaceholder(name, control)
{
	$('#' + control).html(`<div class="ph-item">
			<div class="ph-col-12">
				<div class="ph-row">
					<div class="ph-col-12 big"></div>
					<div class="ph-col-12 big"></div>
					<div class="ph-col-12 empty"></div>
					<div class="ph-col-6"></div>
					<div class="ph-col-4 empty"></div>
					<div class="ph-col-2"></div>
					<div class="ph-col-6"></div>
					<div class="ph-col-4 empty"></div>
					<div class="ph-col-2"></div>
					<div class="ph-col-6"></div>
					<div class="ph-col-4 empty"></div>
					<div class="ph-col-2"></div>
					<div class="ph-col-6"></div>
					<div class="ph-col-4 empty"></div>
					<div class="ph-col-2"></div>
					<div class="ph-col-6"></div>
					<div class="ph-col-4 empty"></div>
					<div class="ph-col-2"></div>
				</div>
			</div>
		</div>`);
}

/*
 * `<div class="ph-item">
			<div class="ph-col-12">
				<div class="ph-row">
					<div class="ph-col-12 big"></div>
					<div class="ph-col-6"></div>
					<div class="ph-col-4 empty"></div>
					<div class="ph-col-2"></div>
					<div class="ph-col-4"></div>
					<div class="ph-col-8 empty"></div>
					<div class="ph-col-6"></div>
					<div class="ph-col-6 empty"></div>
					<div class="ph-col-12"></div>
					<div class="ph-col-12 empty big"></div>
					<div class="ph-col-6"></div>
					<div class="ph-col-4 empty"></div>
					<div class="ph-col-2"></div>
					<div class="ph-col-4"></div>
					<div class="ph-col-8 empty"></div>
					<div class="ph-col-6"></div>
					<div class="ph-col-6 empty"></div>
					<div class="ph-col-12"></div>
				</div>
			</div>
		</div>`
 */
function hideChartPlaceholder(name)
{
	$('#' + name).fadeOut(10);
}

function ajaxLoadChartModal() {
	var column = '', columnS = '';

	showChartSpinner("spinc", "chartplaceholderinline");
	//showSpinner("spinc" + reportTypeID + "-" + levelID);

	$.ajax({
		url: "ajax/chartDisplayStatsAjax.php",
		data: {
			"camp": $('#hidCampaignID').val(),
			"col": column,
			"colS": columnS,
			"rep": $("#hidInlineChartReportTypeID").val(),
			"level": $("#hidInlineChartLevelID").val()
		},
		dataType: "json",
		type: "POST",
		success: function (response, textStatus, xhr)
		{
			var dataArray = null, ticksArray = null, maxValueAdjusted = null, decimalPlaces = 0,
					columnCaption = '', columnColor = '', prefixSign = '', suffixSign = '', isMulticolumn = false;
			$.each(response, function (key, value)
			{
				if (key == "ChartTitle")
				{
					$('#inlineChartModalLabel').html(value);
				}
				else if (key == "ColumnsArray")
				{
					$("#ddlInlineChartColumns option").each(function() {
						$(this).remove();
					});
					$.each(value, function(key, val) {
					  $("#ddlInlineChartColumns").append(new Option(val, key));
					});
				}
				else if (key == "SelectedColumn")
				{
					$('#ddlInlineChartColumns').val(value);
				}
			});
			ajaxLoadChart();
		}
	});
}

function ajaxLoadChart(ddlSource) {
	var column = '', columnS = '';
	if (ddlSource != null)
	{
		if (ddlSource.id.indexOf('ddlChartColumnsS') >= 0)
			columnS = $(ddlSource).val();
		else
			column = $(ddlSource).val();
	}

	showChartSpinner("spinc", "chartplaceholderinline");

	$.ajax({
		url: "ajax/chartLoad.php",
		data: {
			"camp": $('#hidCampaignID').val(),
			"col": column,
			"colS": columnS,
			"rep": $("#hidInlineChartReportTypeID").val(),
			"level": $("#hidInlineChartLevelID").val(),
			"where": $('#hidIntervalWhereClause').length ? $('#hidIntervalWhereClause').val() : ''
		},
		dataType: "json",
		type: "POST",
		success: function (response, textStatus, xhr)
		{
			var dataArray = null, ticksArray = null, maxValueAdjusted = null, decimalPlaces = 0,
					columnCaption = '', columnColor = '', prefixSign = '', suffixSign = '', isMulticolumn = false;
			$.each(response, function (key, value)
			{
				if (key == "Data")
				{
					dataArray = JSON.parse(value);
				}
				else if (key == "Ticks")
				{
					ticksArray = JSON.parse(value);
				}
				else if (key == "DecimalPlaces")
				{
					decimalPlaces = value;
				}
				else if (key == "MaxValueAdjusted")
				{
					maxValueAdjusted = value;
				}
				else if (key == "ColumnCaption")
				{
					columnCaption = JSON.parse(value);
				}
				else if (key == "ColumnColor")
				{
					columnColor = JSON.parse(value);
				}
				else if (key == "IsMulticolumn")
				{
					isMulticolumn = value;
				}
				else if (key == "PrefixSign")
				{
					prefixSign = value;
				}
				else if (key == "SuffixSign")
				{
					suffixSign = value;
				}
			});

			var barWidth = isMulticolumn ? .15 : .6;

			var dataObject = [];
			for (i = 0; i < dataArray.length; i++)
			{
				var tempData = [];
				for (j = 0; j < dataArray[i].length; j++)
				{
					tempData[j] = [parseFloat(dataArray[i][j][0]).toFixed(decimalPlaces), dataArray[i][j][1]];
				}
				dataObject[i] = {
					label: columnCaption[i],
					data: tempData,
					bars: {
						order: i + 1
					},
					color: "#" + columnColor[i]
				};
			}
			var settingsObject = {
				xaxis: {
					max: maxValueAdjusted,
					font: {
                        color: flotAxisColor,
                        family: 'Muli, sans-serif',
                        size: 11
                    },
					tickFormatter: function (val, axis) {
						return prefixSign + parseFloat(val).toFixed(decimalPlaces) + suffixSign;
					}
				},
				yaxis: {
					font: {
                        color: flotAxisColor,
                        family: 'Muli, sans-serif',
                        size: 11
                    },
					tickLength: 0,
					ticks: ticksArray
				},
				grid: {
					hoverable: true,
					autoHighlight: true,
					backgroundColor: "#FFF",
				},
				bars: {
					show: true,
					horizontal: true,
					barWidth: barWidth,
					align: "center",
				},
				legend: {
					noColumns: 3,
					margin: [0, -25],
					backgroundOpacity: 0
				},
				tooltip: true,
				tooltipOpts: {
					content: "%s: %x",
					shifts: {
						x: -10,
						y: 25
					}
				}
			};
			$.plot("#chartplaceholderinline", dataObject, settingsObject);

			//hideSpinner("spinc" + reportTypeID + "-" + levelID);
		}
	});
}

function ajaxLoadChartTrends(ddlSource) {
	var column = columnS = '';
	if (ddlSource != null)
	{
		if (ddlSource.id.indexOf('ddlChartColumnsS') >= 0)
			columnS = $(ddlSource).val();
		else
			column = $(ddlSource).val();
	}
	var reportTypeID = $("#hidReportTypeID").val();

	showChartSpinner("spinc" + reportTypeID, "chartplaceholder" + reportTypeID);

	$.ajax({
		url: "ajax/chartLoadTrends.php",
		data: {
			"camp": $('#hidSelectedCampaignID').val(),
			"col": column,
			"colS": columnS,
			"rep": reportTypeID,
			"where": $('#hidWhereClause').length ? $('#hidWhereClause').val() : '',
			"intw": $('#hidIntervalWhere').length ? $('#hidIntervalWhere').val() : '',
			"exdays": $('#hidExcludeDays').length ? $('#hidExcludeDays').val() : ''
		},
		dataType: "json",
		type: "POST",
		success: function (response, textStatus, xhr)
		{
			var dataArray = null, dataSArray = null, markings = null, decimalPlaces =0, decimalPlacesS = 0,
				columnCaption = '', prefixSign = '', suffixSign = '', columnCaptionS = '', prefixSignS = '', suffixSignS = '';
			$.each(response, function (key, value)
			{
				if (key == "Data")
				{
					dataArray = JSON.parse(value);
				}
				else if (key == "DataS")
				{
					dataSArray = JSON.parse(value);
				}
				else if (key == "DecimalPlaces")
				{
					decimalPlaces = value;
				}
				else if (key == "ColumnCaption")
				{
					columnCaption = JSON.parse(value);
				}
				else if (key == "PrefixSign")
				{
					prefixSign = value;
				}
				else if (key == "SuffixSign")
				{
					suffixSign = value;
				}
				else if (key == "DecimalPlacesS")
				{
					decimalPlacesS = value;
				}
				else if (key == "ColumnCaptionS")
				{
					columnCaptionS = JSON.parse(value);
				}
				else if (key == "PrefixSignS")
				{
					prefixSignS = value;
				}
				else if (key == "SuffixSignS")
				{
					suffixSignS = value;
				}
				else if (key == "Markings")
				{
					markings = JSON.parse(value);
				}
			});

			var tempData = [];
			for (j = 0; j < dataArray.length; j++)
			{
				tempData[j] = [dataArray[j][0], parseFloat(dataArray[j][1]).toFixed(decimalPlaces)];
			}
			var dataObject = [
				{data: tempData, label: columnCaption}
			];
			var yaxesObject = [
				{
					font: {
							color: flotAxisColor,
							size: 11,
							family: "Muli, sans-serif",
						},
					tickFormatter: function (val, axis) {
						return prefixSign + parseFloat(val).toFixed(decimalPlaces) + suffixSign;
					}
				}
			];
			if (columnCaptionS != null && columnCaptionS != '')
			{
				tempData = [];
				for (j = 0; j < dataSArray.length; j++)
				{
					tempData[j] = [dataSArray[j][0], parseFloat(dataSArray[j][1]).toFixed(decimalPlacesS)];
				}
				dataObject.push({data: tempData, label: columnCaptionS, yaxis: 2});
				yaxesObject.push({
					font: {
							color: flotAxisColor,
							size: 11,
							family: "Muli, sans-serif",
						},
					position: "right",
					alignTicksWithAxis: 1,
					tickFormatter: function (val, axis) {
						return prefixSignS + parseFloat(val).toFixed(decimalPlacesS) + suffixSignS;
					}
				});
			}
			var xaxesObject = {
						font: {
							color: flotAxisColor,
							size: 11,
							family: "Muli, sans-serif",
						},
						mode: "categories"
					};
			if (reportTypeID == 13)
			{
				xaxesObject["ticks"] = 10;
				xaxesObject["tickFormatter"] = function (val, axis) {
					return dataArray[val] != null ? dataArray[val][0] : '';
				};
				//xaxesObject = xaxesObject.concat({ticks:10, tickFormatter: function (val, axis) {
				//		return dataArray[val]!=null ? dataArray[val][0] : '';
				//	}});
			}
			var settingsObject = {
				xaxes: [xaxesObject],
				yaxes: yaxesObject,
				series: {
					lines: {
						show: true,
						lineWidth: 2,
						fill: true,
							fillColor: {
								colors: [{
										opacity: .3
									}, {
										opacity: .2
									}]
							}
					},
					points: {
						show: true,
						fillColor: "#e6eaea",
						lineWidth: 1,
						radius: 5
					},
					shadowSize: 0,
					stack: true
				},
				grid: {
					hoverable: true,
					autoHighlight: true,
					backgroundColor: "#FFF",
				},
				legend: {
						noColumns: 2,
						margin: [0, -25],
						backgroundOpacity: 0,
					},
				tooltip: true,
				tooltipOpts: {
					content: "%s: %y",
					shifts: {
						x: -10,
						y: 25
					}
				}
			};

			if (reportTypeID == 13)
			{
				var markingsArray = [];
				for(i=0; i<markings.length; i++)
				{
					markingsArray.push({xaxis: {from: markings[i], to: markings[i] + 1 }});
				}
				settingsObject.grid.markings = markingsArray;
			}

			$.plot("#chartplaceholder" + reportTypeID, dataObject, settingsObject);
		}
	});
}

function ajaxLoadChartDay() {
	var reportTypeID = parseInt($("#hidReportType").val());
	showChartSpinner("spincd", "chartplaceholder" + reportTypeID);
	var intervalType = $('#ddlInterval').length ? parseInt($('#ddlInterval').val()) : 0;
	var isDayChart = intervalType == 1 || intervalType == 2 ||
			(intervalType==4 && $('#txtIntervalFrom').length && $('#txtIntervalTo').length && $('#txtIntervalFrom').val()==$('#txtIntervalTo').val());
	$.ajax({
		url: "ajax/chartLoadDay.php",
		data: {
			"camp": $('#hidSelectedCampaignID').val(),
			"rep": reportTypeID,
			"where": $('#hidWhereClause').length ? $('#hidWhereClause').val() : '',
			"viewf": $('#hidViewTypeField').length ? $('#hidViewTypeField').val() : '',
			"dayc": isDayChart ? 1 : 0,
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0'
		},
		dataType: "json",
		type: "POST",
		success: function (response, textStatus, xhr)
		{
			var seriesLabel = '';
			switch (reportTypeID)
			{
				case 17:
					seriesLabel = 'Conversions';
					break;
				case 21:
					seriesLabel = 'Visitors';
					break;
				case 24:
					seriesLabel = 'Subscribers';
					break;
			}
			var dataArray = response;
			if (dataArray.length == 0)
			{
				var startDate = $('#hidIntervalFromTimestamp').length ? $('#hidIntervalFromTimestamp').val() : 1293840000000;
				var endDate = $('#hidIntervalToTimestamp').length ? $('#hidIntervalToTimestamp').val() : new Date().getTime();
				dataArray = [[startDate, 0], [endDate, 0]];
			}
			else if (!isDayChart)
				dataArray = prepareData(dataArray);

			// first correct the timestamps - they are recorded as the daily
			// midnights in UTC+0100, but Flot always displays dates in UTC
			// so we have to add one hour to hit the midnights in the plot

			//for (var i = 0; i < dataArray.length; ++i) {
			//	dataArray[i][0] +=  60 * 60 * 1000;
			//}

			var dataObject = [{
					label: seriesLabel,
					data: dataArray
				}];
			var settingsObject = {
				xaxis: {
					mode: isDayChart ? "categories" : "time",
					font: {
                        color: flotAxisColor,
                        family: 'Muli, sans-serif',
                        size: 11
                    }
				},
				yaxis: {
					min: 0,
					tickDecimals: 0,
					font: {
                        color: flotAxisColor,
                        family: 'Muli, sans-serif',
                        size: 11
                    },
                    tickColor: "rgba(0,0,0,0.1)"
				},
				series: {
					lines: {
						show: true,
						fill: true
					}
				},
				lines: {
					show: true,
                    fill: true,
                    lineWidth: 2,
				},
				points: {
                    radius: 3,
                    show: true,
                    symbol: "circle"
                },
				shadowSize: 2,
				colors: ["#8960a7"],
				grid: {
					hoverable: true,
                    markingsColor: "rgba(0,0,0,0.1)",
                    clickable: true,
                    autoHighlight: true,
                    borderWidth: 0,
					backgroundColor: "#FFF",
				},
				legend: {
						margin: [0, -25],
						backgroundOpacity: 0,
					},
				tooltip: true,
                tooltipOpts: {
                    content: "%s: %y",
                    shifts: {
                        x: -10,
                        y: 25
                    }
                }
			};

			if (!isDayChart)
			{
				settingsObject.xaxis.tickLength = 5;
				settingsObject.xaxis.timeformat = "%m/%d/%Y";
				settingsObject.grid.markings = weekendAreas;
			}

			$.plot("#chartplaceholder" + reportTypeID, dataObject, settingsObject);
		}
	});
}

function ajaxLoadChartGeneral() {
	showChartSpinner("spinc0", "chartplaceholder0");
	//return;
	var isDarkMode = getCookie("darkmode") == 1;
	var viewChart = $('#ddlViewChart').length ? $('#ddlViewChart').val() : 1;
	var intervalType = $('#ddlInterval').length ? parseInt($('#ddlInterval').val()) : -1;
	var isDayChart =  intervalType == 1 || intervalType == 2 ||
			(intervalType==4 && $('#txtIntervalFrom').length && $('#txtIntervalTo').length && $('#txtIntervalFrom').val()==$('#txtIntervalTo').val());
	var is24HoursChart = intervalType == 0;
	$.ajax({
		url: "ajax/chartLoadGeneral.php",
		data: {
			"where": $('#hidWhereClauseChart').length ? $('#hidWhereClauseChart').val() : '',
			"ctype": $('#hidCampaignType').length ? $('#hidCampaignType').val() : '',
			"cpv": $('#hidCurrentCpv').length ? $('#hidCurrentCpv').val() : '0',
			"cache": $('#hidUseCaching').length ? $('#hidUseCaching').val() : '0',
			"intf": $('#hidIntervalFrom').length ? $('#hidIntervalFrom').val() : '',
			"dayc": isDayChart ? 1 : 0,
			"24hc": is24HoursChart ? 1 : 0,
			"allc": $("#hidCampaignsCount").length && $('#ddlCampaigns').find("option:selected").length == $("#hidCampaignsCount").val() ? '1' : '0',
			"viewc": viewChart
		},
		dataType: "json",
		type: "POST",
		success: function (response, textStatus, xhr)
		{
			isDayChart = isDayChart || is24HoursChart;
			currencySign = $('#hidDisplayCurrencySign').length > 0 ? $('#hidDisplayCurrencySign').val() : '$';
			var datasets = response;

			var columns = [], data = [], showSecondAxis = false, firstAxisDollar = false;
			switch (parseInt(viewChart))
			{
				// [field name, axis number]
				case 1:
					columns = [["Views", 1], ["Clicks", 1], ["Conversion", 1]];
					break;
				case 2:
					columns = [["Views", 1], ["CTR", 2], ["CR", 2]];
					showSecondAxis = true;
					break;
				case 3:
					columns = [["Views", 1], ["ROI", 2]];
					showSecondAxis = true;
					break;
				case 4:
					columns = [["Revenue", 1], ["Cost", 1], ["Profit", 1]];
					firstAxisDollar = true;
					break;
			}
			for (i = 0; i < columns.length; i++)
			{
				if (columns[i][1] != 1)
					datasets[columns[i][0]]["yaxis"] = columns[i][1];
				if (datasets[columns[i][0]]["data"].length == 0)
				{
					var startDate = $('#hidIntervalFromTimestamp').length ? $('#hidIntervalFromTimestamp').val() : 1293840000000;
					var endDate = $('#hidIntervalToTimestamp').length ? $('#hidIntervalToTimestamp').val() : new Date().getTime();
					datasets[columns[i][0]]["data"] = [[startDate, 0], [endDate, 0]];
				}
				else if (!isDayChart)
					datasets[columns[i][0]]["data"] = prepareData(datasets[columns[i][0]]["data"]);
				data.push(datasets[columns[i][0]]);
			}
			if (data.length > 0)
			{
				var settingsObject = {
					xaxis: {
						mode: isDayChart ? "categories" : "time",
						//tickLength: 5,
						//timeformat: "%m/%d/%Y",
						font: {
							color: flotAxisColor,
							size: 11,
							family: "Muli, sans-serif",

						}
					},
					yaxis: {
						font: {
							color: flotAxisColor,
							size: 11,
							family: "Muli, sans-serif",
						}
					},
					yaxes: [ {
							position: "left",
							tickFormatter: function (val, axis) {
								return firstAxisDollar ? currencySign + parseFloat(val).toFixed(2) : parseFloat(val).toFixed(0);
							}
						}],
					series: {
						lines: {
							show: true,
							lineWidth: 2,
							fill: true,
							fillColor: { colors: [{ opacity: .3}, { opacity: .2 }] }
						},
						points: {
							show: true,
							fillColor: "#e6eaea",
							lineWidth: 3,
							radius: 5
						},
						shadowSize: 2,
					},
					colors: ["#3EBAEF", "#7673E6", "#F47B25", "#f4cc13", "#33383d", "#454b52", "#8960a7", "#454b52", "#d24d33", "#f0ad4e"],
					grid: {
						hoverable: true,
						clickable: true,
						color: isDarkMode ? '#c5c5f3' : '#a1a3a3',
						backgroundColor: "#FFF",
						borderWidth: 1,
						borderColor: '#e6eaea', // border color of frame
						markings: weekendAreas
					},
					legend: {
						noColumns: 3,
						margin: [0, -25],
						backgroundOpacity: 0,
					},
					tooltip: true,
					tooltipOpts: {
						content: "%s: %y",
						shifts: {
							x: -10,
							y: 25
						}
					}
				};

				if (!isDayChart)
				{
					settingsObject.xaxis.tickLength = 5;
					settingsObject.xaxis.timeformat = "%m/%d/%Y";
					settingsObject.grid.markings = weekendAreas;
				}

				if (showSecondAxis)
				{
					settingsObject.yaxes.push({position: "right", alignTicksWithAxis: 1,
						tickFormatter: function (val, axis) {
							return parseFloat(val).toFixed(2) + '%';
						}
					});
				}

				$.plot("#chartplaceholder0", data, settingsObject);
			}
		}
	});
}

function ajaxLoadChartGeoDetails() {
	var reportTypeID = $("#hidReportType").val();
	var viewChart = $('#ddlViewChart').length ? $('#ddlViewChart').val() : 1;
	showChartSpinner("spinc" + reportTypeID, "chartplaceholder" + reportTypeID);

	$.ajax({
		url: "ajax/chartLoadGeoDetails.php",
		data: {
			"camp": $('#hidCampaignID').val(),
			"ctype": $('#hidCampaignType').val(),
			"cpv": $('#hidCurrentCpv').val(),
			"rep": reportTypeID,
			"viewc": viewChart,
			"where": $('#hidWhereClause').length ? $('#hidWhereClause').val() : '',
			"fn": $('#hidFilterContinent').length ? $('#hidFilterContinent').val() : '',
			"fc": $('#hidFilterCountry').length ? $('#hidFilterCountry').val() : '',
			"fr": $('#hidFilterRegion').length ? $('#hidFilterRegion').val() : '',
			"ft": $('#hidFilterCity').length ? $('#hidFilterCity').val() : ''
		},
		dataType: "json",
		type: "POST",
		success: function (response, textStatus, xhr)
		{
			var dataArray = null, ticksArray = null, maxValueAdjusted = null, decimalPlaces = 0;
			dataArray = []
			$.each(response, function (key, value)
			{
				if (key == "Data")
				{
					dataArray = JSON.parse(value);
				}
				else if (key == "Ticks")
				{
					ticksArray = JSON.parse(value);
				}
				else if (key == "MaxValueAdjusted")
				{
					maxValueAdjusted = value;
				}
				else if (key == "Decimals")
				{
					decimalPlaces = value;
				}
			});

			//var data = [ ["January", 10], ["February", 8], ["March", 4], ["April", 13], ["May", 17], ["June", 9] ];
			//var dataArray = [ [ [1, 10], [2, 8], [3, 4] ], [ [1, 13], [2, 17], [3, 9] ] ];
			//var ticksArray = [ [ 1, 'Visitors'], [2, 'Clicks'], [3, 'Conversions'] ];
			var dataLabels = [ 'Selected Location', 'All Other Locations'];
			var dataObject = [];
			for (i = 0; i < dataArray.length; i++)
			{
				/*var tempData = [];
				for (j = 0; j < dataArray[i].length; j++)
				{
					//tempData[j] = [dataArray[i][j][0], parseFloat(dataArray[i][j][1]).toFixed(0)];
					tempData[j] = [dataArray[i][j][0], dataArray[i][j][1]];
				}*/
				dataObject[i] = {
					label: dataLabels[i],
					data: dataArray[i],
					bars: {
						order: i + 1
					}
				};
			}

			var settingsObject = {
				xaxis: {
					min: 0.5,
					max: maxValueAdjusted,
					font: {
                        color: flotAxisColor,
                        family: 'Muli, sans-serif',
                        size: 11
                    },
					tickLength: 0,
					ticks: ticksArray
					//tickFormatter: function (val, axis) {
					//	return prefixSign + parseFloat(val).toFixed(decimalPlaces) + suffixSign;
					//}
				},
				yaxis: {
					tickDecimals: decimalPlaces,
					font: {
                        color: flotAxisColor,
                        family: 'Muli, sans-serif',
                        size: 11
                    },
				},
				colors: ["#7673E6", "#F47B25", "#3EBAEF", "#f4cc13", "#33383d", "#454b52", "#8960a7", "#454b52", "#d24d33", "#f0ad4e"],
				grid: {
					hoverable: true,
					autoHighlight: true,
					backgroundColor: "#FFF",
				},
				bars: {
					show: true,
					barWidth: .3,
					//align: "center",
				},
				legend: {
					noColumns: 3,
					margin: [0, -25],
					backgroundOpacity: 0
				},
				tooltip: true,
				tooltipOpts: {
					content: "%s: %y",
					shifts: {
						x: -10,
						y: 25
					}
				}
			};

		$.plot("#chartplaceholder" + reportTypeID, dataObject, settingsObject);
		}
	});
}

function ajaxLoadPerfGeoStats() {
	showSpinner("spinp");
	//$("#tblPerformance").find("tr:gt(0)").remove();
	$("#tblPerformance > tbody").html("");
	$.ajax({
		url: "ajax/perfGeoStats.php",
		data: {
			"camp": $('#ddlCampaigns').val(),
			"rep" : $("#hidPerformanceReportType").val(),
			"where": $('#hidWhereClause').length ? $('#hidWhereClause').val() : '',
			"col": $('#ddlPerformance').val(),
			"durl": $('#hidDetailsUrl').length ? $('#hidDetailsUrl').val() : ''
		},
		type: "POST",
		success: function (response, textStatus, xhr)
		{
			$('#tblPerformance tbody').append(response);
			hideSpinner("spinp");
		}
	});
}

function ajaxLoadPerfGeoDetails() {
	showSpinner("spinp");
	$("#tblPerformance > tbody").html("");
	$.ajax({
		url: "ajax/perfGeoDetails.php",
		data: {
			"camp": $('#ddlCampaigns').val(),
			"rep" : $("#hidPerformanceReportType").val(),
			"where": $('#hidWhereClause').length ? $('#hidWhereClause').val() : '',
			"col": $('#ddlPerformance').val(),
			"fn": $('#hidFilterContinent').length ? $('#hidFilterContinent').val() : '',
			"fc": $('#hidFilterCountry').length ? $('#hidFilterCountry').val() : '',
			"fr": $('#hidFilterRegion').length ? $('#hidFilterRegion').val() : '',
			"ft": $('#hidFilterCity').length ? $('#hidFilterCity').val() : ''
		},
		type: "POST",
		success: function (response, textStatus, xhr)
		{
			$('#tblPerformance tbody').append(response);
			hideSpinner("spinp");
		}
	});
}

function prepareData(data) {
	if (data && data.length > 0) {
		var oneDay = 86400000;
		var newData = [];

		// new zero value point before the old first point
		newData.push([(parseInt(data[0][0], 10) - oneDay).toString(), "0"]);

		for (var i = 0; i < data.length; i++) {
			// add existing point to new data
			newData.push(data[i]);

			// check distance between this point and the next (if not last point)
			if (i < data.length - 1) {
				var thisPointTimestamp = parseInt(data[i][0], 10);
				var nextPointTimestamp = parseInt(data[i + 1][0], 10);

				// if distance is two days, insert ony zero value point in between
				if (nextPointTimestamp - thisPointTimestamp == 2 * oneDay) {
					newData.push([(thisPointTimestamp + oneDay).toString(), "0"]);
				}
				// if distance is more then two days, insert one zero value point
				// directly after this day and one directly before the next day
				else if (nextPointTimestamp - thisPointTimestamp > 2 * oneDay) {
					newData.push([(thisPointTimestamp + oneDay).toString(), "0"]);
					newData.push([(nextPointTimestamp - oneDay).toString(), "0"]);
				}
			}
		}

		// new zero value point after the old last point
		newData.push([(parseInt(data[data.length - 1][0], 10) + oneDay).toString(), "0"]);

		return newData;
	}
}

// helper for returning the weekends in a period
function weekendAreas(axes) {
//alert(axes);
	var markings = [],
			d = new Date(axes.xaxis.min);

	// go to the first Saturday

	d.setUTCDate(d.getUTCDate() - ((d.getUTCDay() + 1) % 7))
	d.setUTCSeconds(0);
	d.setUTCMinutes(0);
	d.setUTCHours(0);

	var i = d.getTime();

	// when we don't set yaxis, the rectangle automatically
	// extends to infinity upwards and downwards

	do {
		markings.push({xaxis: {from: i, to: i + 2 * 24 * 60 * 60 * 1000}});
		i += 7 * 24 * 60 * 60 * 1000;
	} while (i < axes.xaxis.max);
	return markings;
}

function LoadDashboardCampaignsChart(sort, dir)
{
	if ($('#chartCampaigns').length) {
		var ctx = document.getElementById("chartCampaigns").getContext("2d");
		
		var jsonData = $("#hidChart" + sort + dir).val();
		if (jsonData == null || jsonData == '')
			return;
		var jsonObj = JSON.parse(jsonData);

		if (window.myBar != null)
			window.myBar.destroy();

		window.myBar = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: jsonObj["labels"],
				datasets: [{
					label: 'Cost',
					backgroundColor: "#ffb209",
					borderColor: "#ffb209",
					data: jsonObj["data1"]
				}, {
					label: 'Revenue',
					backgroundColor: "#7673e6",
					borderColor: "#7673e6",
					data: jsonObj["data2"]
				}, {
					label: 'ROI',
					backgroundColor: "#f47b25",
					borderColor: "#f47b25",
					data: jsonObj["data3"]
				}]
			},
			options: {

				responsive: true,
				legend: {
					display: true,
					labels: {
						fontColor: flotAxisColor
					},
				},

				title: {
					display: false,
					text: ''
				},
				scales: {
					yAxes: [{
						ticks: {
							
							fontColor: flotAxisColor,
						},
						gridLines: {
							color: 'rgba(255,255,255,0.02)'
						}
					}],
					xAxes: [{
						ticks: {
							display: true,
							fontColor: flotAxisColor,
						},
						gridLines: {
							display: true,
							color: 'rgba(255,255,255,0.02)'
						}
					}]
				},
			}
		});
	};
}
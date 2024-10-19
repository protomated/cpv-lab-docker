(function($) {
	"use strict";
	
		//multiselect Sumo
		//window.asd = $('.SlectBox').SumoSelect({ csvDispCount: 3, selectAll:true, captionFormatAllSelected: "Yeah, OK, so everything." });
        //window.Search = $('.search-box').SumoSelect({ csvDispCount: 3, search: true, searchText:'Enter here.' });
	
		initializeSumoSelectRedirectConditon('.slect-redirect');
		
		$('.slect-campaign').SumoSelect({ 
			csvDispCount: -1, 
			forceCustomRendering: true,
			floatWidth: 1,
			placeholder:'Select Campaigns', 
			search: true, 
			searchText:'Search by Name', 
			selectAll:true, 
			captionFormat:'{0} Campaigns Selected', 
			captionFormatAllSelected: "All Campaigns" 
		});

		$('.slect-customdomains').SumoSelect({ 
			csvDispCount: -1, 
			forceCustomRendering: true,
			floatWidth: 1,
			placeholder:'Select Domains', 
			search: true, 
			searchText:'Search by Name', 
			selectAll:true, 
			captionFormat:'{0} Domains Selected', 
			captionFormatAllSelected: "All Domains" 
		});
		
		$('.slect-captureoptions').SumoSelect({ 
			csvDispCount: 3, 
			forceCustomRendering: true,
			floatWidth: 1,
			placeholder:'Select Capture Options', 
			search: false, 
			selectAll:true, 
			captionFormat:'{0} Options Selected', 
			captionFormatAllSelected: "All Capture Options" 
		});
		$('.slect-captureoptions').on('sumo:closed', updateStep2Code);
				
})(jQuery);

function initializeSumoSelectRedirectConditon(controlID)
{
	$(controlID).SumoSelect({
			csvDispCount: -1, 
			forceCustomRendering: true,
			floatWidth: 1,
			placeholder:'Select Items', 
			search: true, 
			searchText:'Search in Items',
			selectAll:true, 
			captionFormat:'{0} Selected', 
			captionFormatAllSelected: "All Items" 
		});
		$('select' + controlID).on('sumo:closed', ajaxChangeConditionValue);
}

function initializeSumoSelectCampaignsMultiple()
{
	$('.slect-campmulti').SumoSelect({ 
		csvDispCount: 3, 
		forceCustomRendering: true,
		floatWidth: 1,
		placeholder:'Select Campaigns', 
		search: true, 
		searchText:'Search by Campaign Name',
		selectAll:true, 
		captionFormat:'{0} Campaigns Selected', 
		captionFormatAllSelected: "All Campaigns" 
	});
}

function initializeSumoSelectPredefLpsMultiple()
{
	$('.slect-lpsmulti').SumoSelect({ 
		placeholder:'Select Landing Pages', 
	});
}

function initializeSumoSelectPredefOffersMultiple()
{
	$('.slect-offersmulti').SumoSelect({ 
		csvDispCount: 3, 
		forceCustomRendering: true,
		floatWidth: 1,
		placeholder:'Select Offers', 
		search: true, 
		searchText:'Search by Name',
		selectAll:true, 
		captionFormat:'{0} Offers Selected', 
		captionFormatAllSelected: "All Offers" 
	});
}
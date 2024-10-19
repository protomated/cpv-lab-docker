(function($) {
	"use strict";
	
	// Toolbar extra buttons
	var btnSaveWizard = $('<button></button>').text('Save Campaign')
		.addClass('btn btn-primary ml-3')
		.on('click', function(){ SaveQkSetup(2, false); alert('Campaign was saved successfully!'); return false; });

	var btnSaveExit = $('<button></button>').text('Save & Exit')
		.addClass('btn btn-primary ml-3')
		.on('click', function(){ $(this).val("Saving...").prop("disabled",true); SaveQkSetup(2, true); return false; });


	// Smart Wizard
	$('#smartwizard').smartWizard({
			selected: 0,
			theme: 'default',
			transitionEffect:'fade',
			showStepURLhash: true,
			toolbarSettings: {
							  toolbarButtonPosition: 'end',
							  //toolbarExtraButtons: [btnSaveWizard, btnCancel]
							}
	});
		
	// Arrows Smart Wizard 1
	$('#smartwizard-1').smartWizard({
			selected: 0,
			theme: 'arrows',
			transitionEffect:'fade',
			showStepURLhash: false,
			toolbarSettings: {
							  toolbarExtraButtons: [btnSaveWizard, btnSaveExit]
							}
	});
			
	// Circles Smart Wizard 1
	$('#smartwizard-2').smartWizard({
			selected: 0,
			theme: 'circles',
			transitionEffect:'fade',
			showStepURLhash: false,
			toolbarSettings: {
							  //toolbarExtraButtons: [btnFinish, btnCancel]
							}
	});
			
	// Dots Smart Wizard 1
	$('#smartwizard-3').smartWizard({
			selected: 0,
			theme: 'dots',
			transitionEffect:'fade',
			showStepURLhash: false,
			toolbarSettings: {
							  //toolbarExtraButtons: [btnFinish, btnCancel]
							}
	});
	
})(jQuery);
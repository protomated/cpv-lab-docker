// @package     CPV Lab Pro
// @copyright   (C) Uptechvision Solutions. All rights reserved.
// @link        https://cpvlab.pro

$(document).ready(function(){
	initializeTooltips();
	initializePopovers();
    setTimeout(function(){
        $('.alert > button.close.autoclose:visible').parent().fadeOut();
    }, 2500);
    window.alert = function(message) {
        $('#modal-alert .content').text(message);
        $('#modal-alert').modal();
    };
    window.confirm = function(message, callback) {
        $('#modal-confirm-yes').off();
        $('#modal-confirm .content').text(message);
        $('#modal-confirm').modal();
        $('#modal-confirm-yes').click(function() {
            if (typeof callback != 'undefined') {
                $('#modal-confirm').modal('hide');
                callback();
            } else {
                console.log('provide callback as 2nd param to confirm() function (customized confirm())');
            }
        });
        return false;
    };
});

function StartInitialTour()
{
    appName = $('#hidAppName').length > 0 ? $('#hidAppName').val() : "CPV Lab";
    docCustomDomains = appName == "CPV Lab" ? "https://doc.cpvlab.pro/custom-tracking-domains.html" : "https://doc.cpvlab.pro/CPVOne/custom-tracking-domains-cpv-one.html";
    introJs().setOptions({
        steps: [{
            title: 'Welcome to ' + appName + '!',
            intro: 'Hello there! We are very happy to have you join the ' + appName + ' community! 🎉<br/><br/>Here is a quick tour of the tracker.'
        },
        {
            title: 'Define a tracking domain',
            element: document.querySelector('#Form1 > div.smooth-overflow > div > aside > ul > li:nth-child(8)'),
            intro: 'Setup a custom tracking domain for your tracking links from the Custom Domains page.<br/><br/>More details in our <a href="' + docCustomDomains + '" target="_blank">Online Documentation</a>.'
        },
        {
            title: 'Choose the networks',
            element: document.querySelector('#Form1 > div.smooth-overflow > div > aside > ul > li:nth-child(5)'),
            intro: 'Import the Traffic Sources and Affiliate Networks that you want to use from the Catalogs availabe in the Sources menu. We have more than 200+ networks already predefined.<br/><br/>More details in our <a href="https://doc.cpvlab.pro/traffic-sources-page.html" target="_blank">Online Documentation</a>.'
        },
        {
            title: 'Add your pages',
            element: document.querySelector('#Form1 > div.smooth-overflow > div > aside > ul > li:nth-child(6)'),
            intro: 'Define the landers and offers that you want to use in your campaign inside the LPs &amp; Offers menu.'
        },
        {
            title: 'Check sample campaigns',
            element: document.querySelector('#card-collapse8 > div > div'),
            intro: 'Take a look at the two sample campaigns already included. These are fully functional, so you can run some tests with the pages and see how everything works.'
        },
        {
            title: 'Setup your campaign',
            element: document.querySelector('#Form1 > div.smooth-overflow > div > nav > div > a'),
            intro: 'And now you are ready to setup your first campaign!<br/><br/>Choose from one of the 6 predefined <a href="https://doc.cpvlab.pro/campaign-menu.html" target="_blank">campaign layouts available</a>.'
        },
        {
            title: 'Check results',
            element: document.querySelector('#Form1 > div.smooth-overflow > div > aside > ul > li:nth-child(3)'),
            intro: 'Now it\'s time to check the results. Open the pages under Stats and Trends menu groups for different reports such as <a href="https://doc.cpvlab.pro/visitor-stats-page.html" target="_blank">Visitor Stats</a>, <a href="https://doc.cpvlab.pro/campaign-stats.html" target="_blank">Campaign Stats</a> or <a href="https://doc.cpvlab.pro/conversions-list.html" target="_blank">Conversions List</a>.'
        },
        {
            title: 'Run the tour again',
            element: document.querySelector('#Form1 > div.smooth-overflow > div > nav > ul > li:nth-child(4)'),
            intro: 'You can always re-run this Quick Tour from the top menu.'
        },
        {
            title: 'That\'s it!',
            intro: 'That concludes our quick tour! But there are many more features and pages to discover! <br/><br/>Feel free to contact us in the <a href="https://support.cpvlab.pro" target="_blank">Help Desk</a> for all your questions.'
        },
    ]
    }).start();
};
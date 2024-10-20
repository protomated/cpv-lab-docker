<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

{navigation pagename=$pagename}
{assign 'is_assets_minified' 0}
<head>

  <link rel="apple-touch-icon" sizes="180x180" href="{$root}apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="{$root}favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="{$root}favicon-16x16.png">
  <link rel="manifest" href="{$root}site.webmanifest">
  <link rel="mask-icon" href="{$root}safari-pinned-tab.svg" color="#5bbad5">
  <meta name="msapplication-TileColor" content="#da532c">
  <meta name="theme-color" content="#ffffff">
  
<meta name="robots" content="noindex, nofollow" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=1.0, minimum-scale=1.0, maximum-scale=1.0"/>
<title>{$navigationPageTitle|default:'CPV Lab Pro' nofilter}</title>

{if $is_assets_minified}
    <!--<link rel="stylesheet" type="text/css" href="style-orb/built.min.css?v=1126"/>-->
    <script type="text/javascript" src="lib/built-head.min.js?v=1126"></script>
{else}

    <!-- Splite theme -->
    <link rel="stylesheet" href="style-spl/plugins/bootstrap/css/bootstrap.min.css?v=1126"/>
    <link rel="stylesheet" type="text/css" href="style-spl/css/spl-style-full.css?v=1126"/>
    <link rel="stylesheet{if (!$darkmode)} alternate{/if}" type="text/css" href="style-spl/css/dark-spl-style.css?v=1126" linkscope="dark"/>

    <!--DataTables css-->
	<!--<link rel="stylesheet" href="style-spl/plugins/Datatable/css/dataTables.bootstrap4.css?v=1126"/>
	<link rel="stylesheet" href="style-spl/plugins/Datatable/css/buttons.bootstrap4.min.css?v=1126"/>-->
	<link rel="stylesheet" href="style-spl/plugins/Datatable/css/colReorder.dataTables.min.css?v=1126"/>

    <link rel="stylesheet" href="style-spl/css/icons.css?v=1126"/>
		
	<!--p-scrollbar css-->
	<!--<link rel="stylesheet" href="style-spl/plugins/p-scroll/perfect-scrollbar.css?v=1126"/>-->
	<!--<link rel="stylesheet" href="style-spl/plugins/toggle-menu/sidemenu.css?v=1126"/>-->
	<!--<link rel="stylesheet" href="style-spl/plugins/morris/morris.css?v=1126"/>-->

	<!--Toastr css-->
	<link rel="stylesheet" href="style-spl/plugins/toastr/build/toastr.css?v=1126"/>
	<link rel="stylesheet" href="style-spl/plugins/toaster/garessi-notif.css?v=1126"/>

    <!--Bootstrap-daterangepicker css-->
	<link rel="stylesheet" href="style-spl/plugins/bootstrap-daterangepicker/daterangepicker.css?v=1126"/>

	<!--Bootstrap-datepicker css-->
	<link rel="stylesheet" href="style-spl/plugins/bootstrap-datepicker/bootstrap-datepicker.css?v=1126"/>

    <!--iCheck css-->
    <link rel="stylesheet" href="style-spl/plugins/iCheck/flat/purple.css"/>
    <link rel="stylesheet{if (!$darkmode)} alternate{/if}" href="style-spl/plugins/iCheck/flat/dark-purple.css" linkscope="dark"/>

    <link rel="stylesheet" type="text/css" href="lib/jquery-ui-theme/smoothness/jquery-ui.min.css?v=1126" />
	<link rel="stylesheet" type="text/css" href="style-spl/css/jquery.contextMenu.css?v=1126" />

    <script type="text/javascript" src="style-spl/js/jquery.min.js?v=1126"></script>
    <script type="text/javascript" src="lib/jquery-ui.min.js?v=1126"></script>
    <script type="text/javascript" src="lib/utils.js?v=1126"></script>
    <script type="text/javascript" src="lib/utils-html.js?v=1126"></script>
    <script type="text/javascript" src="lib/utils-cmenu.js?v=1126"></script>
    <script type="text/javascript" src="lib/utils-ajax.js?v=1126"></script>

    <!--Sumoselect css-->
	<link rel="stylesheet" href="style-spl/plugins/sumoselect/sumoselect.css?v=1126"/>
    <link rel="stylesheet{if (!$darkmode)} alternate{/if}" href="style-spl/plugins/sumoselect/dark-sumoselect.css?v=1126" linkscope="dark"/>

    <!--Sidemenu css-->
	<link href="style-spl/plugins/horizontal-menu/dropdown-effects/fade-down.css?v=1126" rel="stylesheet"/>
	<link href="style-spl/plugins/horizontal-menu/webslidemenu.css?v=1126" rel="stylesheet"/>

    <link rel="stylesheet" type="text/css" href="style-spl/css/custom-style.css?v=1126"/>
    <link rel="stylesheet{if (!$darkmode)} alternate{/if}" type="text/css" href="style-spl/css/dark-custom-style.css?v=1126" linkscope="dark"/>

    <link rel="stylesheet" type="text/css" href="style-spl/css/horizontal-nav-custom.css?v=1126"/>
	<link rel="stylesheet{if (!$darkmode)} alternate{/if}" type="text/css" href="style-spl/css/dark-topmenu.css?v=1126" linkscope="dark"/>
	
    <!--Loading placeholders css-->
	<link rel="stylesheet" href="style-spl/css/placeholder-loading.min.css"/>
  
    <!--intro js tour css-->
	<link rel="stylesheet" href="style-spl/plugins/introjs/introjs.min.css?v=1126"/>
{/if}
</head>
<body class="app horizontal-navigation{if ($darkmode)} dark-mode{/if}">
{assign 'theme_table_classes' 'table table-striped table-bordered table-hover border-t0'}

<!--Header Style -->
<div class="wave -three"></div>

<!--loader -->
<div id="spinner"></div>

<form id="Form1" method="post" enctype="multipart/form-data">

<!--Smooth Scroll-->
<div class="smooth-overflow">

  <div class="main-wrapper">

      <div class="header">
        <!--Navigation-->
        <nav class="navbar navbar-expand-lg main-navbar" role="navigation">
            <a id="horizontal-navtoggle" class="animated-arrow hor-toggle"><span></span></a>

            <a class="header-brand" href="dashboard.php">
    			<img src="images/logo-white{$logoCurrent|default:''}.png?v=1126" class="header-brand-img" alt="CPV Lab Pro Logo"/>
    		</a>

            <div class="form-inline mr-auto d-none">
				<ul class="navbar-nav mr-2">
					<li><a href="#" data-toggle="search" class="nav-link nav-link d-none navsearch"><i class="fa fa-search"></i></a></li>
				</ul>
				<div class="search-element mr-3 d-none">
					<input class="form-control" type="search" placeholder="Search" aria-label="Search">
					<span class="Search-icon"><i class="fa fa-search"></i></span>
				</div>
			</div>
      {if $includeButtonNewCamapign|default:false}
      <a href="campaign-add.php" class="btn btn-info ml-5 btnNewCampaign"><i class="fa fa-plus btnNewCampaign"></i> New Campaign</a>
      {/if}

          <ul class="navbar-nav navbar-right ml-auto">
            <li class="dropdown dropdown-list-toggle d-none"><a href="#" data-toggle="dropdown" class="nav-link  nav-link-lg "><span class="badge badge-secondary nav-link-badge">6</span><i class="fa fa-bell-o"></i></a>
    							<div class="dropdown-menu dropdown-list dropdown-menu-right">
    								<div class="dropdown-header">Notifications
    									<div class="float-right">
    										<a href="#" class="text-white">View All</a>
    									</div>
    								</div>
    								<div class="dropdown-list-content">
    									<a href="#" class="dropdown-item">
    										<i class="fa fa-users text-primary"></i>
    										<div class="dropdown-item-desc">
    											<b>So many Users Visit your template</b>
    										</div>
    									</a>
    									<a href="#" class="dropdown-item">
    										<i class="fa fa-exclamation-triangle text-danger"></i>
    										<div class="dropdown-item-desc">
    											<b>Error message occurred....</b>
    										</div>
    									</a>
    									<a href="#" class="dropdown-item">
    										<i class="fa fa-users text-warning"></i>
    										<div class="dropdown-item-desc">
    											<b> Adding new people</b>
    										</div>
    									</a>
    									<a href="#" class="dropdown-item">
    										<i class="fa fa-shopping-cart text-success"></i>
    										<div class="dropdown-item-desc">
    											<b>Your items Arrived</b>
    										</div>
    									</a>
    									<a href="#" class="dropdown-item">
    										<i class="fa fa-comment text-primary"></i>
    										<div class="dropdown-item-desc">
    											<b>New Message received</b> <div class="float-right"><span class="badge badge-pill badge-danger badge-sm">67</span></div>
    										</div>
    									</a>
    									<a href="#" class="dropdown-item">
    										<i class="fa fa-users text-primary"></i>
    										<div class="dropdown-item-desc">
    											<b>So many Users Visit your template</b>
    										</div>
    									</a>
    								</div>
    							</div>
    						</li>

            <li class="dropdown dropdown-list-toggle d-block">
                <a href="javascript:;" class="nav-link nav-link-lg">
                    <i class="fe {if ($darkmode)}fe-sun{else}fe-moon{/if} d-inline-block" id="btnDarkMode" title="{if ($darkmode)}Light{else}Dark{/if} Mode"></i>
                </a>
              </li>
      
              <li class="dropdown dropdown-list-toggle d-none d-lg-block">
              <a href="javascript:;" class="nav-link nav-link-lg full-screen-link">
    						<i class="fa fa-expand " id="fullscreen-button" title="Fullscreen"></i>
    					</a>
            </li>

            <li class="dropdown">
              <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg d-flex">
                <span class="mr-3 mt-2 d-none d-lg-block ">
      						<span class="text-white">Hello,<span class="ml-1">{$loginUsername|default:''}</span></span>
      					</span>
      					<span>
                  <img src="style-spl/img/avatar/generic-avatar.png" alt="profile-user" class="rounded-circle w-32 mr-2">
                </span>
    					</a>

    					<div class="dropdown-menu dropdown-menu-right">
                <a href="javascript:;" class="dropdown-item" onclick="StartInitialTour()"><i class="fa fa-fast-forward mr-2"></i><span>Quick Tour</span></a>
                <a href="https://doc.cpvlab.pro" class="dropdown-item" target="_blank"><i class="fa fa-laptop mr-2"></i><span>Online Documentation</span></a>
    						<a href="https://support.cpvlab.pro/utils/CPVLabPro-User-Guide-110.pdf" class="dropdown-item" target="_blank"><i class="fa fa-file-pdf-o mr-2"></i> <span>PDF User Guide</span></a>
    						<a class="dropdown-item" href="https://www.youtube.com/@cpvlab" target="_blank"><i class="fe fe-video mr-2"></i><span>Video Tutorials</span></a>
    						<a class="dropdown-item" href="https://support.cpvlab.pro" target="_blank"><i class="fa fa-headphones mr-2"></i><span>Support Center</span></a>
                {if $iscldvrs|default:0}
                  <a class="dropdown-item" href="https://billing.stripe.com/p/login/9AQeWsa2Z32D8x2144" target="_blank"><i class="fe fe-user-check mr-2"></i><span>Billing Area</span></a>
                {else}
    						  <a class="dropdown-item" href="https://users.cpvlab.pro/" target="_blank"><i class="fe fe-user-check mr-2"></i><span>User Area</span></a>
                {/if}
    						<a class="dropdown-item" href="javascript:;" data-toggle="modal" data-target="#mdlreferral"><i class="fa fa-bullhorn mr-2"></i><span>Referral Program</span></a>
    						<div class="dropdown-divider"></div>

                            <div class="dropdown-item">
          				         <a href="https://www.facebook.com/CPVLabPro.Track/" class="font-16 mr-3" target="_blank"><i class="fa fa-facebook"></i></a>
          				         <a href="https://www.youtube.com/@cpvlab" class="font-16 mr-3" target="_blank"><i class="fa fa-youtube"></i></a>
                           <a href="https://twitter.com/CPVLabPro" class="font-16 mr-3" target="_blank"><i class="fa fa-twitter"></i></a>
                           <a href="https://www.linkedin.com/company/cpv-lab-pro" class="font-16" target="_blank"><i class="fa fa-linkedin"></i></a>
        			        </div>

                            <div class="dropdown-divider"></div>
                            <div class="dropdown-item">
                                <span class="font-14">Current Version:</span>
                                <span class="version">{$versionCurrent}</span>
                            </div>
                            <div class="dropdown-item">
                                <span class="font-14">Database Version:</span>
                                <span class="version">{$versionCurrentDatabase}</span>
                            </div>
                            <div class="dropdown-item">
                              <span class="font-14">Current Plan:</span>
                              <span class="version">{$planCurrent}</span>
                            </div>
                            {if !$iscldvrs|default:0}<div class="dropdown-item">
                                <span class="font-14">PHP Version:</span>
                                <span class="version">{$versionPhp}</span>
                            </div>
                            {/if}
                            <div class="dropdown-divider"></div>

    						{if isset($lastLogin) && isset($lastLoginString)}
                            <div class="dropdown-item font-14">
                                <span class="d-block mb-1">Last login:</span>
                                <span class="d-block mb-1"> {$lastLogin|default:''} </span>
                                <i><small>({$lastLoginString|default:''} Ago)</small></i>
                            </div>
                            <div class="dropdown-divider"></div>
    						{/if}

                            <a class="dropdown-item" href="{$loginPageUrl}?logout">
                                <i class="fe fe-log-out mr-2"></i>
                                <span>Logout</span>
                            </a>
    					</div>
    				</li>
          </ul>

        </nav>
        <!--/Navigation-->
    </div>

    <!-- Horizontal navigation -->
    <div class="horizontal-main hor-menu clearfix">
		<div class="horizontal-mainwrapper container-fluid clearfix">
			<nav class="horizontalMenu clearfix">
                {include file="menu_mega-horizontal.tpl"}
            </nav>
        </div>
    </div>

    <!-- App content -->
    <div class="container-fluid content-area">
				<section class="section">
          <div class="content-wrapper" data-date="{$smarty.now|date_format:"%Y"}>

            <div class="page-header">
                <h4 class="page-title">{$navigationPageTitle nofilter}</h4>
            </div>

            <div class="row" id="powerwidgets">
              <div class="col-md-12{* bootstrap-grid*}">
                {include file=$contenttemplate}
              </div>
            </div>

          </div>
        </section>
    </div> <!-- end app-content -->


  </div> <!-- main-wrapper -->
</div>
<!--/Smooth Scroll-->

<!--Modals-->

<!--Delete Item Modal-->
<div class="modal" id="delete-widget">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <i class="fa fa-lock"></i> </div>
      <div class="modal-body text-center">
        <p>Are you sure to delete this widget?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" id="trigger-deletewidget-reset">Cancel</button>
        <button type="button" class="btn btn-primary" id="trigger-deletewidget">Delete</button>
      </div>
    </div>
  </div>
</div>

<!--Sign Out Dialog Modal-->
<div class="modal" id="signout">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <i class="fa fa-lock"></i> </div>
      <div class="modal-body text-center">Are You Sure Want To Sign Out?</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" id="yesigo">Ok</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

{if $includeModalTestEmail|default:false}
	<!--Test Email Modal-->
	{include file="partModalEmailCheck.tpl"}
{/if}

{if $includeModalPostbacks|default:false}
	<!--DirectTraffic / PostbackURL Modal-->
	{include file="partModalDirectTrafficCode.tpl"}
	{include file="partModalPostbackURL.tpl"}
{/if}

{if $includeModalQrCode|default:false}
	<!--QrCode Modal-->
	{include file="partQrCodeModal.tpl"}
{/if}

{if $includeModalInlineChart|default:false}
	<!--Inline Chart Modal-->
	{include file="partModalInlineChart.tpl"}
{/if}

{if $includeModalPredefTS|default:false}
	<!--Predefined Traffic Sources Modal-->
	{include file="partModalPredefTrafficSources.tpl"}
{/if}

{if $includeModalPredefOS|default:false}
	<!--Predefined Offer Sources Modal-->
	{include file="partModalPredefOfferSources.tpl"}
{/if}

{if $includeModalCloneCampaign|default:false}
	<!--Clone Campaign Modal-->
	{include file='partClonePopup.tpl'}
{/if}

{if $includeModalApiIntegrationDetails|default:false}
	<!--API Integration Details Modal-->
	{include file='partModalApiIntegrationDetails.tpl'}
{/if}

{if $includeModalPassTsPostback|default:false}
  <!--Pass TS Postbacks Modal-->
  {include file="partModalPassTsPostback.tpl"}
{/if}

{if $includeModalAddCampaignDirectLink|default:false}
  <!--Add Campaign Direct Link & Quick Setup Modal-->
  {include file="partModalAddCampaignDirectLink.tpl"}
{/if}

{if $includeModalQkExtraTokens|default:false}
  <!--Quick Setup Extra Tokens Modal-->
  {include file="partModalQkExtraTokens.tpl"}
{/if}

{if $includeModalTestCustomDomains|default:false}
	<!--Test Custom Domain Modal-->
	{include file="partTestCustomDomain.tpl"}
{/if}

{include file='partDeletePopup.tpl'}
{include file='partReferralPopup.tpl'}

<div class="modal fade" id="modal-alert" data-easein="wobble" data-easeout="lightSpeedOut" tabindex="-1" data-backdrop="static">
  <div class="modal-dialog modal-sm modal-dialog-centered">
    <div class="modal-content">
        <div class="modal-header border-bottom-0 pb-0">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body text-center">
            <i class="fa fa-warning text-warning"></i>
            <p class="content mt-3"></p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal">Okay</button>
        </div>
    </div>
  </div>
</div>

<div class="modal fade" id="modal-confirm" data-easein="wobble" data-easeout="lightSpeedOut" tabindex="-1" data-backdrop="static">
  <div class="modal-dialog modal-sm modal-dialog-centered">
    <div class="modal-content">

      <div class="modal-body text-center">
          <h4 class="text-warning mt-3 mb-3">
              <i class="fa fa-warning"></i>
          </h4>
          <p class="content h-auto p-0 mw-100 ml-0 mr-0"></p>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-danger" id="modal-confirm-yes">Yes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
      </div>
    </div>
  </div>
</div>

    <!-- Back to top -->
	<a href="#top" id="back-to-top" ><i class="fa fa-angle-up"></i></a>

  <input type="hidden" id="hidAppName" value="{$appname|default:'CPV Lab'}" />
  <input type="hidden" id="hidDisplayCurrencySign" value="{$displayCurrencySign|default:'$'}" />
{if $is_assets_minified}
    <script type="text/javascript" src="lib/built.min.js?v=1126"></script>
{else}
    <!--Scripts-->
	<script type="text/javascript" src="lib/jquery.contextMenu.js?v=1126"></script>
    <script type="text/javascript" src="lib/utils-charts.js?v=1126"></script>
    <script type="text/javascript" src="Charts/jquery.flot.js?v=1126"></script>
    <script type="text/javascript" src="Charts/jquery.flot.time.js?v=1126"></script>
    <script type="text/javascript" src="Charts/jquery.flot.categories.js?v=1126"></script>
    <script type="text/javascript" src="Charts/jquery.flot.orderBars.js?v=1126"></script>
    <script type="text/javascript" src="Charts/jquery.flot.tooltip.js?v=1126"></script>
    <script type="text/javascript" src="Charts/jquery.flot.resize.js?v=1126"></script>
    <!-- App on document ready JS -->
    <script type="text/javascript" src="lib/utils-ready.js?v=1126"></script>

	<!--Moment js-->
	<script src="style-spl/plugins/moment/moment.min.js?v=1126"></script>

    <!--DataTables js-->
	<script src="style-spl/plugins/Datatable/js/jquery.dataTables.min.js?v=1126"></script>
	<script src="style-spl/plugins/Datatable/js/dataTables.bootstrap4.min.js?v=1126"></script>
	<script src="style-spl/plugins/Datatable/js/dataTables.colReorder.min.js?v=1126"></script>
	<script src="style-spl/plugins/Datatable/js/datetime-moment.js?v=1126"></script>

	<!--popper js-->
	<script src="style-spl/js/popper.js?v=1126"></script>

    <script type="text/javascript" src="style-spl/plugins/bootstrap/js/bootstrap.min.js?v=1126"></script>

    <!--Tooltip js-->
	<!--<script src="style-spl/js/tooltip.js?v=1126"></script>-->

    <!--Sidemenu js-->
	<!--<script src="style-spl/plugins/toggle-menu/sidemenu.js?v=1126"></script>-->

	<!--Toastr js-->
	<script src="style-spl/plugins/toastr/build/toastr.min.js?v=1126"></script>
	<script src="style-spl/plugins/toaster/garessi-notif.js?v=1126"></script>

    <!--<script src="style-spl/plugins/morris/morris.min.js?v=1126"></script>
	<script src="style-spl/plugins/morris/raphael.min.js?v=1126"></script>-->

	<!--p-scrollbar js-->
   <!--<script src="style-spl/plugins/p-scroll/perfect-scrollbar.js?v=1126"></script>-->

    <!--Bootstrap-daterangepicker js-->
	<script src="style-spl/plugins/bootstrap-daterangepicker/daterangepicker.js?v=1126"></script>

	<!--Bootstrap-datepicker js-->
	<script src="style-spl/plugins/bootstrap-datepicker/bootstrap-datepicker.js?v=1126"></script>

    <!--iCheck js-->
	<script src="style-spl/plugins/iCheck/icheck.min.js?v=1126"></script>

    <!--forms js-->
	<script src="style-spl/js/forms.js?v=1126"></script>

    <!--Advanced Froms -->
	<script src="style-spl/js/advancedform.js?v=1126"></script>

    <!--Datatable js-->
	<script src="style-spl/js/datatable.js?v=1126"></script>

    <!--Sumoselect js-->
	<script src="style-spl/plugins/sumoselect/jquery.sumoselect.js?v=1126"></script>

	<script src="style-spl/js/formelementadvnced.js?v=1126"></script>

    <!--Jquery.knob js-->
	<script src="style-spl/plugins/othercharts/jquery.knob.js?v=1126"></script>

    <!--Jquery.sparkline.min js-->
	<script src="style-spl/plugins/othercharts/jquery.sparkline.min.js?v=1126"></script>
	<script src="style-spl/js/othercharts.js?v=1126"></script>

  <!--Form Wizard js-->
  <script src="style-spl/plugins/formwizard/jquery.smartWizard.js?v=1126"></script>
  <script src="style-spl/plugins/formwizard/fromwizard.js?v=1126"></script>

  <!--intro js tours js-->
  <script src="style-spl/plugins/introjs/intro.min.js?v=1126"></script>

    <!--Widgets js-->
	<!--<<script src="style-spl/js/widgets.js?v=1126"></script>-->

    <!--Apexchart js-->
	<!--<script src="style-spl/js/apexcharts.js?v=1126"></script>-->

	<!--Sparkline js-->
	<!--<script src="style-spl/js/sparkline.js?v=1126"></script>-->

    <!--Flot js-->
	<!--<script src="style-spl/plugins/flot/jquery.flot.js?v=1126"></script>
    <script src="style-spl/plugins/flot/jquery.flot.fillbetween.js?v=1126"></script>
    <script src="style-spl/plugins/flot/jquery.flot.pie.js?v=1126"></script>
	<script src="style-spl/js/flot.js?v=1126"></script>-->

    <!-- Chart.js -->
	<!--<script src="style-spl/plugins/Chart.js/dist/Chart.bundle.js?v=1126"></script>-->

    <!--Barcharts js-->
	<!--<script src="style-spl/js/barcharts.js?v=1126"></script>-->

    <!--Horizontalmenu js-->
	<script src="style-spl/plugins/horizontal-menu/webslidemenu.js?v=1126"></script>

    <!--Scripts js-->
    <script src="style-spl/js/scripts-full.js?v=1126"></script>

{/if}
</form>
</body>
</html>

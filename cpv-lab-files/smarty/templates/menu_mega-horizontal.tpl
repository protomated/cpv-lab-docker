    <a class="header-brand" href="dashboard.php">
        <img id="imgLogoHor" src="images/logo-{if (!$darkmode)}color{else}white{/if}{$logoCurrent|default:''}.png?v=110" class="header-brand-img" alt="CPV Lab Pro Logo">
    </a>

    <ul class="horizontalMenu-list">
      <!-- Mega Menu -->

      {foreach $navigationMenu as $menuItem}
          <li aria-haspopup="true">
              <a href="{$menuItem.url}" {if isset($menuItem.subMenu)}data-toggle="slide"{/if} class="sub-icon {if $menuItem.isActive}active{/if}">
                  <i class="side-menu__icon {$menuItem.icon}"></i>&nbsp;
                  <span class="side-menu__label">{$menuItem.title nofilter}</span>
                  <i class="angle fa fa-angle-down"></i>
              </a>
              {if isset($menuItem.subMenu)}
                  <ul class="sub-menu" role="menu" id="ul-topnav-submenu-{$menuItem.id}">
                      {foreach $menuItem.subMenu as $submenuItem}
                          <li aria-haspopup="true">
                              <a href="{$submenuItem.url}">
                                  <i class="{$submenuItem.icon}"></i>&nbsp;
                                  <span> {$submenuItem.title nofilter} </span>
                              </a>
                          </li>
                      {/foreach}
                  </ul>
              {/if}
              <!-- end dropdown-menu -->
          </li>
      {/foreach}
      <!-- /List elements Examples-->
    </ul>
    <!-- end nav navbar-nav -->

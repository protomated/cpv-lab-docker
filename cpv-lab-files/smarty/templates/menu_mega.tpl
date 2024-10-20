    <ul class="side-menu">
      <!-- Mega Menu -->

      {foreach $navigationMenu as $menuItem}
          <li class="slide {if $menuItem.isActive}active{/if}">
              <a href="{$menuItem.url}" id="sld{$menuItem.id}" {if isset($menuItem.subMenu)}data-toggle="slide"{/if} class="side-menu__item">
                  <i class="side-menu__icon {$menuItem.icon}"></i>&nbsp;
                  <span class="side-menu__label">{$menuItem.title nofilter}</span>
                  <i class="angle fa fa-angle-right"></i>
              </a>
              {if isset($menuItem.subMenu)}
                  <ul class="slide-menu" role="menu" id="ul-topnav-submenu-{$menuItem.id}">
                      {foreach $menuItem.subMenu as $submenuItem}
                          <li class="{if $submenuItem.isActive}active{/if}">
                              <a class="slide-item {if $submenuItem.isActive}active{/if}" href="{$submenuItem.url}">
                                  <i class="{$submenuItem.icon}" {if $submenuItem.icon == 'fa fa-mobile'}style="margin-left:3px;"{/if}></i>&nbsp;
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

{if $navigationCustomSlide|default:false}
    <script>
      $(document).ready(function(){
        $('#{$navigationCustomSlide}').click();
      });
    </script>
{/if}
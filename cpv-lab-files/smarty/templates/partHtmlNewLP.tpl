{if is_null($i)}
	{assign var="i" value='tmpCount'}
	{assign var="suffix" value='tmpSuffix'}
	{assign var="defaultID" value='tmpDefaultID'}
{else}
	{assign var="defaultID" value=0}
	{if $destinationToShow==1 && $i==0}
		{assign var="defaultShare" value=100}
	{/if}
{/if}
{if !isset($pathID) || is_null($pathID)}
	{assign var="pathID" value=''}
{/if}
{if $pathID !== ''}
	{assign var=destinationObject value=$destinationDetails[$pathID][$i]|default:null}
{else}
	{assign var=destinationObject value=$destinationDetails[$i]|default:null}
{/if}
<div id="dlp{$suffix}{$i}" class="lp-offer-item">
	<input type="hidden" name="hidLandingIDLP{$suffix}{$i}" id="hidLandingIDLP{$suffix}{$i}" value="{$destinationObject["DestinationID"]|default:0}"/>
	<div class="row align-items-end mb-lg-3">
		<div class="col-lg-4 col-sm-6">
			<div class="form-group mb-lg-0">
				<label>Select Predefined Landing Page<img src="images/spinner.gif" alt="Working..." id="spnLP{$suffix}{$i}" class="ml-4" style="display:none"/></label>
				<select name="ddlPredefLP{$suffix}{$i}" id="ddlPredefLP{$suffix}{$i}" class="form-control" onchange="loadPredefLp('LP{$suffix}{$i}')">
					{html_options options=$predefLpsArray selected=$destinationObject["PredefLpID"]|default:0}
				</select>
			</div>
		</div>

		<div class="col-lg-4 col-sm-6">
			<div class="form-group mb-lg-0">
				<label>LP Name</label>
				<input type="text" class="form-control" name="txtPageNameLP{$suffix}{$i}" id="txtPageNameLP{$suffix}{$i}" value="{$destinationObject["Offer"]|default:''}"/>
			</div>
		</div>

		<div class="col-lg-2 offset-lg-0 mb-4 mb-lg-2 col-md-3 offset-md-6 col-6 max-w-lg-140">
			<label class="custom-switch">
				<input type="checkbox" class="custom-switch-input" name="chkInactiveLP{$suffix}{$i}" id="chkInactiveLP{$suffix}{$i}" onclick="clickInactiveLP(this.checked, 'LP{$suffix}{$i}')" {if $destinationObject["Active"]|default:1}checked="checked"{/if}/>
				<span class="custom-switch-indicator"></span>
                <span class="custom-switch-description">Active</span>
			</label>
		</div>
		<div class="col-lg-1 col-md-1 mb-3 mb-lg-0 col-2 text-center">
			<button class="btn btn-sm btn-primary badge" type="button" data-toggle="tooltip" data-placement="right" title="" data-original-title="Delete" onclick="clickDeleteLP('LP{$suffix}{$i}')"><i class="fa fa-trash"></i></button>
		</div>
		{if $showDirectTrafficIcon|default:true}
		<div class="col-lg-1 col-md-2 mb-3 mb-lg-0 col-4">
			<span class="btn btn-outline-info generateCodeHandler w-100 max-w-lg-110 d-flex align-items-center justify-content-center" rel="modaldirecttraffic" data-toggle="tooltip" data-placement="right" title="" data-original-title="Get Tracking Code" data-item="LP{$suffix}{$i}"><i class="fa fa-code"></i></span>
		</div>
		{/if}
	</div>

	<div class="row">

		<div class="col-lg-8 col-md-6">
			<div class="form-group">
				<label>URL</label>
				<input type="text" class="form-control" name="txtPageUrlLP{$suffix}{$i}" id="txtPageUrlLP{$suffix}{$i}" placeholder="https://" value="{$destinationObject["Url"]|default:''}" autocomplete="off"/>
			</div>
		</div>

		<div class="col-lg-2 col-md-3 col-6 max-w-lg-140">
			<div class="form-group">
				<label>ID</label>
				<input type="text" class="form-control max-w-lg-110" name="txtPageIDLP{$suffix}{$i}" id="txtPageIDLP{$suffix}{$i}" value="{$destinationObject["LandingPageID"]|default:$defaultID}" onblur="validateInt(this, 0)"/>
			</div>
		</div>

		<div class="col-lg-2 col-md-3 col-6">
			<div class="form-group">
				<label>Share %</label>
				<input type="text" class="form-control max-w-lg-110" name="txtShareLP{$suffix}{$i}" id="txtShareLP{$suffix}{$i}" value="{$destinationObject["Share"]|default:$defaultShare|default:0}" onblur="validateInt(this, 0, 100)"/>
			</div>
		</div>
	</div>
</div>

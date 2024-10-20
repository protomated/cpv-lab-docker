{if is_null($i)}
	{assign var="i" value='tmpCount'}
	{assign var="defaultID" value='tmpDefaultID'}
{else}
	{assign var="defaultID" value=0}
	{if $destinationToShow==1 && $i==0}
		{assign var="defaultShare" value=100}
	{/if}
{/if}
<div id="dao{$i}" class="lp-offer-item">
	<input type="hidden" name="hidLandingIDAfter{$i}" id="hidLandingIDAfter{$i}" value="{$destinationDetailsTrack[$i]["DestinationID"]|default:0}" />
	<div class="row align-items-end mb-lg-3">
		<div class="col-lg-4 col-sm-6">
			<div class="form-group mb-lg-0">
				<label>Select Predefined After Opt-In</label><img src="images/spinner.gif" alt="Working..." id="spnAfter{$i}" class="ml-4" style="display:none"/></label>
				<select name="ddlPredefAfter{$i}" id="ddlPredefAfter{$i}" class="form-control" onchange="loadPredefLp('After{$i}')">
					{html_options options=$predefLpsArray selected=$destinationDetailsTrack[$i]["PredefLpID"]|default:0}
				</select>
			</div>
		</div>

		<div class="col-lg-4 col-sm-6">
			<div class="form-group mb-lg-0">
				<label>LP Name</label>
				<input type="text" class="form-control" name="txtPageNameAfter{$i}" id="txtPageNameAfter{$i}" value="{$destinationDetailsTrack[$i]["Offer"]|default:''}"/>
			</div>
		</div>

		<div class="col-lg-2 offset-lg-0 mb-4 mb-lg-2 col-md-3 offset-md-6 col-6 max-w-lg-140">
			<label class="custom-switch">
				<input type="checkbox" class="custom-switch-input" name="chkInactiveAfter{$i}" id="chkInactiveAfter{$i}" onclick="clickInactiveLP(this.checked, 'After{$i}')" {if $destinationDetailsTrack[$i]["Active"]|default:1}checked="checked"{/if}/>
				<span class="custom-switch-indicator"></span>
                <span class="custom-switch-description">Active</span>
			</label>
		</div>

		<div class="col-lg-1 col-md-1 mb-3 mb-lg-0 col-2 text-center">
			<button class="btn btn-sm btn-primary badge" type="button" data-toggle="tooltip" data-placement="right" title="" data-original-title="Delete" onclick="clickDeleteAfter('After{$i}')"><i class="fa fa-trash"></i></button>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-8 col-md-6">
			<div class="form-group">
				<label>Url</label>
				<input type="text" class="form-control" name="txtPageUrlAfter{$i}" id="txtPageUrlAfter{$i}" placeholder="https://" value="{$destinationDetailsTrack[$i]["Url"]|default:''}"/>
			</div>
		</div>

		<div class="col-lg-2 col-md-3 col-6 max-w-lg-140">
			<div class="form-group">
				<label>ID</label>
				<input type="text" class="form-control max-w-lg-110" name="txtPageIDAfter{$i}" id="txtPageIDAfter{$i}" value="{$destinationDetailsTrack[$i]["LandingPageID"]|default:$defaultID}" onblur="validateInt(this, 0)"/>
			</div>
		</div>

		<div class="col-lg-2 col-md-3 col-6">
			<div class="form-group">
				<label>Share %</label>
				<input type="text" class="form-control max-w-lg-110" name="txtShareAfter{$i}" id="txtShareAfter{$i}" value="{$destinationDetailsTrack[$i]["Share"]|default:$defaultShare|default:0}" onblur="validateInt(this, 0, 100)"/>
			</div>
		</div>
	</div>
</div>

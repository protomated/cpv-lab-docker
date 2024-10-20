{if is_null($k)}
	{assign var="k" value='tmpCount'}
	{assign var="optionNumber" value='tmpCntPlus'}
{else}
	{assign var="optionNumber" value=$k+1}
{/if}
<div id="partEml{$k}" class="email-item">
	<div class="email-header form-group mb-3">
		<label class="font-weight-bold mb-0 custom-color">
			E-MAIL {$optionNumber}
		</label>
	</div>

	<div class="form-horizontal mb-2">
		<div class="row">
			<div class="col-lg-3">
				<div class="form-group">
					<label>No. of Emails Sent</label>
					<input type="text" name="txtSent{$k}" id="txtSent{$k}" value="{if isset($destinationDetails[$k][0]["Sent"])}{$destinationDetails[$k][0]["Sent"]}{elseif isset($offerDetails[$k][0]["Sent"])}{$offerDetails[$k][0]["Sent"]}{else}0{/if}" class="form-control" onblur="validateInt(this, 0)"/>
				</div>
			</div>
			<div class="col-lg-5 col-md-6 d-none d-md-block">&nbsp;</div>
			<div class="col-lg-2 col-md-3 max-w-lg-140 d-none d-md-block">&nbsp;</div>

			<div class="col-lg-2 col-md-3 col-6 offset-6 offset-md-0">
				<div class="form-group">
					<label>Email #</label>
					<input type="text" value="{$optionNumber}" class="form-control max-w-lg-110" readonly="readonly"/>
				</div>
			</div>
		</div>
	</div>
	<div id="divLandingPages{$k}" {if $destinationIndex != 1}style="display:none"{/if}>
		<p class="font-weight-bold position-absolute">Landing Pages in Email {$optionNumber}</p>
		{include file='partLPSection.tpl'}
		{include file='partHtmlNewEmailButtonsLP.tpl'}
	</div>
	<div class="mt-4 pt-2">
		<p class="font-weight-bold position-absolute">Offers in Email {$optionNumber}</p>
		{include file='partOfferSection.tpl'}
		{include file='partHtmlNewEmailButtonsOffer.tpl'}
	</div>
</div>

<!-- Modal for Referral Program-->
<div class="modal fade" id="mdlreferral" tabindex="-1" role="dialog" aria-labelledby="mdlreferralLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="mdlreferralLabel">Earn Money with our Referral Program</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<p class="mb-3">Refer CPV One and CPV Lab to friends and earn money when they signup.</p>
				<p class="mb-3">Use the <b>referral links below</b> and share them on email, website, social media or any other method.</p>
				<p class="mb-3">Each new CPV One and CPV Lab license purchased from your links will give you <b>20% recurring commission</b>.<br/>
					You can earn up to $935 from a single sale!</p>
				{if $referralLinkOne|default:''}
					<b>CPV One Referral Link:</b><br/>
					<a href="{$referralLinkOne}" target="_blank" class="referralLink">{$referralLinkOne}</a>
					<br/><br/>
				{/if}
				{if $referralLink|default:''}
					<b>CPV Lab Referral Link:</b><br/>
					<a href="{$referralLink}" target="_blank" class="referralLink">{$referralLink}</a>
				{/if}
				{if !$referralLinkOne|default:'' && !$referralLink|default:''}
					<b>Access the <a href="https://users.cpvlab.pro/usersc/refer-to-friend.php" target="_blank">User Area</a> 
						to find your unique referral link.</b>
				{/if}
				<br/><br/>
				<p>Complete details about the Referral Program can be found 
					<a href="https://users.cpvlab.pro/usersc/cpvlabpro-affiliate-program.pdf" target="_blank">here</a>.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- Modal closed -->
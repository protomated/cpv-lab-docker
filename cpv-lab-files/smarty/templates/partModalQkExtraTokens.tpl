<div class="modal fade" id="tokensModal" tabindex="-1" role="dialog" aria-labelledby="tokensModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="tokensModalLabel">Tracking Tokens from the Traffic Source</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
                

                <div class="tokens-form">

                    <div class="row font-weight-bold d-none d-xl-flex mb-xl-2">
                        <div class="col-xl-1 col-width-10 pr-md-2">&nbsp;</div>
                        <div class="col-xl-2 col-width-10">&nbsp;</div>
                        <div class="col-xl-3 text-center pr-md-2 pl-xl-2">Name</div>
                        <div class="col-xl-3 text-center pr-md-1">Parameter</div>
                        <div class="col-xl-3 text-center pr-md-1">Placeholder</div>
                    </div>

                    {include file='partCtrlCampKeywordToken.tpl'}
                    {include file='partCtrlCampCostToken.tpl'}
                    {include file='partCtrlCampTsHiddenToken2.tpl'}
                    <div id="divAdToken">
                        {include file='partCtrlCampAdToken.tpl'}
                    </div>
                    
                    <div id="divExtraTokens">
                        {if $campaignTypeStr != ''}
                            {include file='partExtraTokensSectionDiv.tpl' displayPredefinedTokens=true}
                        {else}
                            {include file='partExtraTokensSectionDiv.tpl' displayPredefinedTokens=false}
                        {/if}
                    </div>
                </div>

                
			</div>
		</div>
	</div>
</div>
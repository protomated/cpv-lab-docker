<div class="card" id="wdgRedirectProfilesModify">

    <a name="redprof" class="fixanchor"></a>
    
    <div class="card-header">
        <div class="float-right">
          <a data-collapse="#card-redirect-profile" class="btn btn-icon d-table-cell">
            <i class="ion ion-minus"></i>
          </a>
        </div>
        <h4>Add Redirect Profile&nbsp;{include file='partTooltip.tpl' tooltipID=29}<img src="images/spinner.gif" alt="Working..." id="spinr" class="ml-4" style="display:none;"/></h4>
    </div>

    <div class="collapse show" id="card-redirect-profile">
        <div class="card-body">
			 {if $showupdstobj.redirectprofiles|default:0}{include file='partUpdPage.tpl' name='Redirect Profiles'}{/if}
    		<div class="alert alert-success" style="display:none" id="divMessageRedirectProfile">
    			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><i class="fa fa-times-circle"></i></button>
    			<span id="spnMessageRedirectProfile"></span>
    		</div>

            <div class="row">
                <div class="col-xl-6">
                    <div class="form-group">
                        <label>Profile Name</label>
                        <input type="text" name="txtProfileName" id="txtProfileName" class="form-control" value=""/>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-6 col-sm-9">
                    <div class="form-group">
                        <label>Operator to apply between conditions</label>
                        <div class="mt-1">
                            <label for="radOperatorAnd" class="mr-3">
                                <input type="radio" class="flat-purple" name="radOperator" id="radOperatorAnd" value="1"/>
                                AND
                            </label>

                            <label for="radOperatorOr">
                                <input type="radio" class="flat-purple" name="radOperator" id="radOperatorOr" value="0" checked="checked"/>
                                OR
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col-lg-2 col-sm-3">
                    <label class="custom-switch mt-xl-4 pt-2">
                        <input type="checkbox" class="custom-switch-input" name="chkActive" id="chkActive" checked="checked"/>
                        <span class="custom-switch-indicator"></span>
                        <span class="custom-switch-description">Active</span>
                    </label>
                </div>
            </div>

            <div class="row">
                <div class="col-xl-7 container-if">
                    <h4 class="mt-4 mb-4">&quot;IF&quot; - select redirect conditions<img src="images/spinner.gif" alt="Working..." id="spinrc" class="ml-4" style="display:none;"/></h4>
                    <div id="divConditions">
                        {for $i=0 to $countConditions-1}
    						{include file='partHtmlRedirectProfile.tpl'}
                        {/for}
                    </div>
                    <div class="padding-10px">
                        <a href="javascript:;" onclick="addRedirectCondition()" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i>&nbsp;&nbsp;add condition</a>
                    </div>
                    <input type="hidden" name="hidConditionsToShow" id="hidConditionsToShow" value="{$countConditions}" />
    				<div id="divHtmlNewRedirectProfile" class="d-none">{include file='partHtmlRedirectProfile.tpl' i=null}</div>
                </div>

                <div class="col-xl-5 container-then">
                    <h4 class="mt-4 mb-4">&quot;THEN&quot; - select redirect destination</h4>

                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">

                                <div class="mt-lg-1">

                                    <label for="radOptionLP" class="mr-3">
                                        <input type="radio" class="flat-purple" name="radRedirectProfile" id="radOptionLP" value="1" checked="checked"/>
                                        LP
                                    </label>

                                    <label for="radOptionOffer" class="mr-3">
                                        <input type="radio" class="flat-purple" name="radRedirectProfile" id="radOptionOffer" value="2"/>
                                        Offer
                                    </label>

                                    <label for="radOptionLPandOffer" class="mr-3">
                                        <input type="radio" class="flat-purple" name="radRedirectProfile" id="radOptionLPandOffer" value="3"/>
                                        LP and Offer
                                    </label>

                                    <label for="radOptionURL" class="mr-3">
                                        <input type="radio" class="flat-purple" name="radRedirectProfile" id="radOptionURL" value="4"/>
                                        URL
                                    </label>
                                    
                                    {if $campaignTypeID == 5}
                                    <label for="radOptionPath">
                                        <input type="radio" class="flat-purple" name="radRedirectProfile" id="radOptionPath" value="5"/>
                                        Path
                                    </label>
                                    {/if}

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        {if $campaignTypeID == 5}
                            <div class="col-xl-12 col-sm-6 redtype-elem redtype-elem-5">
                                <div class="form-group">
                                    <label>Redirect to Path</label>
                                    <select name="ddlPaths" id="ddlPaths" class="form-control">
                                        {html_options options=$pathsArray selected=0}
                                    </select>
                                </div>
                            </div>
                        {/if}
                        <div class="col-xl-12 col-sm-6 redtype-elem redtype-elem-1 redtype-elem-3">
                            <div class="form-group">
                                <label>Redirect to LP</label>
                                <select name="ddlLps" id="ddlLps" class="form-control">
                                    {html_options options=$lpsArray selected=0}
                                </select>
                            </div>
                        </div>
                        <div class="col-xl-12 col-sm-6 redtype-elem redtype-elem-2 redtype-elem-3">
                            <div class="form-group">
                                <label>Redirect to Offer</label>
                                <select name="ddlOffers" id="ddlOffers" class="form-control">
                                    {html_options options=$offersArray selected=0}
                                </select>
                            </div>
                        </div>
                        <div class="col-xl-12 col-sm-6 redtype-elem redtype-elem-4">
                            <div class="form-group mb-4">
                                <label>Redirect to URL</label>
                                <input type="text" name="txtRedirectUrl" id="txtRedirectUrl" class="form-control" value=""/>
                            </div>
                        </div>
                    </div>

                    <button name="btnSave_x" {if $showupdstobj.redirectprofiles|default:0}disabled="disabled"{else}onclick="ajaxSaveRedirectProfile(); return false"{/if} class="btn btn-primary mr-3">Save</button>

                    <button name="btnCancel" onclick="cleanRedirectProfile(); return false" class="btn btn-secondary">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card" id="wdgRedirectProfilesCurrent">
    <div class="card-header">
        <div class="float-right">
          <a data-collapse="#card-redirect-profiles" class="btn btn-icon d-table-cell">
            <i class="ion ion-minus"></i>
          </a>
        </div>
        <h4>Current Redirect Profiles<img src="images/spinner.gif" alt="Working..." id="spinrl" class="ml-4" style="display:none;"/></h4>
    </div>

    <div class="collapse show" id="card-redirect-profiles">
        <div class="card-body" id="divRedirectProfilesList"></div>
    </div>
</div>

<input type="hidden" id="hidRedirectProfileEditID" value="0"/>

{if !$showupdstobj.redirectprofiles|default:0}
<script type="text/javascript">
	{literal}
		$(document).ready(function () {
			$('.conditionTypeBox').each(function () {
				ajaxChangeConditionType($get($(this).attr('id')));
			});
			ajaxLoadRedirectProfilesList();
		});
	{/literal}
</script>
{/if}

<script type="text/javascript">
    {literal}
        function prepare_redtype_elems(selected_type) {
            if (selected_type == null ) {
                selected_type = 1;
            }
            $('.redtype-elem').hide();
            $('.redtype-elem-'+selected_type).show();
            $("input[name=radRedirectProfile][value="+selected_type+"]").prop('checked', true);
            $("input[name=radRedirectProfile]").iCheck('update');
        }
        $(document).ready(function () {
            $('body').on('change', 'input[type=radio][name="radRedirectProfile"]', function() {
                prepare_redtype_elems(this.value);
            });

            {/literal}prepare_redtype_elems(1);{literal}

        });
    {/literal}
</script>

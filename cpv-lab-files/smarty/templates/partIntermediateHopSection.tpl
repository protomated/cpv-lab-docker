<div class="form-horizontal" id="sectionintermediatehop">
	<div id="dofIntermediateHop" class="lp-offer-item">
        <div class="row align-items-end mb-lg-3">
            <div class="col-12">
                <div class="form-group">
                    <label>URL</label>
                    <input name="txtIntermediateHopUrl" id="txtIntermediateHopUrl" placeholder="https://" type="text" class="form-control" value="{$campaignDetails.IntermediateHopUrl|default:''}" autocomplete="off" onblur="ajaxCheckIntermediateHop()"/>
                </div>
            </div>
            <div class="col-12">
                <span id="spnIntermediateHopCheck" class="text-danger font-weight-bold"></span>
            </div>
        </div>
    </div>
</div>
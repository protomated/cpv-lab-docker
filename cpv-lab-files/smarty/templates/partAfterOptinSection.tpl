<div class="card-header">
    <div class="float-right">
      <a data-collapse="#card-after-opt-in" class="btn btn-icon d-table-cell">
        <i class="ion ion-minus"></i>
      </a>
    </div>
    <h4>After Opt-In</h4>
</div>

<div class="collapse show" id="card-after-opt-in">
    <div class="card-body">

        <div class="form-horizontal">
            <div class="row mb-3">
                <div class="col-lg-8 col-md-6 d-none d-md-block">&nbsp;</div>
        		<div class="col-lg-2 col-md-3 max-w-lg-140 d-none d-md-block">&nbsp;</div>
                <div class="col-lg-2 col-md-3 col-6 offset-6 offset-md-0">
                    <div class="evenDiv">
                        <button type="button" onclick="evenShares('After')" class="btn btn-primary w-100 max-w-lg-110" data-toggle="tooltip" data-placement="right" title="Even Shares">
                            <span class="h3 d-block">⚌</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="form-horizontal" id="sectionao">
        	{for $i=0 to $destinationToShow-1}
        		{include file='partHtmlNewAfter.tpl'}
        	{/for}
        </div>

        <div class="mt-2">
            <button onclick="{$campaignTypeAddFunctionName|default:'addDestinationPageSequence(1, 0, 0, 0)'}; return false" class="btn btn-primary btn-sm">
                <i class="fa fa-plus"></i> Add Landing Page
            </button>
        </div>
    </div>
</div>

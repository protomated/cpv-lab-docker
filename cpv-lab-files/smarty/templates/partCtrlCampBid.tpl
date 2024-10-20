<div class="d-flex mb-4">
    <div class="mt-2">
        {html_radios_margin options=[1 => 'CPV&nbsp;&nbsp;', 2 => 'CPC&nbsp;&nbsp;', 3 => 'CPM&nbsp;'] selected=$campaignDetails.CostTypeID name="radCostTypeID" label_ids=true class='flat-purple minimal-costtype'}
    </div>

    <input name="txtRealTimeCPV" type="text" class="form-control" onblur="validateFloat(this, 0)" value="{$campaignDetails.RealTimeCPV}" style="width: 90px;" />
</div>

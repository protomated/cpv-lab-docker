{include file='tsSpecificPostback-offline.tpl'}

<label>Conversion reporting through Microsoft Advertising (Bing) API (see setup details <a href="{$setupUrl}" target="_blank">here</a>)
</label>

<div class="row">
    <div class="col-md-4">
        <div class="form-group">
            <label>Conversions Name</label>
            <input name="txt{$ts}EventName" id="txt{$ts}EventName" type="text" class="form-control" value="{$eventName}"/>
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            <label>Amount</label>
            <input name="txt{$ts}Amount" id="txt{$ts}Amount" type="text" class="form-control" value="{$amount}"/>
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            <label>Currency</label>
            <input name="txt{$ts}Currency" id="txt{$ts}Currency" type="text" class="form-control" value="{$currency}"/>
        </div>
    </div>
</div>
<br/>
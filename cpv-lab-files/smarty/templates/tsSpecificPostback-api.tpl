    <label>Conversion reporting through {$trafficSourceName} (see setup details <a href="{$setupUrl}" target="_blank">here</a>)
    </label>
    <div class="row">
        <div class="col-md-8">
            <div class="form-group">
                <label>API Access Token</label>
                <input name="txt{$ts}AccessToken" id="txt{$ts}AccessToken" type="text" class="form-control" value="{$accessToken}"/>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label>Pixel ID</label>
                <input name="txt{$ts}PixelID" id="txt{$ts}PixelID" type="text" class="form-control" value="{$pixelID}"/>
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label>Event Name</label>
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
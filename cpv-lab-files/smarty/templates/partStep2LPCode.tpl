<div class="row">
    <div class="col-12">
        <h6 class="font-weight-bold" style="float:left">Step 2: Add Code to {if $campaignTypeID==6}Level 1 {/if}Landing Pages</h6>
		<select id="ddlTrackingCodeLP" class="form-control" style="float:right; width: 200px;"></select>
		<div style="clear:both"></div>
        <div class="form-group mb-4">
            <label><i>Paste on Landing Page before the &lt;/body&gt; tag</i></label>
            <div class="input-group">
				<textarea id="txtStep2" class="form-control back-diff" readonly="readonly" rows="5" onclick="select_all(this)"></textarea>
				{include file="partCopyClipboard.tpl"}
            </div>
        </div>

        <h6 class="d-flex align-items-center">Optional: Direct Traffic Code
			<div class="float-right ml-2">
				<a data-collapse="#directTrafficCodeContainer" class="btn btn-sm btn-icon rounded-circle d-table-cell">
					<i class="ion ion-plus"></i>
				</a>
			</div>
		</h6>

        <div class="collapse" id="directTrafficCodeContainer">
            <p><i>If you have landing pages within the campaign that will receive traffic outside of the Campaign URL...<br/>
                    Paste a version of the code below on your landing page/s, before the &lt;/body&gt; tag but after the Step 2 code.<br/>
                    Select 1 version to use. PHP version must be used on .php pages, for all others use the JavaScript version.
					Replace <b>1</b> with the actual Landing Page ID defined in this page for the corresponding Landing Page.</i></p>

			<div class="form-group">
				<label>JavaScript (preferred, works in any page):</label>
				<div class="input-group">
					<input type="text" id="txtStep2bJs" class="form-control back-diff" readonly="readonly" onclick="select_all(this)"/>
					{include file="partCopyClipboard.tpl"}
				</div>
			</div>
			<div class="form-group mb-0">
    			<label>PHP (only if your page is .php):</label>
    			<div class="input-group">
    				<input type="text" id="txtStep2bPhp" class="form-control back-diff" readonly="readonly" onclick="select_all(this)"/>
    				{include file="partCopyClipboard.tpl"}
    			</div>
            </div>
        </div>
    </div>
</div>

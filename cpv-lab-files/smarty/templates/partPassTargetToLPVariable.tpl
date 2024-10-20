<div class="mt-4">
    <h6 class="d-flex align-items-center">Pass Keyword/Target to Page
        <div class="float-right ml-2">
            <a data-collapse="#passKeywordToPageContainer" class="btn btn-sm btn-icon rounded-circle d-table-cell">
                <i class="ion ion-plus"></i>
            </a>
        </div>
    </h6>

    <div class="collapse" id="passKeywordToPageContainer">
        <div class="form-group">
            <label>
                <i>
                    Add to Page in Location to display the target<br/>
                    Page must be saved as .php
                </i>
            </label>
    		<div class="input-group">
                <input type="text" class="form-control back-diff" readonly="readonly" onclick="select_all(this)" value="<?php echo($_GET['target']) ?>"/>
    			{include file="partCopyClipboard.tpl"}
    		</div>
        </div>
        <div class="form-group mb-0">
            <label>
                <i>Formatted with Domain and Uppercase</i>
            </label>
    		<div class="input-group">
                <input type="text" class="form-control back-diff" readonly="readonly" onclick="select_all(this)" value="<?php $target = str_replace('http://', '', str_replace('https://', '', str_replace('www.', '', $_GET['target']))); echo(ucfirst(strpos($target,'/') !== false ? substr($target,0,strpos($target,'/')) : $target)); ?>"/>
    			{include file="partCopyClipboard.tpl"}
    		</div>
        </div>
    </div>
</div>

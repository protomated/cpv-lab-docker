<div class="alert {if isset($errorMessageType) && $errorMessageType == 1}alert-danger{else}alert-success{/if}{if !$errorMessageText} alert-hidden{/if}">
    <button type="button" class="close{if empty($errorMessageNotAutoclose)} autoclose{/if}" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
    {$errorMessageText nofilter}
</div>

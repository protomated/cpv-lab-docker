{if $showClipboardButton|default:true}
<span class="input-group-addon cursor-pointer d-flex align-items-center" rel="copyclipboard" data-toggle="tooltip" data-placement="right" title="" data-original-title="Copy to Clipboard" {if isset($copyprevlevels)}copy-prev-levels="{$copyprevlevels}"{/if}><i class="fa fa-copy"></i></span>
{/if}
{if $showQrButton|default:true}
<span class="input-group-addon cursor-pointer d-flex align-items-center" rel="generateqrcode" data-toggle="tooltip" data-placement="right" title="" data-original-title="Generate QR Code" {if isset($qrprevlevels)}qr-prev-levels="{$qrprevlevels}"{/if}><i class="fe fe-grid"></i></span>
{/if}

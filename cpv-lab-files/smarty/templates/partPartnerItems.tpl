<div class="row">
    {if count($offers)==0}
    <div class="col-12 mt-5">
    <h2>No offers available in this category.</h2>
    <br/>
    <br/>
    <h3>Try searching in the other categories.</h3>
    </div>
    {/if}
    {foreach $offers as $offer}
    <div class="col-lg-6 mb-30 bonus-card">
        <div class="card mb-0 h-100">
            <div class="card-body box">
                <div class="logo d-flex align-items-center justify-content-center">
                    <img src="{$offer.Logo|default:''}" alt="Offer from {$offer.Name|default:''}">
                </div>
                <h2>{$offer.Offer|default:''}</h2>
                
                <div class="form-group d-flex align-items-center justify-content-center mt-4 pt-1">
                    {if $offer.Promocode}
                    <label for="promoCode1" class="mr-2">Promo code:</label>
                    <div class="input-group mr-2 w-auto">
                        <input type="text" class="form-control promo-code" id="txtPc{$offer.Id|default:''}" value="{$offer.Promocode|default:''}" readonly>
                        <span class="input-group-append btn btn-outline-secondary cursor-pointer copy-button d-flex align-items-center" rel="copyclipboard" data-toggle="tooltip" data-placement="right" title="" data-original-title="Copy to Clipboard">
                            <i class="fa fa-copy"></i>
                        </span>
                    </div>
                    {if $offer.PromocodeDetails}<a tabindex="-1" class="fa fa-info-circle" data-placement="right" data-toggle="popover" data-trigger="focus" data-html="true" title="" data-content="{$offer.PromocodeDetails|default:''}"></a>{/if}
                    {/if}
                </div>
                
                {if $offer.LinkOffer}<a href="{$offer.LinkOffer|default:'javascript:;'}" class="btn btn-primary" target="_blank">Get Bonus</a>{/if}
                <p class="mt-4 mb-0">{$offer.ShortDescription|default:''}</p>
            </div>
        </div>
    </div>
    {/foreach}
</div>
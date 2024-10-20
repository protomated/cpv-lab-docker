<div class="row">
    <div class="col-lg-6">
        <div class="card" id="wdgCloagkinMaskedRedirect">
            <div class="card-header">
                <h4>Create Masked Redirect</h4>
            </div>
            <div class="card-body">
                <form name="formMask" method="post" action="generatecloak.php">
                    <p>If you want to use different tracking links (short links) instead of the base.php, base2.php,
                        base3.php links provided by CPV Lab Pro, then use the tool below to generate masked redirect
                        pages.</p>
                    <p>Create a Masked Redirect and Upload the file to your server in the Location you will call the
                        link.</p>
                    <p>For Example:<br/>
                        URL to Mask: <b>http://mydomain.com/base2.php</b><br/>
                        Masked URL: <b>http://newdomain.com/link</b><br/></p>
                    <p>The Page created in this example will be uploaded to the "link" folder on <b>newdomain.com</b>
                        and will be linked in the Landing Page instead of the original <b>mydomain.com/base2.php</b></p>

                    <div class="form-group">
                        <label>URL to Mask</label>
                        <input type="text" name="txtRedirectUrl" id="txtRedirectUrl" class="form-control" value=""/>
                    </div>

                    <div class="form-group">
                        <label class="d-block">Page Format</label>
                        <label class="mr-3">
                            <input type="radio" class="flat-purple minimal-pageformat" name="radPageFormat"
                                   id="radPageFormatHtml" value="1"/>
                            HTML
                        </label>
                        <label class="mr-3">
                            <input type="radio" class="flat-purple minimal-pageformat" name="radPageFormat"
                                   id="radPageFormatPhp" value="2" checked="checked"/>
                            PHP
                        </label>
                        <label>
                            <input type="radio" class="flat-purple minimal-pageformat" name="radPageFormat"
                                   id="radPageFormatJavascript" value="3"/>
                            HTML with JavaScript
                        </label>
                    </div>

                    <div class="form-group mb-4">
                        <label>
                            <input type="checkbox" class="flat-purple" name="chkPassParam" id="chkPassParam"
                                   checked="checked"/>
                            Pass Parameters (not for HTML)
                        </label>
                        <p class="mt-2 text-muted"><small>Page format must be PHP or HTML w/ JavaScript</small></p>
                    </div>

                    <button name="btnSave_x" onclick="return checkUrl()" class="btn btn-primary"><i
                                class="fe fe-repeat"></i>&nbsp;Generate
                    </button>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="card" id="wdgCloagkinCloakedOffer">
            <div class="card-header">
                <h4>Cloak Offer Page</h4>
            </div>
            <div class="card-body">
                <form name="formHide" method="post" action="generatecloakoffer.php">
                    <p>If you want to cloak (hide) the actual Offer URL and prevent it from appearing in the Browser
                        Address Bar, then use the tool below to generate Cloaking Pages for your offer. These pages will
                        load the offer page while keeping the Cloaking Page URL visible in the Browser Address Bar.</p>

                    <p>Create a Cloaking Page and Upload the file to your server in the Location that you will enter as
                        the offer in the campaign setup page.</p>
                    <p>For Example:<br/>
                        URL to Mask: <b>http://offer-source.com/best-offer/123456/</b><br/>
                        Masked URL: <b>http://newdomain.com/offer</b><br/></p>

                    <p>The Page created in this example will be uploaded to the "offer" folder on <b>newdomain.com</b>
                        and will be setup as the offer in CPV Lab Pro instead of the original offer <b>offer-source.com/best-offer/123456/</b>
                    </p>

                    <p>If you want to send the subID to the actual Offer URL, then append the subID parameter to the
                        Cloaking Page URL entered in the campaign setup page and remove it from the actual Offer
                        URL.</p>

                    <div class="form-group">
                        <label>Offer to Hide</label>
                        <input type="text" name="txtOfferUrl" id="txtOfferUrl" class="form-control" value=""/>
                    </div>

                    <div class="form-group">
                        <label>Page Title</label>
                        <input type="text" name="txtOfferTitle" id="txtOfferTitle" class="form-control" value=""/>
                    </div>

                    <div class="form-group">
                        <label>Meta Description (optional)</label>
                        <input type="text" name="txtOfferDescription" id="txtOfferTitle" class="form-control" value=""/>
                    </div>

                    <div class="form-group">
                        <label>Page Icon URL (optional)</label>
                        <input type="text" name="txtOfferIcon" id="txtOfferIcon" class="form-control" value=""/>
                    </div>

                    <div class="form-group">
                        <label class="d-block">Page Format</label>
                        <label class="mr-3">
                            <input type="radio" class="flat-purple minimal-pageformatOffer" name="radPageFormatOffer"
                                   id="radPageFormatOfferHtml" value="1"/>
                            HTML
                        </label>

                        <label>
                            <input type="radio" class="flat-purple minimal-pageformatOffer" name="radPageFormatOffer"
                                   id="radPageFormatOfferPhp" value="2" checked="checked"/>
                            PHP
                        </label>
                    </div>

                    <div class="form-group mb-4">
                        <label>
                            <input type="checkbox" class="flat-purple" name="chkPassParamOffer" id="chkPassParamOffer"
                                   checked="checked"/>
                            Pass Parameters (not for HTML)
                        </label>
                        <p class="mt-2 text-muted"><small>Page format must be PHP</small></p>
                    </div>

                    <button name="btnSave_x" onclick="return checkUrlOffer()" class="btn btn-primary"><i
                                class="fe fe-repeat"></i>&nbsp;Generate
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    {literal}
    function clickPageFormat(control, suffixParam) {
        var suffix = typeof suffixParam !== 'undefined' ? suffixParam : '';
        control.value == 1 ? $("#chkPassParam" + suffix).iCheck('uncheck').iCheck('disable') :
            $("#chkPassParam" + suffix).iCheck('enable');
    }

    function checkUrl() {
        if ($("#txtRedirectUrl").val())
            return true;
        alert("You must enter an URL to cloak!");
        return false;
    }

    function checkUrlOffer() {
        if ($("#txtOfferUrl").val())
            return true;
        alert("You must enter an URL to cloak!");
        return false;
    }

    $(document).ready(function () {
        $("#Form1").prop("action", "generatecloak.php");
        $('.minimal-pageformat').on('ifChecked', function (event) {
            clickPageFormat(event.target);
        });
        $('.minimal-pageformatOffer').on('ifChecked', function (event) {
            clickPageFormat(event.target, 'Offer');
        });
    });
    {/literal}
</script>

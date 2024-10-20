{include file="partMessage.tpl"}

<div class="card" id="wdgSubIDModify">
    <div class="card-header">
        <h4>Click / SubID Lookup</h4>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-12">
                <div class="form-group mb-4">
                    <label>ClickID or SubID to check</label>
                    <input type="text" name="txtSubidLookup" id="txtSubidLookup" class="form-control"
                           value="{$subid|default:''}"/>
                </div>
                <button name="btnSubidLookup_x" onclick="return validateName('txtSubidLookup', 'ClickID')"
                        class="btn btn-primary mr-3">Lookup
                </button>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-12">
                <div class="form-group mt-4">
                    <label>Enter the ClickID or the SubID in one of the following formats:</label>
                    <ul>
                        <li><b>nnnnnnnn</b> - a numeric value corresponsing to ClickID (eg. 14474)</li>
                        <li><b>ssssssss_ccc_nnnnnnnn</b> - a 3-part string separated by '_' or 'z' for a SubID (eg.
                            ekmwpdty_5_14474)
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

{if $subidDetails}
    <div class="card" id="wdgSubIDLookup">
        <div class="card-header">
            <h4>ClickID / SubID Details</h4>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-12 text-right">
                    {include file='partButtonExport.tpl' exportExtraClass="btn-sm btn-export"}
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-6">

                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                            <tr>
                                <th colspan="2" class="bg-primary"><h5 class="pb-0 mb-0"><i class="fa fa-flask"></i> <u>Campaign
                                            Data</u></h5></th>
                            </tr>
                            <tr>
                                <td style="width:30%">SubID:</td>
                                <td><b>{$subidDetails.SubId}<b></td>
                            </tr>
                            <tr>
                                <td>ClickID:</td>
                                <td>{$subidDetails.ClickID}</td>
                            </tr>
                            <tr>
                                <td>CampaignID:</td>
                                <td>{$subidDetails.CampaignID}</td>
                            </tr>
                            <tr>
                                <td>Campaign Name:</td>
                                <td><a href="campaign-edit.php?id={$subidDetails.CampaignID}"
                                       target="_blank">{$subidDetails.CampaignName}</a></td>
                            </tr>
                            <tr>
                                <td>Landing Page:</td>
                                <td><a href="{$subidDetails.Url}" target="_blank">{$subidDetails.Offer}</a></td>
                            </tr>
                            <tr>
                                <td>Offer Page:</td>
                                <td><a href="{$subidDetails.Url2}" target="_blank">{$subidDetails.Offer2}</a></td>
                            </tr>
                            <tr>
                                <td>Visit Date:</td>
                                <td>{if $subidDetails.ViewDate}{$subidDetails.ViewDate|date_format:$globalDateFormat}{else}-{/if}</td>
                            </tr>
                            <tr>
                                <td>Engage Date:</td>
                                <td>{if $subidDetails.EngageDate}{$subidDetails.EngageDate|date_format:$globalDateFormat}{else}-{/if}</td>
                            </tr>
                            <tr>
                                <td>Click Date:</td>
                                <td>{if $subidDetails.ClickDate}{$subidDetails.ClickDate|date_format:$globalDateFormat}{else}-{/if}</td>
                            </tr>
                            <tr>
                                <td>Subscribe Date:</td>
                                <td>{if $subidDetails.SubscribeDate}{$subidDetails.SubscribeDate|date_format:$globalDateFormat}{else}-{/if}</td>
                            </tr>
                            <tr>
                                <td>Conversion Status:</td>
                                <td>{if $subidDetails.ConversionDate}<img src="images/check_icon.png"/>{else}-{/if}</td>
                            </tr>
                            <tr>
                                <td>Conversion Date:</td>
                                <td>{if $subidDetails.ConversionDate}{$subidDetails.ConversionDate|date_format:$globalDateFormat}{else}-{/if}</td>
                            </tr>
                            <tr>
                                <td>Click Cost:</td>
                                <td>{$displayCurrencySign}{$subidDetails.Cost|number_format:4}</td>
                            </tr>
                            <tr>
                                <td>Click Revenue:</td>
                                <td>{$displayCurrencySign}{$subidDetails.Revenue|number_format:2}</td>
                            </tr>
                            <tr>
                                <td>Referrer Page:</td>
                                <td>{$subidDetails.Referrer}</td>
                            </tr>
                            <tr>
                                <td>Referrer Domain:</td>
                                <td>{$subidDetails.ReferrerDomain}</td>
                            </tr>
                        </table>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                            <tr>
                                <th colspan="2" class="bg-primary"><h5 class="pb-0 mb-0"><i class="fa fa-globe"></i> <u>Geo
                                            Data</u></h5></th>
                            </tr>
                            <tr>
                                <td style="width:30%">IP Address:</td>
                                <td>{$subidDetails.IP}</td>
                            </tr>
                            <tr>
                                <td>Country:</td>
                                <td><img src="images/flags/{$subidDetails.CountryFlag|default:'empty'}.gif"
                                         alt="$subidDetails.CountryName}"/>&nbsp;{$subidDetails.CountryName}</td>
                            </tr>
                            <tr>
                                <td>Region/State:</td>
                                <td>{$subidDetails.RegionName}</td>
                            </tr>
                            <tr>
                                <td>City:</td>
                                <td>{$subidDetails.CityName}</td>
                            </tr>
                            <tr>
                                <td>ISP/Carrier:</td>
                                <td>{if $showupdstobj.ispcarrier|default:0}<span class="updColor font-weight-bold"><a
                                                href="{if $iscldvrs|default:0}https://billing.stripe.com/p/login/9AQeWsa2Z32D8x2144{else}https://cpvlab.pro/pricing-signup.php?utm_source=starter-cllook{/if}"
                                                target="_blank">Upgrade NOW</a> to get ISP/Carrier Data!
                                        </span>{else}{$subidDetails.IspName}{/if}</td>
                            </tr>
                        </table>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                            <tr>
                                <th colspan="2" class="bg-primary"><h5 class="pb-0 mb-0"><i
                                                class="fe fe-smartphone"></i> <u>Device Data</u></h5></th>
                            </tr>
                            <tr>
                                <td style="width:30%">Browser:</td>
                                <td>{$subidDetails.BrowserName} {$subidDetails.BrowserVersion}</td>
                            </tr>
                            <tr>
                                <td>Browser Language:</td>
                                <td>{$subidDetails.BrowserLanguage}</td>
                            </tr>
                            <tr>
                                <td>Operating System:</td>
                                <td>{$subidDetails.OperatingSystem} {$subidDetails.OperatingSystemVersion}</td>
                            </tr>
                            <tr>
                                <td>Device Type:</td>
                                <td>{$subidDetails.DeviceType}</td>
                            </tr>
                            <tr>
                                <td>Brand Name:</td>
                                <td>{$subidDetails.BrandName}</td>
                            </tr>
                            <tr>
                                <td>Device Name:</td>
                                <td>{$subidDetails.DeviceName}</td>
                            </tr>
                            <tr>
                                <td>Device Model:</td>
                                <td>{$subidDetails.MarketingName}</td>
                            </tr>
                            <tr>
                                <td>Screen Resolution:</td>
                                <td>{$subidDetails.Resolution}</td>
                            </tr>
                            <tr>
                                <td>User Agent:</td>
                                <td>{$subidDetails.UserAgent}</td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                            <tr>
                                <th colspan="2" class="bg-primary"><h5 class="pb-0 mb-0"><i class="fe fe-globe"></i> <u>Traffic
                                            Source Tokens - {$subidDetails.Source}</u></h5></th>
                            </tr>
                            <tr>
                                <td style="width:30%">Target/Keyword:</td>
                                <td>{$subidDetails.Keyword}</td>
                            </tr>
                            <tr>
                                <td>{$subidDetails.AdTokenName}:</td>
                                <td>{$subidDetails.AdValue}</td>
                            </tr>
                            {for $i=1 to $maxExtraTokens}
                                <tr>
                                    <td>{$subidDetails["ExtraTokenName$i"]}:</td>
                                    <td>{$subidDetails["Extra$i"]}</td>
                                </tr>
                            {/for}
                            <tr>
                                <td>TS Unique Token:</td>
                                <td>{$subidDetails.UniqueCode}</td>
                            </tr>
                        </table>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                            <tr>
                                <th colspan="2" class="bg-primary"><h5 class="pb-0 mb-0"><i
                                                class="fe fe-shopping-cart"></i> <u>Offer Source Tokens
                                            - {$subidDetails.Affiliate}</u></h5></th>
                            </tr>
                            <tr>
                                <td style="width:30%">Transaction ID:</td>
                                <td>{$subidDetails.TransactionID}</td>
                            </tr>
                            <tr>
                                <td>Status:</td>
                                <td>{$subidDetails.Status}</td>
                            </tr>
                            {for $i=1 to 5}
                                <tr>
                                    <td>Custom Token {$i}:</td>
                                    <td>{$subidDetails["Custom$i"]}</td>
                                </tr>
                            {/for}
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
{/if}

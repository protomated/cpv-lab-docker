{if $showupdstobj.customdomains|default:0}{include file='partUpdPage.tpl'}{/if}
{include file="partMessage.tpl"}

<div class="card" id="wdgCustomDomainsModify">
    <div class="card-header">
        <h4>{if $editMode}Edit{else}Add{/if} Custom Domain</h4>
    </div>
    <div class="card-body">
        <p>Custom Tracking Domains can be associated to your CPV {if $iscldvrs|default:0}One{else}Lab{/if} instance and used in tracking links and Postback URLs.</p>
        <p>These are a great way of having your tracking links share the same root domain as the landing pages. It is achieved by using a subdomain from your landing page domain as a Custom Trackign Domain.</p>
        <p>Complete details about setting up Custom Tracking Domains and the DNS configuration can be found in <a href="{if $iscldvrs|default:0}https://doc.cpvlab.pro/CPVOne/custom-tracking-domains-cpv-one.html{else}https://doc.cpvlab.pro/custom-tracking-domains.html{/if}" target="_blank">our Online Documentation</a>.</p>
        {if $domainsLimit>0}<p><b>Your license allows up to {$domainsLimit} Custom Tracking Domains to be used.</b></p>
        {else}<p class="profitRed font-weight-bold">The Starter plan doesn't allow setting up Custom Tracking Domains. Please <a href="https://cpvlab.pro/pricing-signup.php?utm_source=starter-domains" target="_blank" class="font-weight-bold">upgrade your plan</a> in order to use this feature.</p>
        {/if}
        <div class="row mt-4">
            <div class="col-xl-6 col-lg-8 col-md-12">
                <div class="form-group mb-4">
                    <label>Name</label>
                    <input type="text" name="txtCustomDomain" id="txtCustomDomain" class="form-control"
                        value="{$currentDomain|default:''}" />
                </div>
                {if !$iscldvrs}
                <button name="ajax-test-domains" onclick="return ajaxTestCustomDomains(event)"
                    class="btn btn-primary mr-3"{if $showupdstobj.customdomains|default:0} disabled="disabled"{/if}>Test Domain</button>
                {/if}
                <button name="btnSave_x" onclick="return validateName('txtCustomDomain', 'Custom Domains') && validateCustomDomain('txtCustomDomain')"
                    class="btn btn-primary mr-3"{if $showupdstobj.customdomains|default:0} disabled="disabled"{/if}>Save</button>
                {if $editMode}
                    <button name="btnCancel" onclick="window.location.href = 'custom-domains.php'; return false"
                        class="btn btn-secondary">Cancel</button>
                {/if}
            </div>
        </div>
    </div>
</div>

<div class="card" id="wdgCustomDomainsCurrent">
    <div class="card-header">
        <h4>Current Custom Domains</h4>
    </div>
    <div class="card-body">
        <table id="tblCustomDomains" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
                    <th>Domain Name</th>
                    {if $iscldvrs|default:0}<th class="text-center">CNAME</th>{/if}
                    <th class="text-center">SSL</th>
                    <th class="text-center">Date Added</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                {foreach $domains as $domain}
                    <tr>
                        <td>{$domain.CustomDomain}</td>
                        {if $iscldvrs|default:0}<td class="text-center">{if $domain.Action == "certif"}&nbsp;{else}<span id="spnDNS{$domain.CustomDomainID}"><img src="images/spinner.gif" alt="Working..." id="spni"/></span>{/if}</td>{/if}
                        <td class="text-center">{if $domain.Action == "certif"}&nbsp;{else}<span id="spnSSL{$domain.CustomDomainID}"><img src="images/spinner.gif" alt="Working..." id="spni"/></span>{/if}</td>
                        <td class="text-center">{$domain.DateAdded|date_format:$globalDateFormat}</td>
                        <td class="text-right">
                            {if $domain.Action == "certif"}
                            <span class="badge badge-dark m-b-5">Google Certified Domain</span>
                            {else}
                            <a href="custom-domains.php?id={$domain.CustomDomainID}" class="btn btn-primary btn-sm mr-2"><i
                                    class="fe fe-edit"></i>&nbsp;Edit</a>
                            {include file='partButtonDelete.tpl' extraDeleteClass='mr-2' itemID=$domain.CustomDomainID}
                            <button type="button" onclick="return ajaxTestCustomDomainTable({$domain.CustomDomainID}, this)"
                                class="btn btn-default btn-sm"><i class="fa fa-gear"></i>&nbsp;Test</button>
                            {/if}
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    </div>
</div>

<input type="hidden" name="hidEditID" value="{$editID}" />
<input type="hidden" name="hidCldvrs" id="hidCldvrs" value="{$iscldvrs|default:0}" />

<script>
    $('#txtCustomDomain').blur(function () {
        var domain = $(this).val().toLowerCase().trim();
		if ((domain.length > 0) && (domain.substr(0, 5) !== 'http:') && (domain.substr(0, 5) !== 'https')) {
			domain = 'https://' + domain;
		}
        $(this).val(domain);
	});
    $(document).ready(function () {
        ajaxCheckCustomDomains();
    $('#tblCustomDomains')
        .on( 'page.dt',   function () { 
				setTimeout("ajaxCheckCustomDomains()", 2000); 
            })
        .on( 'order.dt',   function () { 
				setTimeout("ajaxCheckCustomDomains()", 2000); 
            })
        .on( 'search.dt',   function () { 
				setTimeout("ajaxCheckCustomDomains()", 2000); 
            });
    {if $insertCustomDomainID}
        SetIntervalForCustomDomain({$insertCustomDomainID}); 
    {/if}
    });
</script>
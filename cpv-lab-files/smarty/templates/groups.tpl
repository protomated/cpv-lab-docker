{include file="partMessage.tpl"}

<div class="card" id="wdgGroupsModify">
    <div class="col-12">
        <div class="card-body">
            <div>
                <ul class="nav nav-pills" id="tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" id="campaigns-tab" data-toggle="tab" href="#campaigns" role="tab"
                            aria-controls="campaigns" aria-selected="true">Campaigns</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="landings-tab" data-toggle="tab" href="#landings" role="tab"
                            aria-controls="landings" aria-selected="false">Landing Pages</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="offers-tab" data-toggle="tab" href="#offers" role="tab"
                            aria-controls="offers" aria-selected="false">Offers</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="card-body">
            <div class="row">
                <div class="col-4 form-group mb-4">
                    <input type="text" name="txtGroup" id="txtGroup" class="form-control" />
                </div>
                <div class="col-8">
                    <div id="saveButtons" style="float:left">
                        <button name="btnSave_x" onclick="return validateName('txtGroup', 'Group')"
                            class="btn btn-primary mr-3">+ Add new group</button>
                    </div>
                    <div id="editButtons" style="float:left">
                        <button name="btnSave_xE" class="btn btn-primary mr-3 save-btn">Save</button>

                        <button name="btn-cancel" class="btn btn-secondary btn-cancel">Cancel</button>
                    </div>
                    <img src="images/spinner.gif" alt="Working..." id="spinG" class="ml-4 mt-2" style="display:none; float:left;"/>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="card" id="wdgGroupsCurrent">
    <div class="tab-content border-top p-3">
        <div class="tab-pane fade p-0" id="campaigns" role="tabpanel" aria-labelledby="campaigns-tab">
            <div class="card-header">
                <h4>Current Campaign Groups</h4>
            </div>
            <div class="card-body">
                <table id="tblCampaignGroups" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
                    <thead>
                        <tr>
                            <th>Group Name</th>
                            <th class="text-center">Campaign Count</th>
                            <th class="text-center">Date Added</th>
                            <th class="text-center">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $campaigns as $campaign}
                            <tr>
                                <td>{$campaign.CampaignGroup}</td>
                                <td class="text-center">{$campaign.Number}</td>
                                <td class="text-center">{$campaign.CreateDate|date_format:$globalDateFormat}</td>
                                <td class="text-right">
                                    <a href="javascript:;" name="groupEdit" data-id="{$campaign.CampaignGroupID}"
                                        class="btn btn-primary btn-sm mr-2 edit-btn-camp">
                                        <i class="fe fe-edit"></i>&nbsp;Edit
                                    </a>
                                    {include file='partButtonDelete.tpl' itemID=$campaign.CampaignGroupID}
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
        <div class="tab-pane fade p-0" id="landings" role="tabpanel" aria-labelledby="landings-tab">
            <div class="card-header">
                <h4>Current Landing Page Groups</h4>
            </div>
            <div class="card-body">
                <table id="tblLandingPagesGroups" class="{$theme_table_classes} text-nowrap dtSettings"
                    style="width:100%">
                    <thead>
                        <tr>
                            <th>Group Name</th>
                            <th class="text-center">Landing Page Count</th>
                            <th class="text-center">Date Added</th>
                            <th class="text-center">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $landings as $landing}
                            <tr>
                                <td>{$landing.LandingPageGroup}</td>
                                <td class="text-center">{$landing.Number}</td>
                                <td class="text-center">{$landing.CreateDate|date_format:$globalDateFormat}</td>
                                <td class="text-right">
                                    {if $landing.LandingPageGroup !== 'Default'}
                                        <a href="#" name="groupEdit" data-id="{$landing.LandingPageGroupID}"
                                            class="btn btn-primary btn-sm mr-2 edit-btn-land"><i
                                                class="fe fe-edit"></i>&nbsp;Edit</a>
                                        {include file='partButtonDelete.tpl' itemID=$landing.LandingPageGroupID}
                                    {/if}
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
        <div class="tab-pane fade p-0" id="offers" role="tabpanel" aria-labelledby="offers-tab">
            <div class="card-header">
                <h4>Current Offer Groups</h4>
            </div>
            <div class="card-body">
                <table id="tblOfferGroups" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
                    <thead>
                        <tr>
                            <th>Group Name</th>
                            <th class="text-center">Offer Count</th>
                            <th class="text-center">Date Added</th>
                            <th class="text-center">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $offers as $offer}
                            <tr data-id="{$offer.OfferGroupID}">
                                <td>{$offer.OfferGroup}</td>
                                <td class="text-center">{$offer.Number}</td>
                                <td class="text-center">{$offer.CreateDate|date_format:$globalDateFormat}</td>
                                <td class="text-right">
                                    {if $offer.OfferGroup !== 'Default'}
                                        <a href="" name="groupEdit" data-id="{$offer.OfferGroupID}"
                                            class="btn btn-primary btn-sm mr-2 edit-btn-offer"><i
                                                class="fe fe-edit"></i>&nbsp;Edit</a>
                                        {include file='partButtonDelete.tpl' itemID=$offer.OfferGroupID}
                                    {/if}
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<input type="hidden" name="hidTabType" value="" />

<script type="text/javascript">
    {literal}
        var cookies = document.cookie.split(';');
        var myCookieValue = null;

        for (var i = 0; i < cookies.length; i++) {
            var cookie = cookies[i].trim();
            if (cookie.indexOf('currentTab=') == 0) {
                myCookieValue = cookie.substring('currentTab='.length, cookie.length);
                break;
            }
        }

        $(document).ready(function() {
            const activeTab = myCookieValue || 'campaigns';

            $('#currentTabName').html(activeTab.charAt(0).toUpperCase() + activeTab.slice(1));

            $(`a[data-toggle="tab"][id="${activeTab}-tab"]`).addClass('active show');
            $(`.tab-pane[id="${activeTab}"]`).addClass('active show');

            $('a[data-toggle="tab"]').on('shown.bs.tab', function(id) {
                let newTab = this.id.replace('-tab', '');
                myCookieValue = newTab;
                ajaxSetCurrentTab(newTab);
                $('[name="hidTabType"]').val(this.id.replace('-tab', ''));
                $.fn.dataTable.tables({ visible: true, api: true }).columns.adjust();
                $('#currentTabName').html(newTab.charAt(0).toUpperCase() + newTab.slice(1));
            });

            $('#editButtons').hide();
            $('#tblCampaignGroups').on('click', '.edit-btn-camp', function(e) {
                e.preventDefault();
                id = $(this).data('id');
                row = $(this).closest('tr');
                ajaxGetEditGroup(id);
            });

            $('#tblLandingPagesGroups').on('click', '.edit-btn-land', function(e) {
                e.preventDefault();
                id = $(this).data('id');
                row = $(this).closest('tr');
                ajaxGetEditGroup(id);
            });

            $('#tblOfferGroups').on('click', '.edit-btn-offer', function(e) {
                e.preventDefault();
                id = $(this).data('id');
                row = $(this).closest('tr');
                ajaxGetEditGroup(id);
            });

            $('.save-btn').on('click', function(e) {
                var validationResult = validateName('txtGroup', 'Group');
                if (!validationResult)
                {
                    return false;
                }
                e.preventDefault();
                ajaxSaveEditGroup(id, row);
            })

            $('.btn-cancel').on('click', function(e) {
                e.preventDefault();
                $('#saveButtons').show();
                $('#editButtons').hide();
                $('#txtGroup').val('');
            })
        });
    {/literal}
</script>
<div class="bonuses-page">


    <ul class="nav nav-pills" id="bonusesTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active text-white show" id="learning-tab" data-toggle="tab" href="#learning" role="tab"
               aria-controls="learning" aria-selected="false">Learning</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" id="hosting-tab" data-toggle="tab" href="#hosting" role="tab"
               aria-controls="hosting" aria-selected="false">Hosting</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" id="tools-tab" data-toggle="tab" href="#tools" role="tab"
               aria-controls="tools" aria-selected="true">Tools</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" id="network-tab" data-toggle="tab" href="#network" role="tab"
               aria-controls="network" aria-selected="false">Affiliate Networks</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" id="traffic-tab" data-toggle="tab" href="#traffic" role="tab"
               aria-controls="traffic" aria-selected="true">Traffic Sources</a>
        </li>
    </ul>

    <div class="tab-content pt-5">
        <div class="tab-pane fade p-0 active show" id="learning" role="tabpanel" aria-labelledby="learning-tab">
            {include file='partPartnerItems.tpl' offers=$offers.Learning|default:array()}
        </div>
        <!-- end learning tab -->

        <div class="tab-pane fade p-0" id="hosting" role="tabpanel" aria-labelledby="hosting-tab">
            {include file='partPartnerItems.tpl' offers=$offers.Hosting|default:array()}
        </div>
        <!-- end hosting tab -->

        <div class="tab-pane fade p-0" id="tools" role="tabpanel" aria-labelledby="tools-tab">
            {include file='partPartnerItems.tpl' offers=$offers.Tools|default:array()}
        </div>
        <!-- end tools tab -->

        <div class="tab-pane fade p-0" id="network" role="tabpanel" aria-labelledby="network-tab">
            {include file='partPartnerItems.tpl' offers=$offers.Affiliate|default:array()}
        </div>
        <!-- end network tab -->

        <div class="tab-pane fade p-0 " id="traffic" role="tabpanel" aria-labelledby="traffic-tab">
            {include file='partPartnerItems.tpl' offers=$offers.Traffic|default:array()}
        </div>
        <!-- end traffic tab -->
    </div>
</div>

<script>
    $(document).ready(function () {
        initializeCopyToClipboard();
    });
</script>
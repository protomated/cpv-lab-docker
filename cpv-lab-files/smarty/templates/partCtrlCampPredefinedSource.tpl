<div>
    <select name="ddlPredefinedSource" id="ddlPredefinedSource" onchange="ajaxGetPredefinedSource()" class="form-control pull-left">
        {html_options options=$sourcesArray selected=$selectedSource}
    </select>
    <!--<span class="input-group-addon cursor-pointer" onclick="hideSectionTB(this, 'divSourceSection')" data-toggle="tooltip" data-placement="right" title="Show/Hide Source Section"><i class="glyphicon glyphicon-plus"></i></span>-->
</div>

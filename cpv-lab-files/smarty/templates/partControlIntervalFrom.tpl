<div class="input-group">
    <div class="input-group-addon">
      <i class="fa fa-calendar"></i>
    </div>
    <input type="text" name="txtIntervalFrom" id="txtIntervalFrom" value="{$intervalFrom}" onblur="setToCustom()" class="form-control pull-right date" data-toggle="tooltip" data-placement="right" data-html="true" title="{if $showTextFrom|default:false}from<br/>{/if}mm/dd/yyyy"/>
    <!--<span class="input-group-addon cursor-pointer" onclick="$('#txtIntervalFrom').focus();"><i class="icon-append fa fa-calendar"></i></span>-->
</div>

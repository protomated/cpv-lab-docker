<div class="clearfix">
    <span class="mr-2">Color Key:</span>
	{if $showWinner|default:true}
        <div class="d-inline-block mr-3 mb-2">
			<span class="highlightRowColor" style="border:solid 1px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> Winner
        </div>
	{/if}
	{if $showAlert|default:true}
        <div class="d-inline-block mr-3 mb-2">
			<span class="alertRowColor" style="border:solid 1px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> Alert
        </div>
	{/if}
	{if $showInactive|default:true}
        <div class="d-inline-block mr-14">
			<span class="inactiveRowColor" style="border:solid 1px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> Inactive
        </div>
	{/if}
    <div class="d-inline-block">
	     <span style="background-color: #f0f0f5; border:solid 1px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> Current
    </div>
</div>

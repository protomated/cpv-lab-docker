{if $showAdRow}
<tr>
	<td><u>Ad / Creative</u><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>{$adName}</b></td>
	<td class="center"><b>{$adTop nofilter}</b><br/>{$adOther nofilter}</td>
	<td class="center"><b>{$adChange nofilter}</b></td>
</tr>
{/if}
{if $showLPRow}
<tr>
	<td><u>Landing Page</u><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>{$lpName}</b></td>
	<td class="center"><b>{$lpTop nofilter}</b><br/>{$lpOther nofilter}</td>
	<td class="center"><b>{$lpChange nofilter}</b></td>
</tr>
{/if}
<tr>
	<td><u>Offer</u><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>{$offerName}</b></td>
	<td class="center"><b>{$offerTop nofilter}</b><br/>{$offerOther nofilter}</td>
	<td class="center"><b>{$offerChange nofilter}</b></td>
</tr>
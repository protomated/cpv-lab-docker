{foreach $reportLines as $row}
	<tr>
		<td><a href="{$detailsUrl}&fc={$row.CountryID}" target="_blank">{$row.Country}</a></td><td class="center bold">{$row.CountryValue nofilter}</td>
		<td><a href="{$detailsUrl}&fr={$row.RegionID}" target="_blank">{$row.Region}</a></td><td class="center bold">{$row.RegionValue nofilter}</td>
		<td><a href="{$detailsUrl}&ft={$row.CityID}" target="_blank">{$row.City}</a></td><td class="center bold">{$row.CityValue nofilter}</td>
	</tr>
{/foreach}
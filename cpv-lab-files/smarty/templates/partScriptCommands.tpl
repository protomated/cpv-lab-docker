updateDestinationUrl();
checkInputCount();
for (i=1; i<={count($tooltips)}; i++)
{
	var currentTip = $get('tip' + i);
	if (currentTip != null)
	currentTip.addEventListener('mouseout',onMouseOut,true);
}
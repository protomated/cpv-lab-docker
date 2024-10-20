// ______________ PerfectScrollbar

const ps2 = new PerfectScrollbar('.app-sidebar', {
	useBothWheelAxes:true,
	suppressScrollX:true,
});
$(document).ready(function(){
	ps2.update();
});
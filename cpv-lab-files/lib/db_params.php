<?php
if (!isset($GLOBALS['DB_PARAMS_INC'])) {
	$GLOBALS['DB_PARAMS_INC']=1;
	global $db_data;
	// main database

	$db_data['cpvlabconnectionstring'] = array(
		'host' => 'yourhost',
		'db' => 'yourdatabase',
		'user' => 'youruser',
		'password' => 'yourpassword'
		);

} // end of inclusive if

?>
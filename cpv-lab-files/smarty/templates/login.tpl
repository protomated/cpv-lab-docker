<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	{assign 'is_assets_minified' 0}
	<head>
		<title>Login</title>

		<link rel="apple-touch-icon" sizes="180x180" href="{$root}apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="{$root}favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="{$root}favicon-16x16.png">
		<link rel="manifest" href="{$root}site.webmanifest">
		<link rel="mask-icon" href="{$root}safari-pinned-tab.svg" color="#5bbad5">
		<meta name="msapplication-TileColor" content="#da532c">
		<meta name="theme-color" content="#ffffff">
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="robots" content="noindex, nofollow" />
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700,800,900"/>
		{if $is_assets_minified}
			<link rel="stylesheet" type="text/css" href="style-spl/css/built-login.min.css?v=1126" />
		{else}
			<link rel="stylesheet" type="text/css" href="style-spl/plugins/iconfonts/fontawesome/css/font-awesome.css?v=1126"/>
			<link rel="stylesheet" type="text/css" href="style-spl/css/login-box.css?v=1126" />
		{/if}
	</head>
	<body>
		<form id="Form1" method="post">
			<div align="center" style="padding: 100px 0 0 0px;">
				{if $existingFiles}
					<div class="divMessage red"><br/>Security Warning: Please remove the following file{$existingFilesSuffix} from the server: {$existingFiles}</div>
				{/if}
				{if $permissionFiles}
					<div class="divMessage red"><br/>Security Warning: You have to reset permissions to 644 for the {$permissionFiles} file{$permissionFilesSuffix}</div>
				{/if}
				<div class="login-box">
					<h2>&nbsp;</h2>
					<div class="login-box-name" style="margin-top:20px;">Username:</div>
					<div class="login-box-field" style="margin-top:20px;">
						<input name="txtUsername" class="form-login" title="Username" value="" size="30" maxlength="255" />
					</div>
					<div style="clear:both"></div>
					<div class="login-box-name">Password:</div>
					<div class="login-box-field">
						<input name="txtPassword" type="password" class="form-login" title="Password" value="" size="30" maxlength="255" />
					</div>
					<div style="clear:both">&nbsp;</div>
					<button type="submit" name="btnSubmit_x" class="btn btn-success btn-lg"><i class="fa fa-check"></i> Login</button>
					<br/><br/>
					{if $showInvalidLogin}
						<div class="divMessage">Invalid login!</div>
					{/if}
					{if $showMessage || $smarty.session.MessageText|default:''}
						<div class="divMessage">{$messageText nofilter}{$smarty.session.MessageText|default:'' nofilter}</div>
					{/if}
				</div>
			</div>
		</form>
	</body>
</html>
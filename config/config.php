<?php
	ob_start();
	session_start();
	error_reporting(0);
	//error_reporting(E_ALL);
	#===== DBCONFIG START
    define("DB_HOST", "localhost");
    define("DB_USER", "root");
    //define("DB_PASS", "Lock2fit2017");
	define("DB_PASS", "Lock2fit");
    define("DB_DATABASE", "resinova_new");
	define("SITE_NAME", "http://10.10.10.3/astral-adhesives/");

	#===== PROTOCOL.
	if (isset($_SERVER['HTTPS']) && ($_SERVER['HTTPS'] == 'on' || $_SERVER['HTTPS'] == 1) || isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https')
	{
		$protocol = 'https://';
	}
	else
	{
		 $protocol = 'http://';
	}

	#==== Base URL
	define('base_url' , $protocol.$_SERVER['SERVER_NAME'].preg_replace('@/+$@','',dirname($_SERVER['SCRIPT_NAME'])).'/');
    #====== SITE PATH START
    define("DIR_ROOT", $_SERVER['DOCUMENT_ROOT']."/astral-adhesives/");      //DIR PATH
    define("SITE_ROOT", $protocol.$_SERVER['HTTP_HOST']."/astral-adhesives/"); // IP

    #===== SITE ADMIN PATH START
    define("ADMIN_DIR", $_SERVER['DOCUMENT_ROOT'].dirname($_SERVER['REQUEST_URI']));
    define("ADMIN_SITE", $protocol.$_SERVER['HTTP_HOST'].dirname($_SERVER['REQUEST_URI']));

  	define("ADMIN_COUNT",15);
	define("MANDATORY","&nbsp;&nbsp;<SPAN STYLE='color:#FF0000'><sup>*</sup></span>");

	require_once(DIR_ROOT."class/load_utility.php");
	require_once(DIR_ROOT."class/sysmsg.php");
	require_once(DIR_ROOT."class/php_image_magician.php");

	$objSystemMsg = new systemMsg();
	$objTypes 	  = new load_utility('mysql:dbname='.DB_DATABASE.';host='.DB_HOST.';charset=UTF8', DB_USER, DB_PASS);
	@$sysmsg 	  = intval($_REQUEST['sysmsg']);
	
	$UrlTitle	  = strip_tags($_REQUEST['title']); 
	$UrlId		  = intval($_REQUEST['id']);
	$UrlCatName	  = strip_tags($_REQUEST['cat_name']);
	
	/*if($UrlTitle=='boomlifts' && $UrlId=='11'){
		 header("HTTP/1.1 301 Moved Permanently"); 
		 header("location:http://www.geminipowerhydraulics.com/p/articulated-boomlifts-11");
		 exit();
	 }else if($UrlTitle=='fuel-management-system' && $UrlId=='154'){
	 	 header("HTTP/1.1 301 Moved Permanently"); 
		 header("location:http://www.geminipowerhydraulics.com/i/fuel-handling-management-system-154");
		 exit();
	 }else if($UrlTitle=='nut-splitting' && $UrlId=='21'){
	 	 header("HTTP/1.1 301 Moved Permanently"); 
		 header("location:http://www.geminipowerhydraulics.com/sd/nut-splitter-tools-21");
		 exit();
	 }else if($UrlTitle=='hydraulic-jacking' && $UrlId=='13'){
	 	 header("HTTP/1.1 301 Moved Permanently"); 
		 header("location:http://www.geminipowerhydraulics.com/sd/hydraulic-jack-13");
		 exit();
	 }else if($UrlTitle=='crimping-tool' && $UrlId=='293'){
	 	 header("HTTP/1.1 301 Moved Permanently"); 
		 header("location:http://www.geminipowerhydraulics.com/p/hydraulic-crimping-tool-293");
		 exit();
	 }else if($UrlTitle=='torque-wrenches' && $UrlId=='313'){
	 	 header("HTTP/1.1 301 Moved Permanently"); 
		 header("location: http://www.geminipowerhydraulics.com/p/hydraulic-torque-wrenches-313");
		 exit();
	 }else if($UrlCatName=='bridge-maintenance-solution' && $UrlTitle=='vehicle-mounted-unit' && $UrlId=='105'){
	 	 header("HTTP/1.1 301 Moved Permanently"); 
		 header("location: http://www.geminipowerhydraulics.com/p/bridge-maintenance-solution/mobile-bridge-inspection-unit-105");
		 exit();
	 }else if($UrlCatName=='industrial-solutions' && $UrlTitle=='work-clamping-sytems' && $UrlId=='23'){
	 	 header("HTTP/1.1 301 Moved Permanently"); 
		 header("location: http://www.geminipowerhydraulics.com/p/industrial-solutions/workholding-clamping-systems-23");
		 exit();
	 }*/

?>

<?php 
require_once("config/config.php"); 
if(!class_exists('PHPMailer')){
	if( !require_once( 'include/PHPMailer/PHPMailerAutoload.php' )){
		die('PHPMailer Class Does not Exists!');
	}else{		
		$mail 	= new PHPMailer();
	}
}
 
#==== Validations For Security
$POST		= $objTypes->validateUserInput($_POST);
$ip			= $_SERVER['REMOTE_ADDR'];
$agent		= addslashes($_SERVER['HTTP_USER_AGENT']);

#==== ADD - INSERT
if(($POST['signup_email'])){

	$signup_email = addslashes(strip_tags($POST['signup_email']));
	$params = array(
				   'signup_email'	 => $signup_email,
				   'ip'              => $ip, 
				   'agent'           => $agent
					);

	 $totl_data=$objTypes->fetchAll("select count(id) as total from tbl_signup where signup_email='".$signup_email."'");

	if($totl_data[0]['total']==0){
	$insert = $objTypes->insert("tbl_signup", $params);

	if($insert){
		$insert_id = $objTypes->lastInsertId();
        if($insert_id > 0){		
		$mail->IsSMTP();
		$mail->Mailer 	  = "smtp";
		$mail->Host       = "geminipowerhydraulics.com"; 
		$mail->SMTPDebug  = 0; 
		$mail->SMTPAuth   = true; 
		$mail->Port       = 25;
		$mail->SMTPSecure = 'TLS';
		$mail->Username   = "info@geminipowerhydraulics.com";
		$mail->Password   = "info123!@#";
		$mail->addReplyTo('info@geminiindia.com', 'Gemini Power Hydraulics'); 
		$mail->setFrom('info@geminiindia.com', 'Gemini Power Hydraulics');
		$mail->addAddress('info@geminiindia.com', 'Gemini Power Hydraulics');
		$mail->addBCC('santhosh.nair@bcwebwise.com', 'Santhosh');	
		$mail->addBCC('mitul.jagushte@bcwebwise.com', 'Mitul Jagushte');
		$mail->addAddress($signup_email);
		$mail->isHTML(true);	
		
		$mail->Subject  = 'NewsLetter';			
		$mail->Body     = 'We appreciate your interest in our services. Our team will get in touch with you shortly.';
		
		//if(!$mail->send()){
			// echo "Error in sending message.";
			 echo "Thank you";
			
		//}else {				
			//echo "Thank you";
		//}	
	
			
        }
	}
    else{
		echo "Something went wrong";
	}

}else{
	echo "Already subscribed";
}
}
if(($POST['Unsubcribe']=="Unsubcribe"))
{
	$unsubcribe_email = addslashes(strip_tags($POST['Unsubcribe_email']));
	
	$where      = array(":status" => '1');
	
	if($unsubcribe_email){
	$where[':signup_email'] = $unsubcribe_email ;
	}

	
	$params = array(
	   'signup_email'	 => $unsubcribe_email,
       'ip'              => $ip,
       'agent'           => $agent
    );
	
	 $select_email = $objTypes->select("tbl_signup", "*","status = :status AND signup_email = :signup_email" ,$where);
	 $num_rows 	   =  count($select_email);
	 if($num_rows > 0)
	 {
		$update = $objTypes->inquery("UPDATE tbl_signup SET status = '0' WHERE signup_email = '".$unsubcribe_email."' ");
		if($update)
		{	header("location:unsubcribe.php?sysmsg=1017");
			exit();
		}else {
			header("location:unsubcribe.php?sysmsg=3");
			exit();
		}
	 }
	else{
		
		header("location:unsubcribe.php?sysmsg=34");
		exit();
	}
	
	
}
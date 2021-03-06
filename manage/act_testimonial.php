<?php
#=== Includes
require_once("../config/config.php");
require_once("verify_logins.php");

#==== Validations For Security
$POST		= $objTypes->validateUserInput($_POST);
$id 		= isset($POST['id']) ? intval($POST['id']) : intval($_REQUEST['id']) ;
$ip			= $_SERVER['REMOTE_ADDR'];
$agent		= addslashes($_SERVER['HTTP_USER_AGENT']);

#==== ADD - INSERT
if(($POST['SAVE']=="SAVE") && ($POST['id'] == "")){
	
	
	$params = array(
		'title'	            => $POST['title'],
		'name'	            => $POST['name'],
		'designation'	    => $POST['designation'],
		'youtube'	        => $POST['youtube'],
		'company'	        => $POST['company'],
        'ip'                => $ip,
        'agent'             => $agent,
        'added_by'          => $_SESSION['SessAdminName']
	);

	$insert = $objTypes->insert("tbl_testimonial", $params);
	if($insert){
		$insert_id = $objTypes->lastInsertId();
        if($insert_id > 0){
			
			
            if(isset($_FILES['image']['name']) && $_FILES['image']['name'] != ""){
                $ext            = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
                $ext            = strtolower($ext);
                $validatefiles 	= array("jpg", "bmp", "jpeg", "png", "gif","JPG", "BMP", "JPEG", "PNG", "GIF");
                $filetype 		= array('image/gif', 'image/png', 'image/jpeg', 'image/JPEG', 'image/PNG', 'image/GIF', 'image/bmp', 'image/BMP');
                $img_dimension  = getimagesize($_FILES['image']['tmp_name']);
                $valid_dimension= array(81, 81);

                if(array($img_dimension[0], $img_dimension[1]) != $valid_dimension){
					//header("location:add_testimonial.php?sysmsg=15");
                   // exit();
                }

                if($_FILES['image']['size'] > 3097152){
					header("location:add_testimonial.php?sysmsg=16");
                    exit();
                }

                if(in_array($ext, $validatefiles) == false){
                    header("location:add_testimonial.php?sysmsg=11");
                    exit();
                }

                if(in_array(strtolower($_FILES['image']['type']), $filetype) == false ){
                    header("location:add_testimonial.php?sysmsg=11");
                    exit();
                }

                $filename = basename($_FILES['image']['name'], $ext);
                $filename = 'main_'.time().'.'.$ext;
                $movefile = move_uploaded_file($_FILES['image']['tmp_name'], "../uploads/testimonial_images/".$filename);

                $where      = array(':id' => $insert_id);
                $img_params = array('image' => $filename);
                $update     = $objTypes->update("tbl_testimonial", $img_params, "id = :id", $where);
            }

			//PDF

		if(isset($_FILES['catalogue']['name']) && $_FILES['catalogue']['name'] != "")
		{
			
				$ext 			= pathinfo($_FILES['catalogue']['name'], PATHINFO_EXTENSION);
				$ext			= strtolower($ext);
				$validatefiles1 = array("pdf", "PDF");
				$filetype1 		= array('application/pdf','application/PDF');

				if(in_array($ext, $validatefiles1) == false){
				header("location:add_testimonial.php?sysmsg=35");
					exit();		
				}

				if(in_array(strtolower($_FILES['catalogue']['type']), $filetype1) == false ){
					header("location:add_testimonial.php?sysmsg=35");
					exit();	
				}
				
				
				if(isset($_FILES['catalogue']['name'])){	
				
					$ext 	  = pathinfo($_FILES['catalogue']['name'], PATHINFO_EXTENSION);
					$filename = basename($_FILES['catalogue']['name'], $ext);			
					$filename = 'catalogue_'.time().'.'.$ext;
					$movefile = move_uploaded_file($_FILES['catalogue']['tmp_name'], "../uploads/testimonial_pdf/".$filename);
				
				}
					//$UpdatePdfArray = array('catalogue' => $filename);
					$update_params = array(
					'catalogue'		=> $filename
					);
					//$objTypes->update($UpdatePdfArray,"id = '".$id."'");
					$params = array_merge($params, $update_params);
						$where  = array(
							':id'          => $insert_id
					);
			
					$updatepdf 	= $objTypes->update("tbl_testimonial", $params, "id = :id", $where);
		}
			header("location:add_testimonial.php?sysmsg=1000");
			exit();
        }
	}
    else{
		header("location:list_testimonial.php?sysmsg=3");
		exit();
	}
}

#==== UPDATE
if(($POST['SAVE']=="SAVE") && ($POST['id'] <> "")){

	$pgNo 	= intval(base64_decode($_REQUEST['pgNo']));
	$params = array(
		'title'	            => $POST['title'],
		'name'	            => $POST['name'],
		'designation'	    => $POST['designation'],
		'company'	        => $POST['company'],
        'ip'                => $ip,
        'agent'             => $agent,
        'updated_date'		=> date("Y-m-d H:i:s"),
        'updated_by'   		=> $_SESSION['SessAdminName']
	);

    $where = array(
		':id'          => $id
	);

    $update = $objTypes->update("tbl_testimonial", $params, "id = :id", $where);
	
	if($update){
		
        if($id > 0){
            if(isset($_FILES['image']['name']) && $_FILES['image']['name'] != ""){
                $ext            = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
                $ext            = strtolower($ext);
                $validatefiles 	= array("jpg", "bmp", "jpeg", "png", "gif","JPG", "BMP", "JPEG", "PNG", "GIF");
                $filetype 		= array('image/gif', 'image/png', 'image/jpeg', 'image/JPEG', 'image/PNG', 'image/GIF', 'image/bmp', 'image/BMP');
                $img_dimension  = getimagesize($_FILES['image']['tmp_name']);
                $valid_dimension= array(81, 81);

                if(array($img_dimension[0], $img_dimension[1]) != $valid_dimension){
					header("location:add_testimonial.php?id=".$id."&pgNo=".$pgNo."&sysmsg=15");
                    exit();
                }

                if($_FILES['image']['size'] > 3097152){
					header("location:add_testimonial.php?id=".$id."&pgNo=".$pgNo."&sysmsg=16");
                    exit();
                }

                if(in_array($ext, $validatefiles) == false){
                    header("location:add_testimonial.php?id=".$id."&pgNo=".$pgNo."&sysmsg=11");
                    exit();
                }

                if(in_array(strtolower($_FILES['image']['type']), $filetype) == false ){
                    header("location:add_testimonial.php?id=".$id."&pgNo=".$pgNo."&sysmsg=11");
                    exit();
                }

				$where      = array(':id' => $id);
				$imagename	= $objTypes->fetchRow("SELECT image FROM tbl_testimonial WHERE id = :id", $where);
				unlink("../uploads/testimonial_images/".$imagename['image']);

                $filename = basename($_FILES['image']['name'], $ext);
                $filename = 'main_'.time().'.'.$ext;
                $movefile = move_uploaded_file($_FILES['image']['tmp_name'], "../uploads/testimonial_images/".$filename);

                $img_params = array('image' => $filename);
                $update     = $objTypes->update("tbl_testimonial", $img_params, "id = :id", $where);
				
				
            }

			
			
			
			//PDF

			if(isset($_FILES['catalogue']['name']) && $_FILES['catalogue']['name'] != "")
			{
			
				$ext 			= pathinfo($_FILES['catalogue']['name'], PATHINFO_EXTENSION);
				$ext			= strtolower($ext);
				$validatefiles1 = array("pdf", "PDF");
				$filetype1 		= array('application/pdf','application/PDF');

				if(in_array($ext, $validatefiles1) == false){
					header("location:add_testimonial.php?sysmsg=35");
					exit();		
				}

				if(in_array(strtolower($_FILES['catalogue']['type']), $filetype1) == false ){
					header("location:add_testimonial.php?sysmsg=35");
					exit();	
				}
				
				
				if(isset($_FILES['catalogue']['name'])){	
				
					$ext 	  = pathinfo($_FILES['catalogue']['name'], PATHINFO_EXTENSION);
					$filename = basename($_FILES['catalogue']['name'], $ext);			
					$filename = 'catalogue_'.time().'.'.$ext;
					$movefile = move_uploaded_file($_FILES['catalogue']['tmp_name'], "../uploads/testimonial_pdf/".$filename);
				
				}
					//$UpdatePdfArray = array('catalogue' => $filename);
					$update_params = array(
					'catalogue'		=> $filename
					);
					//$objTypes->update($UpdatePdfArray,"id = '".$id."'");
					$params = array_merge($params, $update_params);
						$where  = array(
							':id'          => $id
					);
			
					$update_pdf 	= $objTypes->update("tbl_testimonial", $params, "id = :id", $where);
				
			}
			
			header("location:list_testimonial.php?sysmsg=1000&pgNo=".$pgNo);
			exit();
        }
	}
    else{
		header("location:add_testimonial.php?sysmsg=3");
		exit();
	}
}

#==== STATUS UPDATION
if(($_REQUEST['status']<>"") && ($_REQUEST['id'] <> "")){
	$statusVal  = intval($_REQUEST['status']);
	$status		= ($statusVal=='0') ? '1' : '0';
	$id			= intval($_REQUEST['id']);
	$pgNo 		= intval(base64_decode($_REQUEST['pgNo']));
    $params     = array("is_active" => $status);
	$where 		= array(":id" => $id);

	$update     = $objTypes->update("tbl_testimonial", $params, "id = :id", $where);
	if($update){
		header("location:list_testimonial.php?sysmsg=1001&pgNo=".$pgNo);
		exit();
	}
    else{
		header("location:list_testimonial.php?sysmsg=4&pgNo=".$pgNo);
		exit();
	}
}

#==== DELETE
if(($_REQUEST['action']=="delete") && ($_REQUEST['id'] <> ""))
{
	$id		= intval($_REQUEST['id']);
	$pgNo 	= intval(base64_decode($_REQUEST['pgNo']));
	$params	= array("is_delete" => '0');
	$where  = array(":id" => $id);
	$delete = $objTypes->update("tbl_testimonial", $params, "id = :id", $where);
	if($delete){
		header("location:list_testimonial.php?sysmsg=1002&pgNo=$pgNo");
		exit();
	}else{
		header("location:list_testimonial.php?sysmsg=4&pgNo=$pgNo");
		exit();
	}
}

#==== ACTIVE ALL
if(($POST['action']=="activeall") && ($_POST['DelCheckBox'] <> "")){
	$DelCheckBox	= $_POST['DelCheckBox'];
	$Result			= count($DelCheckBox);
	$pgNo 			= intval($_REQUEST['pgNo']);

	if($Result == "0"){
		header("location:list_testimonial.php?sysmsg=8&pgNo=$pgNo");
		exit();
	}
	$Delete	= implode(',', $DelCheckBox);
	$update = $objTypes->inquery("UPDATE tbl_testimonial SET is_active = '1' WHERE id IN ($Delete)");

	if($update > 0){
		header("location:list_testimonial.php?sysmsg=1012&pgNo=$pgNo");
		exit();
	}
    else{
		header("location:list_testimonial.php?sysmsg=13&pgNo=$pgNo");
		exit();
	}
}

#==== DEACTIVE ALL
if(($POST['action']=="deactiveall") && ($_POST['DelCheckBox'] <> "")){
	$DelCheckBox	= $_POST['DelCheckBox'];
	$Result			= count($DelCheckBox);
	$pgNo 			= intval($_REQUEST['pgNo']);

	if($Result == "0"){
		header("location:list_testimonial.php?sysmsg=9&pgNo=$pgNo");
		exit();
	}
    $Delete = implode(',',$DelCheckBox);
	$update = $objTypes->inquery("UPDATE tbl_testimonial SET is_active = '0' WHERE id IN ($Delete)");

	if($update > 0){
		header("location:list_testimonial.php?sysmsg=1013&pgNo=$pgNo");
		exit();
	}
    else{
		header("location:list_testimonial.php?sysmsg=14&pgNo=$pgNo");
		exit();
	}
}

#==== DELETE  ALL
if(($POST['action']=="deleteall") && ($_POST['DelCheckBox'] <> "")){
	$DelCheckBox	= $_POST['DelCheckBox'];
	$Result			= count($DelCheckBox);

	if($Result == "0"){
		header("location:list_testimonial.php?sysmsg=10");
		exit();
	}
	$Delete = implode(',',$DelCheckBox);
	$update = $objTypes->inquery("UPDATE tbl_testimonial SET is_delete = '0' WHERE id IN ($Delete)");

	if($update > 0){
		header("location:list_testimonial.php?sysmsg=1014");
		exit();
	}
    else{
		header("location:list_testimonial.php?sysmsg=4");
		exit();
	}
}

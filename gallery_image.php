<?php
require_once("config/config.php");

$POST		= $objTypes->validateUserInput($_POST);
$last_data=$POST['last_data'];
$sqlimage=$objTypes->fetchAll("select title1,title2,location,id,image1,thumbnail1 from tbl_adhesive where is_active=1 and type='image' and is_delete=1 order by id desc limit $last_data,6");
$img_html="";
if(count($sqlimage)>0){
				   foreach($sqlimage as $image_list){
					$image_gallery_list="";
					
					$sqlgallery=$objTypes->fetchAll('select thumb_image from tbl_gallery where event_id='.$image_list['id']); 
					$event_id=$image_list['id'];
					if(count($sqlgallery)>0){
						$image_array='';
						foreach($sqlgallery as $gallery){
						$image_array[]=base_url.'uploads/astral_adhesive_image/small/'.$gallery['thumb_image'];
						
						};
					}
					
					$image_gallery_list=implode(',',$image_array);
					//$img_html.=stripslashes($image_list['title1'])."/".stripslashes($image_list['title2'])."/".$image_gallery_list;
					 $img_html.="<div class='galleryBlurb'><h3>".stripslashes($image_list['title1'])." ".stripslashes($image_list['title2']).",".stripslashes($image_list['location'])."</h3>
									<div class='galleryImg'><a id='".$image_list['title2']."' data-links='".$image_gallery_list."' class='magnific-gallery'><img orgSrc='".base_url."uploads/astral_adhesive_image/large/".$image_list['image1']."' src='".base_url."assets/images/loader-gallery.gif' alt='' class='loader_gif'>
									<img class='gal_img' src='".base_url."uploads/astral_adhesive_image/large/".$image_list['image1']."' style='opacity: 1;'>
									</a></div>
									
								</div>";  
			
        
						$image_gallery_list="";
				   }
				 
			   }
  echo $img_html;
  
  
?>
<script type="text/javascript" src="<?=base_url?>assets/js/gallery.js"></script>

 
 
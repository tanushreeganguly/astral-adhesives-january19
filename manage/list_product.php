<?php
require_once("left.php");

#==== Validations For Security
$POST		= $objTypes->validateUserInput($_REQUEST);
$title	    =  ($POST['title']<>'') ? $POST['title'] : '' ;
$cat_type	 = ($POST['cat_type']<>'') ? $POST['cat_type'] : '' ;

#$condition	= "is_delete='1' " ;
#$where      = array(":is_delete" => '1');

if($POST['category']){
	$where =  " AND e1.category_id = ".$POST['category'];
}

if($title){
$select     = $objTypes->join_query("tbl_products_details AS e1 
	LEFT JOIN tbl_brands AS e3 ON ( e1.brand_id = e3.id ) LEFT JOIN tbl_categories AS e4 ON ( e1.category_id = e4.id )",
	"e1. * , e3.title as brand_name,e4.title as category_name",
	"e1.is_delete = 1 AND e1.title LIKE '%".$title."%'".$where,$bind,"e1.title ASC");
}
else{ 
	$select     = $objTypes->join_query("tbl_products_details AS e1 
	LEFT JOIN tbl_brands AS e3 ON ( e1.brand_id = e3.id ) LEFT JOIN tbl_categories AS e4 ON ( e1.category_id = e4.id )",
	"e1. * , e3.title as brand_name,e4.title as category_name",
	"e1.is_delete = 1".$where,$bind, "e1.title ASC");

}



#==== PAGINATION
$pgNo		= ($POST['pgNo']<>'') ? $POST['pgNo'] : intval($_REQUEST['pgNo']) ;
$url		= "<td align=center valign=middle><a href=javascript:getPage({pgNo})>{pgTxt}</a></td>";
$totalCount = sizeof($select);
$total		= ($totalCount > ADMIN_COUNT ) ? ADMIN_COUNT : $totalCount;
$totalPages	= ceil($totalCount/ADMIN_COUNT);
$pgNo		= ($pgNo > $totalPages)? $totalPages : $pgNo;
$pgNo		= ($pgNo < 1) ? 1 : $pgNo;
$from		= $pgNo * ADMIN_COUNT - ADMIN_COUNT;
$to 		= $from + ADMIN_COUNT;

$limit		= "$from,".ADMIN_COUNT;
$order		= 'title ASC';

if($POST['setpriority'] == 'Sort Order'){  
	for($i=0;$i<$total;$i++){   
		if(($POST["sortorder".$i]>=0)&&($POST['sortorder_id'.$i]>0)){
			$params = array('sortorder' => $POST["sortorder".$i]); 
			$where  = array(':id' => $POST['sortorder_id'.$i]);
			$update = $objTypes->update("tbl_products_details", $params, "id = :id", $where);	
		}
	} 
	header("location:list_product.php?sysmsg=1001&category=".$POST['category']);
	exit();
}

if($title){
    $TypeArray = $objTypes->join_query("tbl_products_details AS e1 
	LEFT JOIN tbl_brands AS e3 ON ( e1.brand_id = e3.id ) LEFT JOIN tbl_categories AS e4 ON ( e1.category_id = e4.id )",
	"e1. * , e3.title as brand_name,e4.title as category_name",
	"e1.is_delete = 1 AND e1.title LIKE '%".$title."%'".$where , $bind, "e1.title ASC", $limit);
}
else{
   
    $TypeArray = $objTypes->join_query("tbl_products_details AS e1 
	LEFT JOIN tbl_brands AS e3 ON ( e1.brand_id = e3.id ) LEFT JOIN tbl_categories AS e4 ON ( e1.category_id = e4.id )",
	"e1. * , e3.title as brand_name,e4.title as category_name",
	"e1.is_delete = 1".$where , $bind, "e1.title ASC", $limit);
}



//print_r($TypeArray); exit;

$bind   = array(':is_delete' => '1' , ':is_active' => '1',":category_type"=>"chemistry");
$sql	= "SELECT * FROM tbl_categories  WHERE is_delete = :is_delete AND is_active = :is_active AND category_type= :category_type ";
$CatArr = $objTypes->fetchAll($sql, $bind);

?>
<!-- Content Wrapper. Contains page content -->

<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> List Products <small></small> </h1>
    <ol class="breadcrumb">
      <li><a href="add_product.php"><i class="fa fa-plus-square"></i> Add Product</a></li>
    </ol>
  </section>
  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title"></h3>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <p>
            <div class="callout callout-danger errorDiv" <?php  $objSystemMsg->createStyle($sysmsg); ?>> <span id="errormessage"><?php echo $objSystemMsg->displayError($sysmsg); ?></span> </div>
            </p>
            <form id="frmListing" name="frmListing" action="<?=$_SERVER['PHP_SELF'];?>" method="post">
            <input type="hidden" name="action" id="action" value="">
            <input type="hidden" id="pgNo" name="pgNo"  value="<?php echo $pgNo; ?>"/>
             <input type="hidden" id="title" name="title"  value="<?php echo $title; ?>"/>
              <input type="hidden" id="cat_type" name="cat_type"  value="<?php echo $cat_type; ?>"/>
              
            <table id="example2" class="table table-bordered table-hover" >
              <thead>
              <tr>
                <td colspan="3">
                 <div class="input-group">
                  <input type="text" name="title" placeholder="Title..." class="form-control" value="<?=$title?>">
                      <span class="input-group-btn">
                        <button type="submit" class="btn btn-success btn-flat">Search</button>
                      </span>
                </div>
                
                </td>
                
                <td colspan="6">
                 <div class="input-group">Select Category : 
                <select class="form-control select2" id="category" name="category" data-placeholder="Select Category ..." onchange="frmListing.submit();" >
                <option value="">Select Category ...</option>
                  <?php 
				  if($CatArr){
				  	foreach($CatArr as $categoryValue){
				  ?>
                  <option value="<?=$categoryValue['id']?>" <?=($categoryValue['id']==$POST['category']) ? "selected" : '' ?>><?=stripslashes($categoryValue['title'])?></option>
                  <?php } } ?>
                </select>                
                  
                  <!--<span class="input-group-btn">
                    <button type="submit" class="btn btn-success btn-flat">Search</button>
                  </span>-->
                </div>
                </td>
             
             
             </tr>
           
                
                
                
                <tr>
                  <th width="1%"><input type="checkbox" id="selectall"/></th>
                  <th width="4%">#</th>
                  <th width="15%">Product Name</th>
				  <th width="30%">Application Name</th>
				  <th width="15%">Category Name</th>
                  <th width="15%">Brand Name</th>
                   <!--<th width="10%"><input type="submit" name="setpriority" id="setpriority" class="btn btn-block btn-danger btn-sm" value="Sort Order"></th>-->
                  <th width="10%">Status</th>
                  <th width="15%">Action</th>
                </tr>
              </thead>
              <tbody>
              <?php
			  if($TypeArray){
			  	foreach($TypeArray as $key=>$val){
					$TypeArray	= $objTypes->fetchRow("SELECT title as application FROM tbl_categories WHERE id =".$val['application_id'], $params);
				if($page=='1'){$sino = $key+1;}else{$sino = ($pgNo-1)*ADMIN_COUNT+($key+1);}
			  ?>
                <tr>
                  <td><input type="checkbox" class="case" id="DelCheckBox[]" name="DelCheckBox[]" value="<?=$val['id']?>"/></td>
                  <td><?=$sino;?></td>
                  <td><?=stripslashes($val['title'])?></td>
				  <td><?=stripslashes($TypeArray['application'])?></td>
				  
				  <td><?=stripslashes($val['category_name'])?></td>
                  <td>				  
				  <?=stripslashes($val['brand_name'])?>
				 </td>
                <!-- <td align="center">                  
                  <input type="text" id="sortorder<?php echo $key; ?>" name="sortorder<?php echo $key; ?>"  value="<?php echo $val['sortorder']; ?>" onkeypress="return validateNumbersOnly(event)"  style="width:30px; text-align:center;"/>
                  <input type="hidden" id="sortorder_id<?php echo $key; ?>" name="sortorder_id<?php echo $key; ?>"  value="<?php echo $val['id']; ?>"  />                               
                 </td>-->
                  <td><a href="act_product.php?id=<?=$val['id']?>&status=<?=$val['is_active']?>&title=<?=$title?>&pgNo=<?=base64_encode($pgNo)?>">
                    <?=($val['is_active'] == "1") ? "<span class='label label-success'>Active</span>":"<span class='label label-danger'>Inactive</span>" ?>
                    </a> </td>
                  <td>
                  <a href="add_product.php?id=<?=$val['id']?>&pgNo=<?=base64_encode($pgNo)?>"><i class="fa  fa-edit"></i></a>&nbsp;&nbsp;&nbsp;
                  <a href="act_product.php?id=<?=$val['id']?>&pgNo=<?=base64_encode($pgNo)?>&title=<?=$title?>&action=delete" onclick="return window.confirm('Do you want to delete this record?')"><i class="fa  fa-trash"></i></a>
                  </td>
                </tr>
                <?php } }  else { print "<tr><td colspan='9'> NO Records Found !!!</td></tr>";} ?>
              </tbody>
              <tr><td colspan="4">
              <div class="row"><div class="col-sm-12">
              <a class="btn btn-success btn-xs" onclick="javascript:Active_CheckBox()">Active All &nbsp;&nbsp;<i class="fa fa-thumbs-up"></i></a>
              <a class="btn btn-warning btn-xs" onclick="javascript:Deactive_CheckBox()">Deactive All &nbsp;&nbsp;<i class="fa fa-thumbs-down"></i></a>
              <a class="btn btn-danger btn-xs" onclick="javascript:Delete_CheckBox()">Delete All &nbsp;&nbsp;<i class="fa fa-trash"></i></a>
              </div></div>
              </td>
              <td colspan="5">
                <table border="0" cellspacing="1" cellpadding="1" align="right">
                <tr class="sidelink">
                <?php if($totalPages > 1){ echo $objTypes->getPageLink($pgNo, $totalPages, $url, $count); } ?>
                </tr>
                </table>
              </td>
              </tr>
            </table>
           </form>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
        <!-- /.box -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?php require_once("footer.php"); ?>
</div>
<!-- ./wrapper -->
<!-- jQuery 2.1.4 -->
<script src="<?=base_url?>plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="<?=base_url?>bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- Select2 -->
<script src="<?=base_url?>plugins/select2/select2.full.min.js"></script>
<!-- DATA TABES SCRIPT -->
<script src="<?=base_url?>plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="<?=base_url?>plugins/datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>
<!-- SlimScroll -->
<script src="<?=base_url?>/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- FastClick -->
<script src='<?=base_url?>plugins/fastclick/fastclick.min.js'></script>
<!-- AdminLTE App -->
<script src="<?=base_url?>dist/js/app.min.js" type="text/javascript"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?=base_url?>dist/js/demo.js" type="text/javascript"></script>
<!-- page script -->
<!--<script type="text/javascript">
  $(function () {
   // $("#example1").dataTable();
	$('#example2').dataTable({
	  "bPaginate": true,
	  "bLengthChange": false,
	  "bFilter": false,
	  "bSort": false,
	  "bInfo": true,
	  "bAutoWidth": false
	});
  });
</script>-->
<script>
  $(function () {
    //Initialize Select2 Elements
    $(".select2").select2();
	  });
</script>
<script type="text/javascript" language="javascript">
var sysmsg = "<?=$sysmsg?>";
if(sysmsg==0){
	$(".errorDiv").hide();
}else{
	$(".errorDiv").show().fadeOut(4000);
}
</script>
<script type="text/javascript" language="javascript">
function getPage(pgNo)
{
	//alert(pgNo);
	document.getElementById('pgNo').value = parseInt(pgNo);
	//document.getElementById('cat_type').value = cat_type;
	document.frmListing.submit();
	return false;
}
</script>
<script type="text/javascript">
$('#selectall').click(function() {
   if (this.checked) {
       $(':checkbox').each(function() {
           this.checked = true;
       });
   } else {
      $(':checkbox').each(function() {
           this.checked = false;
       });
   }
});
// multiple checkbox check and uncheck
$(function(){

    // add multiple select / deselect functionality
    $("#selectall").click(function () {
          $('.case').attr('checked', this.checked);
    });

    // if all checkbox are selected, check the selectall checkbox
    // and viceversa
    $(".case").click(function(){

        if($(".case").length == $(".case:checked").length) {
            $("#selectall").attr("checked", "checked");
        } else {
            $("#selectall").removeAttr("checked");
        }

    });
});
</script>
<script type="text/javascript">
// multiple checkbox check and uncheck for Delete all purpose
function Delete_CheckBox()
{
	var numberOfChecked = $('input:checkbox:checked').length;

	if(numberOfChecked>=1)
	{
		if(confirm("Are you sure  want to Delete Selected Record ?."))
		{
			$("#action").attr("value","deleteall");
			document.frmListing.action='act_product.php?action=deleteall';
			document.frmListing.submit();
		}
	}
	else
	{
		alert("Please select at least one record.");
		return false;
	}
}
// multiple checkbox check and uncheck for Active all purpose
function Active_CheckBox()
{
	var numberOfChecked = $('input:checkbox:checked').length;
	if(numberOfChecked>=1)
	{
		if(confirm("Are you sure  want to Activate Selected Record ?."))
		{
			$("#action").attr("value","activeall");
			document.frmListing.action='act_product.php';
			document.frmListing.submit();
		}
	}
	else
	{
		alert("Please select at least one record.");
		return false;
	}
}
// multiple checkbox check and uncheck for Deactive all purpose
function Deactive_CheckBox()
{
	var numberOfChecked = $('input:checkbox:checked').length;

	if(numberOfChecked>=1)
	{
		if(confirm("Are you sure  want to Deactivate Selected Record ?."))
		{
			$("#action").attr("value","deactiveall");
			document.frmListing.action='act_product.php';
			document.frmListing.submit();
		}
	}
	else
	{
		alert("Please select at least one record.");
		return false;
	}
}
</script>
</body></html>

<?php
ob_start();
session_start();
include_once('admin/database.php');
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Home</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/success.css">
<link rel="stylesheet" href="css/category.css">
<link rel="stylesheet" href="css/cart.css">
<link rel="stylesheet" href="css/product.css">
<link rel="stylesheet" href="css/search.css">
<script src="js/jquery-3.3.1.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<body>

<!--	Header	-->
<div id="header">
	<div class="container">
    	<div class="row">
        	<?php
           //logo
		   include_once('modules/logo/logo.php');
		   //search box
		   		   include_once('modules/search/search_box.php');
		   //cart1
		   		   include_once('modules/cart/cart1.php');
            ?>
        </div>
    </div>
    <!-- Toggler/collapsibe Button -->
   <?php
   //Menu reponsive
   		   include_once('modules/category/menu_reponsive.php');
   ?>
</div>
<!--	End Header	-->

<!--	Body	-->
<div id="body">
	<div class="container">
    	<div class="row">
        	<div class="col-lg-12 col-md-12 col-sm-12">
            	<nav>
                	<?php
					//menu
					  include_once('modules/category/menu.php');
					?>
                </nav>
            </div>
        </div>
        <div class="row">
        	<div id="main" class="col-lg-8 col-md-12 col-sm-12">
            	<!--	Slider	-->
                <?php
				//slide
				  include_once('modules/slide/slide.php');
				?>
                <!--	End Slider	-->
                
                <?php
				//Master page
				if(isset($_GET['page_layout'])){
					
					switch($_GET['page_layout']){
					case 'category': include_once('modules/category/category.php');
					break;	
					case 'product': include_once('modules/product/product.php');
					break;
					case 'search': include_once('modules/search/search.php');
					break;
					case 'cart': include_once('modules/cart/cart.php');
					break;
					case 'success': include_once('modules/cart/success.php');
					break;
					}
				}
				else{
					include_once('modules/product/prd_featured.php');
					include_once('modules/product/prd_latest.php');
				}
				?>
            
                
                
            </div>
            
            <div id="sidebar" class="col-lg-4 col-md-12 col-sm-12">
            	<?php
				//banner
				  include_once('modules/banner/banner.php');
				?>
                </div>
            </div>
        </div>
    </div>
</div>
<!--	End Body	-->

<div id="footer-top">
	<div class="container">
    	<div class="row">
     
            <?php
			//logo footer
			  include_once('modules/logo/logo_footer.php');
			
			//address
			  include_once('modules/address/address.php');
			//service
			  include_once('modules/service/service.php');
			//hotline
			  include_once('modules/hotline/hotline.php');
			?>
          
           
        </div>
    </div>
</div>

<!--	Footer	-->
<?php
//footer
  include_once('modules/footer/footer.php');
?>
<!--	End Footer	-->













</body>
</html>

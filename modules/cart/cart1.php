<div id="cart" class="col-lg-3 col-md-3 col-sm-12">
            	<a class="mt-4 mr-2" href="cart.php">giỏ hàng</a><span class="mt-3">
                <?php
				if(isset($_SESSION['cart'])){         // kiểm tra mảng sesion
					echo count($_SESSION['cart']);    // đếm mảng
				}
				else{
					echo 0;               // nếu ko mua hàng cho = 0
				}
				?>
                </span>
            </div>
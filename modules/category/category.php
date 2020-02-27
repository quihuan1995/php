<?php
$cat_id= $_GET['cat_id'];
$cat_name= $_GET['cat_name'];
$sql ="SELECT * FROM product
	   WHERE cat_id = $cat_id ";
$query = mysqli_query($conn , $sql);
$rows = mysqli_num_rows($query);
?>
                
                <!--	List Product	-->
                <div class="products">
                    <h3><?php echo $cat_name;?> (hiện có <?php echo $rows;?> sản phẩm)</h3>
                    <?php
					$i=0;
					while($row = mysqli_fetch_array($query)){
						if($i==0){
					?>
					<div class="product-list card-deck">
							
                    <?php
						}
					?>
                        <div class="product-item text-center card">
                            <a href="index.php?page_layout=product&prd_id=<?php echo $row['prd_id']; ?>"><img src="admin/img/product/<?php echo $row['prd_image']; ?>"></a>
                            <h4><a href="index.php?page_layout=product&prd_id=<?php echo $row['prd_id']; ?>"><?php echo $row['prd_name'];?></a></h4>
                            <p>Giá Bán: <span><?php echo $row['prd_price']; ?></span></p>
                        </div>
                       <?php
					   $i++;
					   if($i==3){  
						   $i=0;
					   
					   ?>
					  
					   </div>
					 <?php 
					   }
					}
					if($i%3!=0){
						?>
						</div>
                        
					<?php
					 
					}
					?>
                       
                    
                </div>
                <!--	End List Product	-->
                       <?php
							if(isset($_GET['page'])){
								$page=$_GET['page'];
							}
							else{
								$page=1;
							}
							$rows_per_page=30;
							$per_row= $page*$rows_per_page-$rows_per_page;
							
							$total_rows=mysqli_num_rows(mysqli_query($conn, "SELECT * FROM product"));
							$total_pages=ceil($total_rows/$rows_per_page);
							$list_page='';
							
							//preview
							$prev = $page - 1;
							if($prev < 1){
								$prev = 1;
							}
							$list_page.='<li class="page-item"><a class="page-link" href="index.php?page_layout='.$prev.'">Trang truoc</a></li>';
							
							for($i=1; $i<=$total_pages; $i++){
								$list_page.= '<li class="page-item"><a class="page-link" href="index.php?page_layout='.$i.'">'.$i.'</a></li>';
							}
							//next
							$next = $page + 1;
							if($next >= $total_pages){
								$next = $total_pages;
							}
							$list_page.='<li class="page-item"><a class="page-link" href="index.php?page_layout='.$next.'">Trang sau</a></li>';
							
							
							?>
                <div id="pagination">
                    <ul class="pagination">
                     <?php echo $list_page; ?>
                    </ul> 
                </div>
                
            
            
           
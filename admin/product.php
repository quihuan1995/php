<?php
include_once('header.php');
?>
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Danh sách sản phẩm</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Danh sách sản phẩm</h1>
			</div>
		</div><!--/.row-->
		<div id="toolbar" class="btn-group">
            <a href="add_product.php" class="btn btn-success">
                <i class="glyphicon glyphicon-plus"></i> Thêm sản phẩm
            </a>
        </div>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
                        <table 
                            data-toolbar="#toolbar"
                            data-toggle="table">

						    <thead>
						    <tr>
						        <th data-field="id" data-sortable="true">ID</th>
						        <th data-field="name"  data-sortable="true">Tên sản phẩm</th>
                                <th data-field="price" data-sortable="true">Giá</th>
                                <th>Ảnh sản phẩm</th>
                                <th>Trạng thái</th>
                                <th>Danh mục</th>
                                <th>Hành động</th>
						    </tr>
                            </thead>
                            <tbody>
                            <?php
							if(isset($_GET['page'])){     //kiểm tra phương thức Get page
								$page=$_GET['page'];
							}
							else{
								$page=1;                   // nếu cho page =1
							}
							$rows_per_page=5;              // cho row-per-page= số bất kỳ tùy theo số lượng sản phẩm
							$per_row= $page*$rows_per_page-$rows_per_page;    // công thức tính per-row
							
							$total_rows=mysqli_num_rows(mysqli_query($conn, "SELECT * FROM product"));  // lọc dữ liệu database từ sản phẩm
							$total_pages=ceil($total_rows/$rows_per_page);    // công thức tính tổng page
							$list_page='';     								//cho list page = rỗng
							
							//preview
							$prev = $page - 1;
							if($prev < 1){
								$prev = 1;
							}
							$list_page.='<li class="page-item"><a class="page-link" href="product.php?page='.$prev.'">&laquo;</a></li>';
							
							for($i=1; $i<=$total_pages; $i++){
								$list_page.= '<li class="page-item"><a class="page-link" href="product.php?page='.$i.'">'.$i.'</a></li>';
							}
							//next
							$next = $page + 1;
							if($next >= $total_pages){
								$next = $total_pages;
							}
							$list_page.='<li class="page-item"><a class="page-link" href="product.php?page='.$next.'">&raquo;</a></li>';
							
							$sql= "SELECT * FROM product
									INNER JOIN category
									ON product.cat_id=category.cat_id
									LIMIT $per_row, $rows_per_page";              // LIMIT lấy số lượng sản phẩm có trong database
							
							$query = mysqli_query($conn, $sql);	
							while($row = mysqli_fetch_array($query)){
							?>
                                    <tr>
                                        <td style=""><?php echo $row['prd_id']; ?></td>
                                        <td style=""><?php echo $row['prd_name']; ?></td>
                                        <td style=""><?php echo $row['prd_price']; ?></td>
                                        <td style="text-align: center"><img width="130" height="180" src="img/product/<?php echo $row['prd_image']; ?>" /></td>
                                        <td><span class="label label-<?php 
										if ($row['prd_status']==0)
										{ 
												   echo 'danger';
												} 
													else{
										 				echo 'success';
												} 
											?>
                                            ">
										<?php if ($row['prd_status']==0){ 
												   echo 'hết hàng';
												} 
													else{
										 				echo 'còn hàng';
												} 
											?>
                                            </span></td>
                                        <td><?php echo $row['cat_name']; ?></td>
                                        <td class="form-group">
                                            <a href="edit_product.php?prd_id=<?php echo $row['prd_id']; ?>" class="btn btn-primary"><i class="glyphicon glyphicon-pencil"></i></a>
                                            <a onClick=" return product()"  href="del_product.php?prd_id=<?php echo $row['prd_id']; ?>" class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                                        </td>
                                    </tr>
                                   <?php
								   }
								   ?>
                                 </tbody>
						</table>
                    </div>
                    <div class="panel-footer">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                
                                <?php echo $list_page; ?>
                                
                                
                            </ul>
                        </nav>
                    </div>
				</div>
			</div>
		</div><!--/.row-->	
	</div>	<!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-table.js"></script>	
	<script>
		function product(){
			var conf=confirm("Are you want to del this product?");
			return conf;	
		}
	</script>
<?php
include_once('footer.php');
?>

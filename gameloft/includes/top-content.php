
<?php 
		
	// count qty product by type
	// count HANHDONG product
	$hanhdong = "SELECT count(sku_product) as total FROM product WHERE id_type = 33 AND flag = 1";
	$rs_hanhdong = mysqli_query($conn, $hanhdong);
	$row_hanhdong = mysqli_fetch_array($rs_hanhdong);
	$total_hanhdong = $row_hanhdong['total'];

	// count nhapvai product
	$nhapvai = "SELECT count(sku_product) as total FROM product WHERE id_type = 35 AND flag = 1";
	$rs_nhapvai = mysqli_query($conn, $nhapvai);
	$row_nhapvai = mysqli_fetch_array($rs_nhapvai);
	$total_nhapvai= $row_nhapvai['total'];

	// count chienthuat product
	$chienthuat = "SELECT count(sku_product) as total FROM product WHERE id_type = 17 AND flag = 1";
	$rs_chienthuat = mysqli_query($conn, $chienthuat);
	$row_chienthuat = mysqli_fetch_array($rs_chienthuat);
	$total_chienthuat = $row_chienthuat['total'];
?>

				<!-- navbar mobile -->
				<div class="slider">
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
					  	<div class="carousel-inner">
	<?php 
		// get slider active
		$slider_ac = "SELECT id_slider, image, link FROM slider ORDER BY id_slider DESC LIMIT 1";
		$rs_slider_ac = mysqli_query($conn, $slider_ac);
		$row_slider_ac = mysqli_fetch_array($rs_slider_ac);
		$id_slider_ac = $row_slider_ac['id_slider'];
	?>
						    <div class="carousel-item active">
						    	<a href="<?php echo $row_slider_ac['link']; ?>">
						      		<img class="d-block w-100" src="admin/pages/public/images/sliders/<?php echo $row_slider_ac['image']; ?>" alt="<?php echo $row_slider_ac['image']; ?>">
						      	</a>
						    </div>
	<?php

		// get slider active
		$slider = "SELECT image, link FROM slider WHERE id_slider <> $id_slider_ac ORDER BY id_slider DESC";
		$rs_slider = mysqli_query($conn, $slider);
		while($row_slider = mysqli_fetch_array($rs_slider))
		{
	?>
						    <div class="carousel-item">
						    	<a href="<?php echo $row_slider['link']; ?>">
						      		<img class="d-block w-100" src="admin/pages/public/images/sliders/<?php echo $row_slider['image']; ?>" alt="<?php echo $row_slider['image']; ?>">
						      	</a>
						    </div>
	<?php 
		}
		// end slider
	?>
					  	</div>
					  	<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
					    	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    	<span class="sr-only">Previous</span>
					 	</a>
					  	<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
					    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
					    	<span class="sr-only">Next</span>
					  	</a>
					</div>
				</div>
				<!-- slider -->
			</div>
			<!-- bot header -->
		</div>
		<!-- header -->
		<div id="content">
			<div class="top_content">
				<div class="container">
					<div class="row">
						<div class="col-4 sm_hidden">
							<div class="box">
								<a href="loai-san-pham/Hanh-dong-33-1.html">
									<div class="figure">
										<img src="public/images/hanhdong.jpg" alt="hanhdong">
										<div class="caption">
											<div class="about">
												<h2>GAME HÀNH ĐỘNG</font></h2>
												<p>Mãn nhãn với những pha hành động trong game</p>
												<p>
													Hiện có <?php echo number_format($total_hanhdong); ?>
												</p>
											</div>
										</div>
									</div>
								</a>
							</div>
							<!-- box banner -->
						</div>
						<!-- col-lg-4 -->
						<div class="col-4 sm_hidden">
							<div class="box">
								<a href="loai-san-pham/Nhap-vai-35-1.html">
									<div class="figure">
										<img src="public/images/nhapvai.jpg" alt="nhapvai.jpg">
										<div class="caption">
											<div class="about">
												<h2>GAME NHẬP VAI</font></h2>
												<p>Trải nghiệm cảm giác "iseikai" ở một thế giới khác</p>
												<p><?php echo number_format($total_nhapvai); ?> games</p>
											</div>
										</div>
									</div>
								</a>
							</div>
							<!-- box banner -->
						</div>
						<!-- col-lg-4 -->
						<div class="col-4 sm_hidden">
							<div class="box">
								<a href="loai-san-pham/Chien-thuat-37-1.html">
									<div class="figure">
										<img src="public/images/chienthuat.jpg" alt="chienthuat.jpg">
										<div class="caption">
											<div class="about">
												<h2>GAME CHIẾN THUẬT</h2>
												<p>Đốt não với những game đòi hỏi sự tinh tế và kiên nhẫn</p>
												<p><?php echo number_format($total_chienthuat); ?> games</p>
											</div>
										</div>
									</div>
								</a>
							</div>
							<!-- box banner -->
						</div>
						<!-- col-lg-4 -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- top content -->
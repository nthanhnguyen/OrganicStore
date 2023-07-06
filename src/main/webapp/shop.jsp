<%@page import="BO.ProductsBO"%>
<%@page import="model.Products"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page pageEncoding="utf-8"%>
<%@ page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sản Phẩm</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<jsp:include page="layout/head.jsp"></jsp:include>

</head>

<body>
<%String type =(String) request.getAttribute("TYPE"); %>
	<!-- Thêm phần tiêu đề trang -->
	<jsp:include page="layout/header.jsp"></jsp:include>
	<!-- Xong phần tiêu đề trang -->
	<!-- Hero Section Begin -->

	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="viewroot/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
					<% if("MH".equals(type)){ %>
						<h2>MÔ HÌNH</h2>
						<%}else{ %>
						<h2>SẢN PHẨM</h2>
						<%} %>
						<div class="breadcrumb__option">
							<a href="Home">Home</a> <span>Shop</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4> Danh mục</h4>
							<ul>
								<%
								ArrayList<Category> category = (ArrayList<Category>) request.getAttribute("lstCategory");
								
								long id =Long.parseLong((String)request.getAttribute("ID"));
								for (Category ls : category) {
									if(type!=null && type.equals(ls.getType())){
										if(ls.getId()==id){
								%>
								<li style="display: flex;"><input type="radio" checked="checked" name="category" value="<%=ls.getId()%>"> <a
									href="HomeProductsServlet?type=<%=type%>&id_category=<%=ls.getId()%>"><%=ls.getTenLoaiSanPham()%></a></li>
									<%}else { %>
									
									<li style="display: flex;" ><input type="radio" name="category" value="<%=ls.getId()%>"> <a
									href="HomeProductsServlet?type=<%=type%>&id_category=<%=ls.getId()%>"><%=ls.getTenLoaiSanPham()%></a></li>
									
									
								<%}
									}
								}
								%>
							</ul>
						</div>
				 <% if(type!=null && "MH".equals(type)){ %>
						<div class="sidebar__item sidebar__item__color--option">
							<h4>Diện Tích</h4>
							<% String dT=(String)request.getAttribute("DT"); %>
							<% if(dT!=null && "S1".equals(dT)){
								%>
								<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="dientich" checked="checked" value="S1"  onclick="handleClick()">Dưới 30m2
							</div>
							<%}else{ %>
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="dientich" value="S1"  onclick="handleClick()">Dưới 30m2
							</div>
							
							<%} %>
							
							<% if(dT!=null && "S2".equals(dT)){
								%>
								<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio"  checked="checked" name="dientich" value="S2"  onclick="handleClick()">30-50m2
							</div>
							<%}else{ %>
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="dientich" value="S2"  onclick="handleClick()">30-50m2
							</div>
							<%} %>
							<% if(dT!=null && "S3".equals(dT)){
								%>
								<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" checked="checked" name="dientich" value="S3"  onclick="handleClick()">50-80m2
							</div>
							<%}else{ %>
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="dientich" value="S3"  onclick="handleClick()">50-80m2
							</div>
							<%} %>
							<% if(dT!=null && "S4".equals(dT)){
								%>
								<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" checked="checked" name="dientich" value="S4"  onclick="handleClick()">trên 80m2
							</div>
							<%}else{ %>
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="dientich" value="S4"  onclick="handleClick()">trên 80m2
							</div>
							
							<%} %>
							
							
						
						</div>
						<div class="sidebar__item sidebar__item__color--option">
							<h4>Máy Lạnh</h4>
							<% String ml=(String)request.getAttribute("ML"); %>
							<% if(ml!=null && "on".equals(ml)){
								%>
								<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" checked="checked" value="on"  name="maylanh" onclick="handleClick()" >Có
			
							</div>
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="maylanh" value="off"  onclick="handleClick()" >Không
							</div>
							<%}else{ %>
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio"  value="on"  name="maylanh" onclick="handleClick()" >Có
			
							</div>
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" checked="checked" name="maylanh" value="off"  onclick="handleClick()" >Không
							</div>
							<%} %>
							
						</div>
						<div class="sidebar__item sidebar__item__color--option">
							<h4>Hướng</h4>
							<% String h=(String)request.getAttribute("H"); %>
							<% if(h!=null && "H1".equals(h)){
								%>
								
								<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="huong" value="H1"  checked="checked" onclick="handleClick()">Chánh Đông
			
							</div>
							<%}else{ %>
							
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="huong" value="H1"   onclick="handleClick()">Chánh Đông
							</div>
							<%} %>
							<% if(h!=null && "H2".equals(h)){
								%>
								<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="huong" value="H2"  checked="checked" onclick="handleClick()">Chánh Nam
			
							</div>
							<%}else{ %>
							
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="huong" value="H2"   onclick="handleClick()">Chánh Nam
							</div>
							<%} %>
							<% if(h!=null && "H3".equals(h)){
								%>
								<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="huong" value="H3"  checked="checked" onclick="handleClick()">Chánh Tây
			
							</div>
							<%}else{ %>
							
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="huong" value="H3"   onclick="handleClick()">Chánh Tây
							</div>
							<%} %>
							
			
							<% if(h!=null && "H4".equals(h)){
								%>
								<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="huong" value="H4"  checked="checked" onclick="handleClick()">Chánh Bắc
			
							</div>
							<%}else{ %>
							
							<div class="sidebar__item__color sidebar__item__color--white">
								<input type="radio" name="huong" value="H4"   onclick="handleClick()">Chánh Bắc
							</div>
							<%} %>
							
						</div>
					<%} %>
					</div>
				</div>
				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2>Sản phẩm</h2>
						</div>
						<div class="row">
							<div class="product__discount__slider owl-carousel">
								<%
								DecimalFormat numformatx = new DecimalFormat("#,###,###");
								//Lấy ra danh sách sản phẩm
								//ArrayList<Products> list = s.getAllProDuctsLimit(first, last);
								ArrayList<Products> lists = (ArrayList<Products>) request.getAttribute("listsC");

								for (Products ls : lists) {
									if (ls.getId_loaiSanPham() == 15) {
								%>
								<div class="col-lg-4">
									<div class="product__discount__item">
										<div class="product__discount__item__pic set-bg"
											data-setbg="viewroot/img/shop/product/<%=ls.getAnhChinh()%>">
											<div class="product__discount__percent"><%=ls.getKhuyenMai()%></div>
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="#" onclick="addProductToCart(<%=ls.getId()%>)"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__discount__item__text">
											<span></span>
											<h5>
												<a href="HomeProductsDetail?id=<%=ls.getId()%>"><%=ls.getTenSanPham()%></a>
											</h5>
											<div class="product__item__price">
												<%=ls.getGiaGoc()%>
											</div>
										</div>
									</div>
								</div>
								<%
								}
								}
								%>
							</div>
						</div>
					</div>
					<div class="filter__item">
						<div class="row">
							<div class="col-lg-4 col-md-5">
<!-- 								<div class="filter__sort">
									<span>Sort By</span> <select>
										<option value="0">Default</option>
										<option value="0">Default</option>
									</select>
								</div> -->
							</div>
							<div class="col-lg-4 col-md-4">
								<div class="filter__found">
									<h6>
										<span>16</span> Products found
									</h6>
								</div>
							</div>
<!-- 							<div class="col-lg-4 col-md-3">
								<div class="filter__option">
									<span class="icon_grid-2x2"></span> <span class="icon_ul"></span>
								</div>
							</div> -->
						</div>
					</div>
					<div class="row">
						<%
						DecimalFormat numformat = new DecimalFormat("#,###,###");
						//Lấy ra danh sách sản phẩm
						//ArrayList<Products> list = s.getAllProDuctsLimit(first, last);
						ArrayList<Products> list = (ArrayList<Products>) request.getAttribute("lstProducts");

						for (Products ls : list) {
						%>
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item">
								<div class="product__item__pic set-bg"
									data-setbg="viewroot/img/shop/product/<%=ls.getAnhChinh()%>">
									<ul class="product__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a href="#"><i class="fa fa-retweet"></i></a></li>
										<li><a href="#" onclick="addProductToCart(<%=ls.getId()%>)"><i class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6>
										<a  href="HomeProductsDetail?id=<%=ls.getId()%>"><%=ls.getTenSanPham()%></a>
									</h6>
									<p><%=ls.getKhuyenMai()%>%</p>
									<%
									double price = ls.getGiaGoc();
									int sale = ls.getKhuyenMai();
									price = price - (price * sale / 100);
									String price_nb = numformat.format(price);
									%>
									<h5><%=price_nb%>
										đ
									</h5>
								</div>
							</div>
						</div>
						<%
						}
						%>
					</div>
<%-- 					<div class="product__pagination">
						<%
						ArrayList<Integer> pages = (ArrayList<Integer>) request.getAttribute("page");
						for (int number :pages){
							
						%>
						<a href="HomeProductsServlet?page=<%=number%>"><%=number%></a> 
							<%} %>
							 <i
							class="fa fa-long-arrow-right"></i>
					</div>  --%>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->

	<jsp:include page="layout/btncontact.jsp"></jsp:include>

	<!-- Footer Section Begin -->
	<!-- Thêm chân trang -->
	<jsp:include page="layout/footer1.jsp"></jsp:include>
	<!-- Xong thêm chân trang -->
  <script type="text/javascript">
  function handleClick(){
	 var dientich=$('input[name="dientich"]:checked').val();
	 var huong=$('input[name="huong"]:checked').val();
	 var maylanh=$('input[name="maylanh"]:checked').val();
	 var category =$('input[name="category"]:checked').val();
	 
	  location.href = "/OganicStore/HomeProductsServlet?type=MH&id_category="+category+"&dientich="+dientich+"&huong="+huong+"&maylanh="+maylanh;
  }
  </script>
</body>

</html>
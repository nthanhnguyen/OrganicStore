<%@page import="model.Category"%>
<%@page import="model.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.Writer"%>
<%@page import="model.Category"%>
<%@page import="BO.CategoryBO"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
<title>Nông Trường Sạch</title>
<!-- Thêm chân trang -->
<jsp:include page="layout/head.jsp"></jsp:include>
<!-- Xong thêm chân trang -->

	  <!-- HTML -->
      
      <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
      <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
      <script src="https://kit.fontawesome.com/27d9909a11.js" crossorigin="anonymous"></script>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>vegetable Organic</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="viewroot/css/bootstrap.min1.css">
      <!-- style css -->
      <link rel="stylesheet" href="viewroot/css/style4.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="viewroot/css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="viewroot/images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="viewroot/css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

      <!-- HTML -->
</head>

<body>
	<!-- Thêm phần tiêu đề trang -->
	<jsp:include page="layout/header.jsp"></jsp:include>
	<!-- Xong phần tiêu đề trang -->
	
	<!--HTML-->
	      <section class="banner_main">
         <div class="container">
            <div class="row">
               <div class="col-md-12 ">
                  <div class="text-bg">
                     <h1>vegetable ORGANIC</h1>
                     <!-- <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it</p> -->
                     <a href="/OganicStore/HomeProductsServlet?type=MH&id_category=52">Tự tạo khu vườn cho riêng mình!!</a>
                     
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end banner -->
      <!-- three_box -->
      <div class="three_box">
         <div class="container">
            <div class="row">
               <div class="col-md-4 hinh1">
                  <div class="box_text">
                     <figure><img src="viewroot/images1/thump3.jpg" alt="#"/></figure>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="box_text hinh2">
                     <figure><img src="viewroot/images1/thump1.jpg" alt="#"/></figure>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="box_text hinh3">
                     <figure><img src="viewroot/images1/thaythe.jpg" alt="#"/></figure>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- three_box -->
      <!-- hottest -->
      <div  class="hottest">
         <div class="container">
            <div class="row d_flex">
               <div class="col-md-5">
                  <div class="titlepage">
                     <h2>Tại sao lại phải chọn<br>thực phẩm sạch</h2>
                  </div>
               </div>
               <div class="col-md-7">
                  <div class="hottest_box">
                     <p>Bởi lẽ, đồ sạch luôn đảm bảo không chứa chất hóa học, không chứa mầm mống bệnh. Bạn sẽ tránh được các bệnh đặc biệt là bệnh ung thư.</p>   
                  </div>
                  <div class="hottest_box hbox_1">
                     <p>Thực phẩm sạch sẽ đảm bảo chất dinh dưỡng tốt hơn. Từ đó cho bạn những bữa ăn tốt cho sức khỏe.</p>
                  </div>
                  <div class="hottest_box hbox_2">
                     <p>Thực phẩm sạch đóng vai trò quan trọng và bạn muốn có được một bữa ăn ngon, đủ chất cần phải biết cách sắp xếp, bổ sung những nhóm chất quan trọng.</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end hottest -->
      <!-- choose  section -->
      <div class="choose ">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="titlepage">
                     <h2>Chúng tôi có những gì? </h2>
                     <p>Nuôi trồng các loại sản phẩm sạch và xanh. Chúng tôi còn cung cấp cho các bạn những thiết bị tự trồng trọt tại nhà. </p>
                  </div>
               </div>
            </div>
         </div>
         <div class="container-fluid">
            <div class="row d_flex">
               <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12">
                  <div class="padding_with">
                     <div class="row">
                        <div class="col-md-6 padding_bottom">
                           <div class="choose_box">
                              <i><img src="viewroot/images1/icon1.png" alt="#"/></i>
                              <div class="choose_text">
                                 <h3>Không thuốc trừ sâu</h3>
                                 <p>Để rau củ phát triển tự nhiên không sử dụng đến các sản phẩm hóa học, chúng tôi sử dụng các loại thù địch tự nhiên để phòng tránh các loại sâu hại.</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 padding_bottom">
                           <div class="choose_box">
                              <i><img src="viewroot/images1/icon2.png" alt="#"/></i>
                              <div class="choose_text">
                                 <h3>Không chất bảo quản</h3>
                                 <p>"Chất lượng sản phẩm là trọng tâm-An toàn của khách hàng là then chốt" tạo ra các dòng sản phẩm inh dưỡng an toàn, không chất bảo quản.</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 padding_bottom2">
                           <div class="choose_box">
                              <i><img src="viewroot/images1/icon3.png" alt="#"/></i>
                              <div class="choose_text">
                                 <h3>Có nguồn gốc rõ ràng</h3>
                                 <p>Nguyên liệu được thu mua từ những nhà cung cấp uy tín, đảm bảo đủ thông tin và các chứng nhận cần thiết cho việc truy xuất nguồn gốc.</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="choose_box">
                              <i><img src="viewroot/images1/icon4.png" alt="#"/></i>
                              <div class="choose_text">
                                 <h3>Quy trình sản xuất</h3>
                                 <p>Quản lý an toàn thực phẩm phải được thực hiện trong suốt quá trình sản xuất, kinh doanh thực phẩm trên cơ sở phân tích nguy cơ đối với an toàn thực phẩm.</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-5 col-lg-5 col-md-12 col-sm-12">
                  <div class="choose_img">
                     <figure><img src="viewroot/images1/orga.jpg" alt="#"/></figure>
                  </div>
               </div>
            </div>
         </div>
         
      </div>
      <!-- end choose  section -->
      <!-- product  section -->
      <div class="product">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <div class="titlepage">
                     <h2>Các loại sản phẩm</h2>
                  </div>
               </div>
            </div>
         </div>
         <div class="container-fluid">
            <div class="row">
               <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 padding_left0">
                  <div class="product_box">
                     <figure><img src="viewroot/images1/raucu.jpg" alt="#"/></figure>
                     <h3 class="black"><a href="/OganicStore/HomeProductsServlet?type=SP&id_category=47" >Rau củ</a></h3>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                  <div class="product_box">
                     <figure><img src="viewroot/images1/traicay.jpg" alt="#"/></figure>
                     <h3 ><a href="/OganicStore/HomeProductsServlet?type=SP&id_category=48">Trái cây</a></h3>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 padding_right0">
                  <div class="product_box">
                     <figure><img src="viewroot/images1/dung-cu-lam-vuon-1.jpg" alt="#"/></figure>
                     <h3> <a href="/OganicStore/HomeProductsServlet?type=SP&id_category=50">Dụng cụ, thiết bị</a></h3>
                  </div>
               </div>
               <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 padding_left0">
                  <div class="product_box">
                     <figure><img src="viewroot/images1/ngucoc.jpg" alt="#"/></figure>
                     <h3 ><a href="/OganicStore/HomeProductsServlet?type=SP&id_category=49">Ngũ cốc, hạt</a></h3>
                  </div>
               </div>
               <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 padding_right0">
                  <div class="product_box">
                     <figure><img src="viewroot/images1/sale.jpg" alt="#"/></figure>
                     <h3><a href="/OganicStore/HomeProductsServlet?type=SP&id_category=54">Ưu đãi</a></h3>
                  </div>
               </div>
            </div>
         </div>
      </div>
	<!--HTM-->
	
	
	

	
	
	<jsp:include page="layout/btncontact.jsp"></jsp:include>
	
	
	<!-- Thêm chân trang -->
	<jsp:include page="layout/footer1.jsp"></jsp:include>
	<!-- Xong thêm chân trang -->




</body>

</html>
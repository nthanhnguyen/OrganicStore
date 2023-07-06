<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Liện Hệ</title>
	
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

<jsp:include page="layout/head.jsp"></jsp:include>

</head>

<body>
    	<!-- Thêm phần tiêu đề trang -->
	<jsp:include page="layout/header.jsp"></jsp:include>
	<!-- Xong phần tiêu đề trang -->
	<!-- Hero Section Begin -->
			<%-- <jsp:include page="layout/hero-nomar.jsp"></jsp:include> --%>
	
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="viewroot/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Liên hệ</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Liên hệ</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_phone"></span>
                        <h4>Phone</h4>
                        <p>0961034914</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_pin_alt"></span>
                        <h4>Địa Chỉ</h4>
                        <p>Tp.HCM</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_clock_alt"></span>
                        <h4>Thời Gian</h4>
                        <p>7:00 am to 7:00 pm</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_mail_alt"></span>
                        <h4>Email</h4>
                        <p>Ogani@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->


	
	
    <!-- Map Begin -->
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7836.96861217642!2d106.771922!3d10.850721!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x282f711441b6916f!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgcGjhuqFtIEvhu7kgdGh14bqtdCBUcC4gSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2sus!4v1670489135803!5m2!1svi!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        <!-- <div class="map-inside">
            <i class="icon_pin"></i>
            <div class="inside-widget">
                <h4>Hồ Chí Minh</h4>
                <ul>
                    <li>Phone: +012242353</li>
                    <li>TP.Hồ Chí Minh</li>
                </ul>
            </div>
        </div> -->
    </div>
    <!-- Map End -->
    
    
   
	 
	 

    
    <!-- Contact Form Begin -->
   <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Liện Hệ/Phản Hồi</h2>
                    </div>
                </div>
            </div>
            <form action="#">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <input type="text" placeholder="Tên Người Gửi">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" placeholder="Địa Chỉ Email">
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea placeholder="Your message"></textarea>
                        <button type="submit" class="site-btn">Gửi Phản Hồi</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->
	
	<jsp:include page="layout/btncontact.jsp"></jsp:include>
	
    <!-- Footer Section Begin -->
    <!-- Thêm chân trang -->
	<jsp:include page="layout/footer1.jsp"></jsp:include>
	<!-- Xong thêm chân trang -->
    



</body>

</html>
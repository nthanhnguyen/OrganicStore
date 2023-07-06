<%@ page pageEncoding="utf-8"%>
<%@page import="dao.CartDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chân trang</title>
<link href="https://fonts.googleapis.com/css?family=Cairo:400,600,700&amp;display=swap" rel="stylesheet">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="viewroot/css1/animate.min.css" rel="stylesheet">
    <link href="viewroot/css1/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="viewroot/css1/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="viewroot/css1/style.css" rel="stylesheet">
</head>
<body>
    <!-- Footer Start -->
    <div class="container-fluid bg-dark footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h1 class="fw-bold text-primary mb-4">O<span class="text-secondary">ga</span>ni</h1>
                    <p>Mang đến làn gió mới vào gia đình bạn, chúng tôi cung cấp cho bạn những thực phẩm xanh, sạch và an toàn. Và không<br>đâu bằng "những khu vườn" do chính<br>tay bạn vun trồng nên</p>
                    <div class="d-flex pt-2">
                        <!-- <a class="btn btn-square btn-outline-light rounded-circle me-1" href=""><i class="fab fa-twitter"></i></a> -->
                        <!-- <a class="btn btn-square btn-outline-light rounded-circle me-1" href=""><i class="fab fa-facebook-f"></i></a> -->
                       <!--  <a class="btn btn-square btn-outline-light rounded-circle me-1" href=""><i class="fab fa-youtube"></i></a> -->
                        <!-- <a class="btn btn-square btn-outline-light rounded-circle me-0" href=""><i class="fab fa-linkedin-in"></i></a> -->
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Address</h4>
                    <p><i class="fa fa-map-marker-alt me-3"></i>1 Đ. Võ Văn Ngân, Linh Chiểu, <br>Tp.Thủ Đức, Tp.Hồ Chí Minh, Việt Nam</p>
                    <p><i class="fa fa-phone-alt me-3"></i>0961034914</p>
                    <p><i class="fa fa-envelope me-3"></i>Ogani@gmail.com</p>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Quick Links</h4>
                    <a class="btn btn-link" href="/OganicStore/contact.jsp">About Us</a>
                    <a class="btn btn-link" href="/OganicStore/contact.jsp">Contact Us</a>
                    <a class="btn btn-link" href="/OganicStore/blog.jsp">Blog</a>
                    
                </div>
                
                
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Our products</h4>
                    <a class="btn btn-link" href="/OganicStore/HomeProductsServlet?type=SP&id_category=47">Rau củ quả</a>
                    <a class="btn btn-link" href="/OganicStore/HomeProductsServlet?type=SP&id_category=48">Trái cây</a>
                    <a class="btn btn-link" href="/OganicStore/HomeProductsServlet?type=SP&id_category=49">Ngũ cốc, Đậu & Hạt hữu cơ</a>
                    <a class="btn btn-link" href="/OganicStore/HomeProductsServlet?type=SP&id_category=50">Dụng cụ</a>
                    <a class="btn btn-link" href="/OganicStore/HomeProductsServlet?type=MH&id_category=52">Mô hình</a>
                </div>
                
                <!-- <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Newsletter</h4>
                    <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                    <div class="position-relative mx-auto" style="max-width: 400px;">
                        <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                        <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                    </div>
                </div> -->
            </div>
        </div>
        <div class="container-fluid copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a href="#">Organic store</a>, All Right Reserved.
                    </div>
                    <!-- <div class="col-md-6 text-center text-md-end">
                        /*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/
                        Designed By <a href="https://htmlcodex.com">HTML Codex</a>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->
    
    
  <script src="viewroot/js/jquery-3.3.1.min.js"></script>
    <script src="viewroot/js/bootstrap.min.js"></script>
    <script src="viewroot/js/jquery.nice-select.min.js"></script>
    <script src="viewroot/js/jquery-ui.min.js"></script>
    <script src="viewroot/js/jquery.slicknav.js"></script>
    <script src="viewroot/js/mixitup.min.js"></script>
    <script src="viewroot/js/owl.carousel.min.js"></script>
    <script src="viewroot/js/main.js"></script>
   <script type="text/javascript">
   function addProductToCart(id) {
var url="HomeCartServlet?status=add&id_product="+id;
		$.ajax({
			url : url,
			type : "get",
			success : function(response) {
				console.log(response);
		           var count= $("#count").text();
		           var a = parseInt(count); 
			    var carts=a+1;
			    $("#count").html(""+carts+"");
				alert("Thêm sản phẩm vào giỏ hàng thành công!" );
			},
			error : function(xhr) {
				console.log("ERROR: ", e);
			}
		});
	};
</script>
    <script type="text/javascript">
        function loadDistrict(id) {
            $.ajax({
    			url :  "HomeCheckoutServlet?status=district&id_tinh_thanhpho=" + id + "",
    			type : "get",
    			success : function(response) {
    				$('#district').html(response);
    		        
    			},
    			error : function(xhr) {
    				console.log("ERROR: ", e);
    			}
    		});
         
        }
        function load_town_ward(id) {
        	 $.ajax({
     			url :  "HomeCheckoutServlet?status=town_ward&id_quan_huyen=" + id + "",
     			type : "get",
     			success : function(response) {
     				$('#town_ward').html(response);
     		        
     			},
     			error : function(xhr) {
     				console.log("ERROR: ", e);
     			}
     		});
        }
        

        //Xự kiện chỉ nhập số
        function keyPhone(e) {
            var keyword = null;
            if (window.event) {
                keyword = window.event.keyCode;
            } else {
                keyword = e.which;
            }

            if (keyword<48 || keyword>57) {
                if (keyword == 8 || keyword == 48 || keyword == 127) {
                    return true;
                }
                return false;
            }
        }
    </script>
<script>
		$(document).ready(function() {
			var readURL = function(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();
					reader.onload = function(e) {
						$('.avatar').attr('src', e.target.result);
					}
					reader.readAsDataURL(input.files[0]);
				}
			}
			var fileValidation = function() {
				var fileInput = document.getElementById('file-up-avatar');
				var filePath = fileInput.value;//lấy giá trị input theo id
				var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;//các tập tin cho phép
				//Kiểm tra định dạng
				if (!allowedExtensions.exec(filePath)) {
					swal({
						type : 'error',
						title : 'Rất tiết...',
						text : 'Tệp tải lên có định dạng không được hổ trợ!',
					});

					fileInput.value = '';
					return false;
				}
			}
			$(".file-upload").on('change', function() {
				fileValidation();
				readURL(this);
			});
		});
		
	</script>
	<script type="text/javascript">
	function updatepass(){
		
		alert("vui lòng không để trống ")

		var pass=$('#pass-old).val();
		var pass_new=$('#pass_new).val();
		var pass_confirm=$('#pass_confirm).val();
		if(pass==null || pass_new==null && pass_confirm==null){
			alert("vui lòng không để trống ")
			return ;
		}
		if(pass_new!=pass_confirm){
			alert("Mật khẩu không trùng khớp")
			return ;

		}
	}
	</script>
</body>
</html>
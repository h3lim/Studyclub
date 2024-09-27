<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>회원가입_추가정보</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="<c:url value='/site.webmanifest'/>">
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/assets/img/favicon.ico'/>">

    <!-- CSS here -->
    <link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/owl.carousel.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/slicknav.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/flaticon.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/progressbar_barfiller.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/gijgo.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/animate.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/animated-headline.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/magnific-popup.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/fontawesome-all.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/themify-icons.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/slick.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/nice-select.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/style.css'/>">
</head>
<body onload="document.loginForm.name.focus();">
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="<c:url value='/assets/img/logo/loder.png'/>" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader End -->

    <!-- Register -->
    <main class="login-body" style="background-color: #AEEEEE;">
        <form name="loginForm" id="loginForm" action="<c:url value='/oauth_join_process'/>" method="post">
            <div class="login-form">
                <h2 class="text-center">회원가입_추가정보</h2>
                <div class="form-input">
                    <label for="userEmail">이메일:</label>
                    <input type="text" id="userEmail" name="userEmail" size="30" value="${sessionScope.SESS_EMAIL}" readonly>
                </div>
                <div class="form-input">
                    <label for="userNickname">닉네임:</label>
                    <input type="text" id="userNickname" name="userNickname" placeholder="닉네임을 입력하세요">
                </div>
                <div class="form-input pt-30 text-center">
                    <input type="submit" value="가입" class="btn btn-primary">
                </div>
            </div>
        </form>
    </main>

    <script>
        <c:if test="${not empty error}">
            alert("${error}");
        </c:if>
    </script>

    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script>
        $(function() {
            $("#submitBtn").click(function() {
                var userNickname = $("#userNickname").val().trim();
                if (userNickname === "") {
                    alert("닉네임을 입력하세요");
                    $("#userNickname").focus();
                } else {
                    $("#loginForm").submit();
                }
            });
        });
    </script>

    <script src="<c:url value='/assets/js/vendor/modernizr-3.5.0.min.js'/>"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="<c:url value='/assets/js/vendor/jquery-1.12.4.min.js'/>"></script>
    <script src="<c:url value='/assets/js/popper.min.js'/>"></script>
    <script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
    <!-- Jquery Mobile Menu -->
    <script src="<c:url value='/assets/js/jquery.slicknav.min.js'/>"></script>

    <!-- Video bg -->
    <script src="<c:url value='/assets/js/jquery.vide.js'/>"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="<c:url value='/assets/js/owl.carousel.min.js'/>"></script>
    <script src="<c:url value='/assets/js/slick.min.js'/>"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="<c:url value='/assets/js/wow.min.js'/>"></script>
    <script src="<c:url value='/assets/js/animated.headline.js'/>"></script>
    <script src="<c:url value='/assets/js/jquery.magnific-popup.js'/>"></script>

    <!-- Date Picker -->
    <script src="<c:url value='/assets/js/gijgo.min.js'/>"></script>
    <!-- Nice-select, sticky -->
    <script src="<c:url value='/assets/js/jquery.nice-select.min.js'/>"></script>
    <script src="<c:url value='/assets/js/jquery.sticky.js'/>"></script>
    <!-- Progress -->
    <script src="<c:url value='/assets/js/jquery.barfiller.js'/>"></script>

    <!-- counter , waypoint,Hover Direction -->
    <script src="<c:url value='/assets/js/jquery.counterup.min.js'/>"></script>
    <script src="<c:url value='/assets/js/waypoints.min.js'/>"></script>
    <script src="<c:url value='/assets/js/jquery.countdown.min.js'/>"></script>
    <script src="<c:url value='/assets/js/hover-direction-snake.min.js'/>"></script>

    <!-- contact js -->
    <script src="<c:url value='/assets/js/contact.js'/>"></script>
    <script src="<c:url value='/assets/js/jquery.form.js'/>"></script>
    <script src="<c:url value='/assets/js/jquery.validate.min.js'/>"></script>
    <script src="<c:url value='/assets/js/mail-script.js'/>"></script>
    <script src="<c:url value='/assets/js/jquery.ajaxchimp.min.js'/>"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="<c:url value='/assets/js/plugins.js'/>"></script>
    <script src="<c:url value='/assets/js/main.js'/>"></script>
</body>
</html>
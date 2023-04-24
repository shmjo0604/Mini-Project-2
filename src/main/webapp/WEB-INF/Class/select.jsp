<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>클래스 조회</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!--Bootstrap 용 CSS CDN-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!--Bootstrap 용 Icon CDN-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Permanent+Marker&display=swap" rel="stylesheet">
    <!--font awesome 용-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <!-- detepicker css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>
    <style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>
</head>

<body>
    <!--header 영역-->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-white">
            <div class="container">

                <!-- (1) 로고 -->
                <a class="navbar-brand d-flex align-items-center lh-1 me-10 transition-opacity opacity-75-hover"
                    href="./index.html">
                    <!-- 로고 아이콘 추가예정 -->
                    <div class="logo">Special Day</div>
                </a>
                <!-- / 로고 -->

                <!-- (2) 메뉴 항목 -->
                <div class="collapse navbar-collapse justify-content-center align-items-center"
                    id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown position-static">
                            <a class="nav-link dropdown-toggle" href="#" role="button">카테고리</a>
                            <!--  드롭다운 메뉴-->
                            <div class="dropdown-menu dropdown-megamenu">
                                <div class="container">
                                    <!-- 드롭다운 메뉴 섹션-->
                                    <div class=""></div>
                                </div>
                            </div>
                            <!-- / 드롭다운 메뉴-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">공지사항</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">이용안내</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">FAQ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">마이페이지</a>
                        </li>
                    </ul>

                </div>
                <!-- / 메뉴 항목 -->

                <!-- (3) 클래스등록&로그인 -->
                <div class="d-none d-lg-flex">
                    <a href="#" class="btn btn-outline-success" role="button">클래스 등록</a>
                    <a href="#" class="btn btn-outline-secondary" role="button">로그인</a>
                </div>
                <!-- / 클래스등록&로그인 -->
            </div>
        </nav>
    </header>

    <hr class="divider">

    <!--Main 영역-->
    <!--Search - List 영역-->
    <c:if test="${param.search == 'list'}">
    	<jsp:include page="./select_list.jsp"></jsp:include>
	</c:if>

    <!--Search - Map 영역-->
    <c:if test="${param.search == 'map'}">
    	<jsp:include page="./select_map.jsp"></jsp:include>
	</c:if>
	
    <!--footer 영역-->
    <footer class="bg-dark">
        <div class="container">
            <!-- footer top -->
            <div class="d-flex flex-column flex-md-row justify-content-md-between align-items-center">
                <!-- Footer Logo-->
                <a class="d-flex align-items-center lh-1 text-white transition-opacity opacity-50-hover text-decoration-none mb-4 mb-md-0"
                    href="#">
                    <!-- 로고 아이콘 추가예정 -->
                    <div class="logo">Special Day</div>
                </a>
                <!-- /Footer Logo-->

                <!-- Footer socials-->
                <ul class="list-unstyled d-flex align-items-center justify-content-end">
                    <li class="ms-5"><a href="#" class=""><img src="" alt=""><i
                                class="ri-facebook-circle-line ri-lg"></i></a></li>
                    <li class="ms-5"><a href="#"
                            class="text-white text-decoration-none opacity-50-hover transition-opacity"><i
                                class="ri-twitter-line ri-lg"></i></a></li>
                    <li class="ms-5"><a href="#"
                            class="text-white text-decoration-none opacity-50-hover transition-opacity"><i
                                class="ri-instagram-line ri-lg"></i></a></li>
                    <li class="ms-5"><a href="#"
                            class="text-white text-decoration-none opacity-50-hover transition-opacity"><i
                                class="ri-snapchat-line ri-lg"></i></a></li>
                </ul>
                <!-- Footer socials-->
            </div>
            <!-- / footer top -->

            <!-- footer menu -->
            <div class="d-flex flex-wrap justify-content footer_menu">
                <h6 class="text-uppercase fs-xs fw-bolder tracking-wider text-white opacity-50">회사소개 |&nbsp;</h6>
                <h6 class="text-uppercase fs-xs fw-bolder tracking-wider text-white opacity-50">고객센터 |&nbsp;</h6>
                <h6 class="text-uppercase fs-xs fw-bolder tracking-wider text-white opacity-50">약관 및 정책 </h6>
            </div>
            <h6 class="text-uppercase fs-xs fw-bolder tracking-wider text-white opacity-50">주소 : 부산광역시 남구 용소로 *** (대표전화)
                123-456-7890</h6>
            <!-- / footer menu -->

            <!-- Footer bottom-->
            <div class="small text-white opacity-50 mb-2 mb-md-0">All rights reserved &copy Special day 2023</div>
            <!-- Footer bottom-->
        </div>
    </footer>

    <!--jQuery-->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <!--Bootstrap 용 js script 태그는 반드시 body 내부에 존재해야 한다!-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $.datepicker.setDefaults({
            dateFormat: 'yy-mm-dd',
            prevText: '이전 달',
            nextText: '다음 달',
            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNames: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
            showMonthAfterYear: true,
            yearSuffix: '년'
        });

        $(function () {
            $('.datepicker').datepicker();
        });
        
    </script>
</body>

</html>
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
    <!--font awesome 용-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css">
    <style>
        .ui-widget-header {
            border: 0px solid #dddddd;
            background: #fff;
        }

        .ui-datepicker-calendar>thead>tr>th {
            font-size: 14px !important;
        }

        .ui-datepicker .ui-datepicker-header {
            position: relative;
            padding: 10px 0;
        }

        .ui-state-default,
        .ui-widget-content .ui-state-default,
        .ui-widget-header .ui-state-default,
        .ui-button,
        html .ui-button.ui-state-disabled:hover,
        html .ui-button.ui-state-disabled:active {
            border: 0px solid #c5c5c5;
            background-color: transparent;
            font-weight: normal;
            color: #454545;
            text-align: center;
        }

        .ui-datepicker .ui-datepicker-title {
            margin: 0 0em;
            line-height: 16px;
            text-align: center;
            font-size: 14px;
            padding: 0px;
            font-weight: bold;
        }

        .ui-datepicker {
            display: none;
            background-color: #fff;
            border-radius: 4px;
            margin-top: 10px;
            margin-left: 0px;
            margin-right: 0px;
            padding: 20px;
            padding-bottom: 10px;
            width: 300px;
            box-shadow: 10px 10px 40px rgba(0, 0, 0, 0.1);
        }

        .ui-widget.ui-widget-content {
            border: 1px solid #eee;
        }

        #datepicker:focus>.ui-datepicker {
            display: block;
        }

        .ui-datepicker-prev,
        .ui-datepicker-next {
            cursor: pointer;
        }

        .ui-datepicker-next {
            float: right;
        }

        .ui-state-disabled {
            cursor: auto;
            color: hsla(0, 0%, 80%, 1);
        }

        .ui-datepicker-title {
            text-align: center;
            padding: 10px;
            font-weight: 100;
            font-size: 20px;
        }

        .ui-datepicker-calendar {
            width: 100%;
        }

        .ui-datepicker-calendar>thead>tr>th {
            padding: 5px;
            font-size: 20px;
            font-weight: 400;
        }

        .ui-datepicker-calendar>tbody>tr>td>a {
            color: #000;
            font-size: 12px !important;
            font-weight: bold !important;
            text-decoration: none;
        }

        .ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover {
            cursor: auto;
            background-color: #fff;
        }

        .ui-datepicker-calendar>tbody>tr>td {
            border-radius: 100%;
            width: 44px;
            height: 30px;
            cursor: pointer;
            padding: 5px;
            font-weight: 100;
            text-align: center;
            font-size: 12px;
        }

        .ui-datepicker-calendar>tbody>tr>td:hover {
            background-color: transparent;
            opacity: 0.6;
        }

        .ui-state-hover,
        .ui-widget-content .ui-state-hover,
        .ui-widget-header .ui-state-hover,
        .ui-state-focus,
        .ui-widget-content .ui-state-focus,
        .ui-widget-header .ui-state-focus,
        .ui-button:hover,
        .ui-button:focus {
            border: 0px solid #cccccc;
            background-color: transparent;
            font-weight: normal;
            color: #2b2b2b;
        }

        .ui-widget-header .ui-icon {
            background-image: url('./btns.png');
        }

        .ui-icon-circle-triangle-e {
            background-position: -20px 0px;
            background-size: 36px;
        }

        .ui-icon-circle-triangle-w {
            background-position: -0px -0px;
            background-size: 36px;
        }

        .ui-datepicker-calendar>tbody>tr>td:first-child a {
            color: red !important;
        }

        .ui-datepicker-calendar>tbody>tr>td:last-child a {
            color: #0099ff !important;
        }

        .ui-datepicker-calendar>thead>tr>th:first-child {
            color: red !important;
        }

        .ui-datepicker-calendar>thead>tr>th:last-child {
            color: #0099ff !important;
        }

        .ui-state-highlight,
        .ui-widget-content .ui-state-highlight,
        .ui-widget-header .ui-state-highlight {
            border: 0px;
            background: #f1f1f1;
            border-radius: 50%;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        .inp {
            padding: 10px 10px;
            background-color: #f1f1f1;
            border-radius: 4px;
            border: 0px;
        }

        .inp:focus {
            outline: none;
            background-color: #eee;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>
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
    <!--Search 영역-->
    <section>
        <div class="container">
            <div class="row mb-4">
                <div class="col-4">
                    <div class="input-group">
                        <!-- <select class="form-select" aria-label="Default select example">
                            <option selected value="title">제목</option>
                            <option value="keyword">내용</option>
                            <option value="2"></option>
                            <option value="3">Three</option>
                        </select> -->
                        <input type="text" class="form-control" placeholder="검색어를 입력하세요."
                            aria-label="Text input with dropdown button">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search fa-sm"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-2">
                    <div>지역</div>
                </div>
                <div class="col-4">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Open this select menu</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select>
                </div>
                <div class="col-2">
                    <div>세부 지역</div>
                </div>
                <div class="col-4">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Open this select menu</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-2">
                    <div>카테고리</div>
                </div>
                <div class="col-4">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Open this select menu</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select>
                </div>
                <div class="col-2">
                    <div>세부 카테고리</div>
                </div>
                <div class="col-4">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Open this select menu</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-2">
                    요일
                </div>
                <div class="col-4">
                    <div>
                        <button class="btn btn-outline-primary active">월</button>
                        <button class="btn btn-outline-primary">화</button>
                        <button class="btn btn-outline-primary">수</button>
                        <button class="btn btn-outline-primary">목</button>
                        <button class="btn btn-outline-primary">금</button>
                        <button class="btn btn-outline-primary">토</button>
                        <button class="btn btn-outline-primary">일</button>
                    </div>
                </div>
                <div class="col-2">
                    시간
                </div>
                <div class="col-4">

                </div>
            </div>
            <div class="row mb-4">
                <div class="col-2">
                    유형
                </div>
                <div class="col-4">
                    <button class="btn btn-outline-warning active">일일</button>
                    <button class="btn btn-outline-warning">정기</button>
                </div>
                <div class="col-2">
                    난이도
                </div>
                <div class="col-4">
                    <div>
                        <button class="btn btn-outline-success active">입문자</button>
                        <button class="btn btn-outline-success">경험자</button>
                        <button class="btn btn-outline-success">숙련자</button>
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    가격
                </div>
                <div class="col">
                    날짜 <input class="datepicker">
                </div>
            </div>
        </div>
    </section>

    <hr class="divider">

    <!--Class Map 영역-->
    <div class="container">
    	<div id="map" style="width: 500px; height: 400px;"></div>
    </div>

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
    <!-- kakao map library -->
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4847ab83c2fe2a7607fbdad0614a758b"></script>
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
        
        var container = document.getElementById('map');
        var options = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 위도, 경도
            level: 3
            // 지도의 레벨
        };
        // 지도 생성 함수
        var map = new kakao.maps.Map(container, options);

        /* 마커 생성 */
        // 마커가 표시될 위치입니다 
        var markerPosition = new kakao.maps.LatLng(33.450701, 126.570667);

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

    	// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
    	// marker.setMap(null);
        
    </script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>

hr {
  	border:none;
 	width: auto;
	height: 52px;
	margin-top: 0;
	border-bottom: 1px solid #1f1209;
	box-shadow: 0 20px 10px -20px #333;
  	margin: -50px auto 10px; 
}
</style>

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container">

            <!-- (1) 로고 -->
            <a class="navbar-brand d-flex align-items-center lh-1 me-10 transition-opacity opacity-75-hover" href="./index.html">
                <!-- 로고 아이콘 추가예정 -->
                <div class="logo">Special Day</div>
            </a>
            <!-- / 로고 -->
            
            <!-- (2) 메뉴 항목 -->
            <div class="collapse navbar-collapse justify-content-center align-items-center" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown position-static">
                        <a class="nav-link dropdown-toggle" href="#" role="button" >카테고리</a>
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
    <hr>
</header>
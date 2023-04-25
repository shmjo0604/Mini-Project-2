<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사소개 등록 페이지</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link
	href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Permanent+Marker&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu4.css">
<!-- Include stylesheet -->
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
	rel="stylesheet">

</head>
<body>
	<form action="mypage.do?menu=4" method="post">
		<div class="container">

	<section>
		<p>커리큘럼 내용(필수)</p>
		<!-- Create the editor container -->
		<div style="margin-bottom: 5px; background-color: white;">
			<div id="editor" style="height: 300px;">
				<p>커리큘럼을 최소 2단계 이상 소개해주세요.<br />예시)<br />STEP1. 수업 소개<br />STEP2. 수업 내용<br />STEP3. 수업 마무리 </p>
				<p>
					<br>
				</p>
			</div>
		</div>
	</section>


	<div class="changepage">
		<div class="btn_1">
			<a href="insert.do?menu=3" class="btn_before btn">이전</a> 
			<a href="insert.do?menu=5" class="btn_after btn">다음</a> 
		</div>
	</div>
	</div>
	</form>


	<!-- Include the Quill library -->
	<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

	<script>
	var toolbarOptions = [ [ 'bold', 'italic', 'underline', 'strike' ], // toggled buttons
	[ 'blockquote', 'code-block' ],

	[ {
		'header' : 1
	}, {
		'header' : 2
	} ], // custom button values
	[ {
		'list' : 'ordered'
	}, {
		'list' : 'bullet'
	} ], [ {
		'script' : 'sub'
	}, {
		'script' : 'super'
	} ], // superscript/subscript
	[ {
		'indent' : '-1'
	}, {
		'indent' : '+1'
	} ], // outdent/indent
	[ {
		'direction' : 'rtl'
	} ], // text direction

	[ {
		'size' : [ 'small', false, 'large', 'huge' ]
	} ], // custom dropdown
	[ {
		'header' : [ 1, 2, 3, 4, 5, 6, false ]
	} ],

	[ {
		'color' : []
	}, {
		'background' : []
	} ], // dropdown with defaults from theme
	[ {
		'font' : []
	} ], [ {
		'align' : []
	} ],

	[ 'clean' ] // remove formatting button
	];

	// 위쪽에 있는 태그중에서 id가 editor인것을 찾아서 toolbar는 toolbarOptions의 값으로 대체하고 태마를 snow로 해서 변경
	const quill = new Quill('#editor', {
		modules : {
			toolbar : toolbarOptions
		},
		theme : 'snow'
	});
	
	function getEditorContent() {
    	const title = document.getElementById('title');
    	const writer = document.getElementById('writer');
    	const content = quill.root.innerHTML;  // 위쪽의 editor객체를 통해서 가져오기
    	
    	// 유효성 검사
    	if(title.value.length <= 0){
    		alert('제목을 입력하세요.');
    		title.focus();
			return false;	// 아래쪽 소스코드를 수행하지 않음. 함수가 종료됨.    	
    	}
    	
    	if(writer.value.length < 1){
    		alert('작성자를 입력하세요');
    		writer.focus();
    		return false; 	// 함수 종료
    	}
    	
    	// <form action="writer.do" method="post">
    	//		<input type="text" name="title" value="실제입력값"></input>
    	//		<input type="text" name="content" value="실제입력값"></input>
    	//		<input type="text" name="writer" value="실제입력값"></input>
    	// </form>
    	var form    = document.createElement("form");
    	form.action = "write.do" 
    	form.method = "post";
    	form.style.display = "none";
    	
    	var input1  = document.createElement("input");
    	input1.type = "text";
    	input1.name = "title";
    	input1.value = title.value;
    	form.appendChild(input1);
    	
    	var input2  = document.createElement("input");
    	input2.type = "text";
    	input2.name = "content";
    	input2.value = content;
    	form.appendChild(input2);
    	
    	var input3  = document.createElement("input");
    	input3.type = "text";
    	input3.name = "writer";
    	input3.value = writer.value;
    	form.appendChild(input3);
    	
    	document.body.appendChild(form);
    	form.submit();
    	
    } 
	
	</script>
</body>
</html>
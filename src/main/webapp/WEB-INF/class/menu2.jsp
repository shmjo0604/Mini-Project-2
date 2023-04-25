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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Permanent+Marker&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu2.css">
<!-- Include stylesheet -->
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
	rel="stylesheet">

</head>
<body>
	<form action="mypage.do?menu=2" method="post">
		<div class="container">
			<section>
				<p>프로필 이미지</p>
				<div id="input-image" class="mb-3">
					<img id="insert-img"
						src="${pageContext.request.contextPath}/resources/images/default.png"
						style="width: 150px; height: 150px; curosr: pointer;" class="mb-3"
						onclick="clickItemImage()" /> <input type="file" name="file"
						id="file" class="form-control" onchange="changeItemImage(this)" >
				</div>

				<div>
					<input type="button" value="등록" class="btn btn-primary"
						onclick="insertItemImage()" />
				</div>
			</section>
		</div>
	</form>

	<section>
		<p>상호명 및 닉네임(필수)</p>
		<p>
			<input type="text" name="name" required>
		</p>
	</section>

	<section>
		<p>강사 소개 (필수)</p>
		<!-- Create the editor container -->
		<div style="margin-bottom: 5px; background-color: white;">
			<div id="editor" style="height: 300px;">
				<p>자신의 경험,경력을 소개해주세요.</p>
				<p>
					<br>
				</p>
			</div>
		</div>
	</section>

	<section>
		<p>SNS 링크</p><p>(선택)</p>
		<input placeholder="https://instagram.com/sample" type="text" class="" value="">
	</section>
			<!-- 가이드 라인 작성 -->
			<div role="tooltip">
			<p>가이드 라인</p>
				<p>• 강사님의 SNS 링크를 작성해 주세요.</p>
				<p>• 클래스 홍보와 정보제공에 도움이 됩니다.</p>	
			</div>

	<div class="changepage">
		<div class="btn_1">
			<a href="insert.do?menu=1" class="btn_before btn">이전</a> 
			<a href="insert.do?menu=3" class="btn_after btn">다음</a> 
		</div>
	</div>


	<!--jQuery-->
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

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
	
	
	function clickItemImage() {
		document.getElementById("file").click();
	}
	function changeItemImage(e) {
		const img = document.getElementById("insert-img");
		console.log(e.files);
		if(e.files.length > 0) {
			
			img.src= URL.createObjectURL(e.files[0]);
			
			console.log(URL.createObjectURL(e.files[0]));
		}
		else {
			// 이미지 첨부 취소 시, 이미지 제거
			img.src = '${pageContext.request.contextPath}/resources/images/default.png';
		}
	}
	
	function insertItemImage() {
		const file = document.getElementById("file").value;
		console.log(file);
		if(file === "") {
			alert("이미지 파일을 첨부하세요.");
			return false;
		}
		else {
			const form = document.getElementById("form");
			form.submit();
		}
	}
	
	
	</script>
</body>
</html>
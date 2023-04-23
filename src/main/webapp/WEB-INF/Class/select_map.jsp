<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<div class="row mb-2">
		<div class="col d-flex">
			<div>
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
			<div class="ms-auto">
				<a href="select.do?search=list">
					<button class="btn btn-outline-success">목록 보기</button>
				</a>
			</div>
		</div>
	</div>

	<hr class="divider">
</div>
<div class="container-fluid">
	<div class="row mb-3">
		<div class="col-3"></div>
		<div class="col-9">
			<div id="map" style="width: 100%; height: 750px;"></div>
		</div>
	</div>
</div>

<!-- kakao map library -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4847ab83c2fe2a7607fbdad0614a758b"></script>
<script>
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(35.180182599322045, 129.07538647683208), // 위도, 경도
		level : 8
	// 지도의 레벨
	};
	// 지도 생성 함수
	var map = new kakao.maps.Map(container, options);

	/* 마커 생성 */
	// 지도를 클릭한 위치에 표출할 마커입니다
	var marker = new kakao.maps.Marker({
		// 지도 중심좌표에 마커를 생성합니다 
		position : map.getCenter()
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	// 지도에 클릭 이벤트를 등록합니다
	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
	    
	    // 클릭한 위도, 경도 정보를 가져옵니다 
	    var latlng = mouseEvent.latLng; 
	    
	    // 마커 위치를 클릭한 위치로 옮깁니다
	    marker.setPosition(latlng);
	    
	    console.log(latlng.getLat());
		console.log(latlng.getLng());
	});
	
	
	// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
	// marker.setMap(null);
</script>
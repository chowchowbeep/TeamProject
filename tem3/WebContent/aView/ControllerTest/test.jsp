<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 컨트롤러 테스트</title>
<script>

</script>
</head>
<body>
<h3>관리자 컨트롤러 테스트</h3>
<button onclick="location.href='/MMain.do'">관리자 메인페이지로 이동</button> 
<p/><button onclick="location.href='MSearchNormal.do'">회원검색(일반회원) 페이지로 이동</button>
<p/><button onclick="location.href='/MSearchHos.do'">M2 병원검색(병원회원) 페이지로 이동</button>
<p/><button onclick="location.href='/MSearchList.do'">일반회원정보 검색 결과 리스트 페이지로 이동</button>
<p/><button onclick="location.href='/MSearchListNormal.do'">일반회원정보 검색 결과 상세페이지로 이동</button>
<p/><button onclick="location.href='/MSearchHoslist.do'">병원회원정보 검색결과 리스트 페이지로 이동</button>
<p/><button onclick="location.href='/MSearchHoslistHos.do'">병원회원정보 검색결과 상세 페이지로 이동</button>
<p/><button onclick="location.href='/MChart.do'">통계관리 페이지로 이동</button>
<p/><button onclick="location.href='/MChartDetail.do'">통계관리 상세페이지로 이동</button>
<p/><button onclick="location.href='/MPolice.do'">신고 리스트 페이지로 이동</button>
<p/><button onclick="location.href='/MPoliceDetail.do'">상세-신고 페이지로 이동</button>
<!-- <button onclick="location.href='${pageContext.request.contextPath}'"></button> -->


</body>
</html>
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
<div>
<h3 id="m">관리자 컨트롤러 테스트</h3>
<button onclick="location.href='MMain.do'">관리자 메인페이지로 이동</button> 
<p/><button onclick="location.href='MSearchNormal.do'">회원검색(일반회원) 페이지로 이동</button>
<p/><button onclick="location.href='MSearchHos.do'">M2 병원검색(병원회원) 페이지로 이동</button>
<p/><button onclick="location.href='MSearchList.do'">일반회원정보 검색 결과 리스트 페이지로 이동</button>
<p/><button onclick="location.href='MSearchListNormal.do'">일반회원정보 검색 결과 상세페이지로 이동</button>
<p/><button onclick="location.href='MSearchHoslist.do'">병원회원정보 검색결과 리스트 페이지로 이동</button>
<p/><button onclick="location.href='MSearchHoslistHos.do'">병원회원정보 검색결과 상세 페이지로 이동</button>
<p/><button onclick="location.href='MChart.do'">통계관리 페이지로 이동</button>
<p/><button onclick="location.href='MChartDetail.do'">통계관리 상세페이지로 이동</button>
<p/><button onclick="location.href='MPolice.do'">신고 리스트 페이지로 이동</button>
<p/><button onclick="location.href='MPoliceDetail.do'">상세-신고 페이지로 이동</button>
</div>

<DIV>
<h3 id="h">병원회원 컨트롤러 테스트</h3>
<p/>병원회원 메인페이지 (컨트롤러x)
<p/><button onclick="location.href='HHospitalMain.do'">병원회원 메인페이지 로 이동</button>
<p/>알림팝업페이지 (컨트롤러x) 
<p/><button onclick="location.href='HMediAll.do'">(전체)진료신청 현황 리스트 페이지 로 이동</button>
<p/><button onclick="location.href='HMediWjqtn.do'">(당일접수)진료신청 현황 리스트 페이지 로 이동 </button>
<p/><button onclick="location.href='HMediReserve.do'">예약)진료신청 현황 리스트 페이지 로 이동</button>
<p/><button onclick="location.href='HMediDetail.do'">진료상세정보  페이지 로 이동 </button>
<p/><button onclick="location.href='HHospitalUpload.do'">기록물 업로드 페이지  로 이동</button>
<p/><button onclick="location.href='HHospitalInquiry.do'">기록물 조회 페이지로 이동</button>
<p/><button onclick="location.href='HSickSearch.do'">회원정보 검색 페이지로 이동</button>
<p/><button onclick="location.href='HSickSearchList.do'">회원정보 검색 리스트 페이지로 이동</button>
<p/><button onclick="location.href='HSickSearchDetail.do'">회원정보 검색 결과 상세 페이지로 이동</button>
<p/><button onclick="location.href='HHospitalMymenu.do'">마이메뉴 페이지  로 이동 </button>
<p/><button onclick="location.href='HHospitalProfile.do'">병원회원 수정 페이지  로 이동 </button>
<p/><button onclick="location.href='HDoctorlist.do'"> 의사 리스트 페이지 로 이동 </button>
<p/><button onclick="location.href='HDoctorAdd.do'">의사추가페이지 로 이동 </button>
<p/>병원 휴일 설정 페이지 (컨트롤러x)
<p/>의사 휴일 설정 페이지 (컨트롤러x)
</DIV>


<DIV>
<h3 id="h">일반회원 컨트롤러 테스트</h3>
<p/>일반회원 회원가입 페이지  (컨트롤러x)
<p/><button onclick="location.href='SSickMain.do'"> 일반회원 메인페이지로 이동 </button>
<p/><button onclick="location.href='SSickMemModify.do'"> 회원정보 수정 페이지 </button>
<p/><button onclick="location.href='SSickWjqtnwmd.do'"> 접수증 페이지(QR) </button>
<p/><button onclick="location.href='SSickWjqtnCreate.do'"> 접수증 생성 페이지 </button>
<p/>약정보 조회 페이지  (컨트롤러x)
<p/><button onclick="location.href='SSearchList.do'"> 검색 결과 리스트 페이지 </button>
<p/><button onclick="location.href='SHospitalInfo.do'">  병원정보 상세조회 페이지 </button>
<p/><button onclick="location.href='SsearchMain.do'"> 메인 검색 페이지 </button>
<p/><button onclick="location.href='ShospitalInfo.do'"> 필터 페이지 </button>
<p/><button onclick="location.href='SMedDoneList.do'"> 진료이력 리스트 페이지 </button>
<p/><button onclick="location.href='SMedDoneDetail.do'"> 진료이력 상세 페이지 </button>
<p/><button onclick="location.href='SReviewWrite.do'">//S17 리뷰 작성 페이지 </button>
<p/><button onclick="location.href='SReviewMylist.do'">//S18 내가 쓴 리뷰 리스트 페이지 </button>
<p/><button onclick="location.href='SSickHealModify.do'">//S19 건강정보 수정 페이지 </button>
<p/><button onclick="location.href='SMedBeforeMedList.do'"> //S20 진료신청현황 리스트 페이지</button>
<p/><button onclick="location.href='STmrDetail.do'"> 진료신청현황 상세/취소 페이지(당일접수) </button>
<p/><button onclick="location.href='SResDetail.do'">진료신청현황 상세/취소 페이지(예약)  </button>
<p/><button onclick="location.href='SAroundMap.do'"> 주변 병원/약국 페이지 </button>
<p/><button onclick="location.href='SResRequest.do'">예약신청 페이지</button>
<p/><button onclick="location.href='SResDone.do'"> 예약완료 페이지 </button>
<p/><button onclick="location.href='STmrRequest.do'">당일접수 신청 페이지  </button>
<p/><button onclick="location.href='STmrDone.do'"> 당일접수 완료 페이지</button>
<p/><button onclick="location.href='SBookmark.do'">관심병원 리스트 페이지</button>
<p/><button onclick="location.href='SSickMediaList.do'"> 기록물-기록물 리스트페이지</button>
<p/><button onclick="location.href='SSickDocuList.do'">서류-기록물 리스트페이지 </button>
<p/><button onclick="location.href='STmrSelectDcry.do'">(진료신청시)기록물 선택 페이지 </button>
<p/><button onclick="location.href='SSickDetailList.do'"> 기록물 상세 페이지</button>
<p/><button onclick="location.href='SSickUpload.do'">기록물 업로드 페이지</button>
</DIV>

</body>
</html>
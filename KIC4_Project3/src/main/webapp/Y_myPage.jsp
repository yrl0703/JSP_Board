<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="checkManager" value="${checkManager}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    
    <title>마이페이지</title>
</head>
<body>
	<jsp:include page="top.jsp" flush="false" />
	
	<c:set var="loginCheck" value="${requestScope.loginCheck}"/>
  <c:choose>
    <c:when test="${loginCheck==true}">
	    <c:set var="idKey" value="${requestScope.memid}" scope="session"/>
	    <meta http-equiv="Refresh" 
	             content="0;url=/KIC4_Project3/U_LoginPage.shop">
	</c:when>
	<c:otherwise>
		<meta http-equiv="Refresh" 
	             content="0;url=/KIC4_Project3/U_LogError.shop">
	</c:otherwise>
  </c:choose>

	<!-- Section Start -->
	<section class="pt-20 pb-12 lg:pt-[120px] lg:pb-[90px]">
	  <div class="container mx-auto">
	    <div class="-mx-4 flex flex-wrap">
	      <div class="w-full px-4">
	        <div class="mx-auto mb-12 max-w-[510px] text-center lg:mb-20">
	          <span class="text-dark mb-4 text-3xl font-bold sm:text-4xl md:text-[40px]">
	            내 정보
	        </span>
	          <p class="text-body-color text-base mt-3">
	            고객님은 골드등급입니다.            
	          </p>
	          <p>3번 더 주문 시 VIP 등급입니다.</p>
	        </div>
	      </div>
	    </div>
	    <div class="-mx-4 flex flex-wrap">
	      <div class="w-full px-4 md:w-1/2 lg:w-1/2">
	        <div class="h-40 mb-8 rounded-[20px] bg-white p-10 shadow-md hover:shadow-lg hover:cursor-pointer md:px-7 xl:px-10 border border-blue-500"
	        onclick="window.location.href='javascript:void(0);'">
	          <h4 class="text-dark mb-3 text-xl font-semibold">
	            회원 정보
	          </h4>
	          <p class="text-body-color">
	            고객님의 회원 정보를 조회, 수정할 수 있습니다.
	          </p>
	        </div>
	      </div>
	      <div class="w-full px-4 md:w-1/2 lg:w-1/2">
	        <div class="h-40 mb-8 rounded-[20px] bg-white p-10 shadow-md hover:shadow-lg hover:cursor-pointer md:px-7 xl:px-10 border border-blue-500"
	        onclick="window.location.href='Y_orderProcess.html'">
	          <h4 class="text-dark mb-3 text-xl font-semibold">
	            주문 처리 현황
	          </h4>
	          <p class="text-body-color">
	            고객님께서 주문하신 상품의 처리 현황을 보거나 주문 취소를 할 수 있습니다.
	          </p>
	        </div>
	      </div>
	      <div class="w-full px-4 md:w-1/2 lg:w-1/2">
	        <div class="h-40 mb-8 rounded-[20px] bg-white p-10 shadow-md hover:shadow-lg hover:cursor-pointer md:px-7 xl:px-10 border border-blue-500"
	        onclick="window.location.href='./Y_writtenReview.html';">
	          <h4 class="text-dark mb-3 text-xl font-semibold">
	            작성 리뷰 보기
	          </h4>
	          <p class="text-body-color">
	            고객님께서 작성하신 리뷰를 확인할 수 있습니다.
	          </p>
	        </div>
	      </div>
	      <div class="w-full px-4 md:w-1/2 lg:w-1/2">
	        <div class="h-40 mb-8 rounded-[20px] bg-white p-10 shadow-md hover:shadow-lg hover:cursor-pointer md:px-7 xl:px-10 border border-blue-500"
	        onclick="window.location.href='./Y_orderCheck.html';">
	          <h4 class="text-dark mb-3 text-xl font-semibold">
	            주문 내역 조회
	          </h4>
	          <p class="text-body-color">
	            고객님께서 주문하신 상품의 주문 내역을 확인할 수 있습니다.
	          </p>
	        </div>
	      </div>
	      <div class="w-full px-4 md:w-1/2 lg:w-1/2">
	        <div class="h-40 mb-8 rounded-[20px] bg-white p-10 shadow-md hover:shadow-lg hover:cursor-pointer md:px-7 xl:px-10 border border-blue-500"
	        onclick="window.location.href='Y_grade.html';">
	          <h4 class="text-dark mb-3 text-xl font-semibold">
	            등급별 혜택 보기
	          </h4>
	          <p class="text-body-color">
	            술주랑의 회원 등급과 그 혜택을 확인합니다.
	          </p>
	        </div>
	      </div>
	      <div class="w-full px-4 md:w-1/2 lg:w-1/2">
	        <div class="h-40 mb-8 rounded-[20px] bg-white p-10 shadow-md hover:shadow-lg hover:cursor-pointer md:px-7 xl:px-10 border border-blue-500" 
	        onclick="window.location.href='Y_memWithdrawal.html';">
	
	          <h4 class="text-dark mb-3 text-xl font-semibold">
	            회원 탈퇴
	          </h4>
	          <p class="text-body-color">
	            더 이상 술주랑의 서비스를 사용하지 않고 회원탈퇴를 합니다.
	          </p>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
	<!-- Section End -->
    
      <jsp:include page="footer.jsp" flush="false" />
    
</body>
</html>
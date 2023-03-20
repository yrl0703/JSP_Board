<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="c" 
          uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>회원가입 확인</title>
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
<script language="JavaScript" src="script.js?ver=3.1"></script>
</head>
<jsp:include page="top.jsp" flush="false"/>
<body>
  <div class="mt-10 sm:mt-0">
    <div class="md:grid md:grid-cols-3 md:gap-4 bg-blue-200">
      <div class="md:col-span-1 bg-blue-100 rounded">
        <div class="px-2 py-1 sm:px-0">
          <h3 class="indent-3 text-lg font-bold leading-6 text-gray-700 mt-3">사용자 회원정보 확인</h3>
          <p class="px-1 mt-1 text-sm text-gray-600">진행하시려면 확인완료 버튼을 눌러주세요.</p>
        </div>
      </div>
      
      <div class="mt-5 md:col-span-2 md:mt-0">
        <form name="regForm" method="post" action="U_MemberInsert.shop">
        	<div class="overflow-hidden shadow sm:rounded-md">
            	<div class="px-4 py-5 sm:p-6 bg-white">
              		<div class="grid grid-cols-6 gap-6 px-4 py-5">
        			  <!-- 아이디 -->
					  <div class="col-span-6 sm:col-span-6">
					  	 <label for="memid" class="block text-sm font-medium text-gray-700 font-semibold">아이디 확인</label>
			             <input type="text" name="memid" class="w-60 mt-1 rounded-md border-gray-400 shadow-sm focus:border-blue-100 focus:ring-blue-100 sm:text-sm mr-3"
							value="${regDTO.memid}" readonly>
						  <input type="hidden" name="pwd" value="${regDTO.pwd}">
					  </div>
					  <!-- 닉네임 -->
	                  <div class="col-span-6 sm:col-span-6">
	                    <label for="nickname" class="block text-sm font-medium text-gray-700 font-semibold">닉네임 확인</label>
	                    <input type="text" name="nickname" id="nickname"
	                         class="mt-1 block w-60 rounded-md border-gray-400 shadow-sm focus:border-blue-100 focus:ring-blue-100 sm:text-sm"
	                         value="${regDTO.nickname}" readonly> 
	                  </div>
	                  <!-- 이름 -->
	                  <div class="col-span-6 sm:col-span-6">
	                    <label for="memname" class="block text-sm font-medium text-gray-700 font-semibold">이름 확인</label>
	                    <input type="text" name="memname" id="memname"
	                      class="mt-1 block w-60 rounded-md border-gray-400 shadow-sm focus:border-blue-100 focus:ring-blue-100 sm:text-sm"
	                      value="${regDTO.memname}" readonly>
	                  </div>
					  <!-- 생년월일 -->
	                  <div class="col-span-6 sm:col-span-4">
	                    <label for="birthday" class="block text-sm font-medium text-gray-700 font-semibold">생년월일 확인</label>
	                    <input type="text" name="birthday" id="birthday"
	                      class="mt-1 block w-60 rounded-md border-gray-400 shadow-sm focus:border-blue-100 focus:ring-blue-100 sm:text-sm"
	                      value="${regDTO.birthday}" readonly>
					  </div>
	                  <!-- 이메일 -->
	                  <div class="col-span-6 sm:col-span-4">
	                    <label for="email" class="block text-sm font-medium text-gray-700 font-semibold">이메일 확인</label>
	                    <input type="text" name="email" id="email"
	                       class="mt-1 block w-60 rounded-md border-gray-400 shadow-sm focus:border-blue-100 focus:ring-blue-100 sm:text-sm"
	                       value="${regDTO.email}" readonly>
	                  </div>
	                  <!-- 휴대전화 -->
	                  <div class="col-span-6 sm:colspan-4">
	                    <label for="mphone" class="block text-sm font-medium text-gray-700 font-semibold"> 휴대전화 번호 확인</label>
	                    <input type="text" name="mphone" id="mphone"
	                       class="mt-1 block w-60 rounded-md border-gray-400 shadow-sm focus:border-blue-100 focus:ring-blue-100 sm:text-sm"
	                       value="${regDTO.mphone}" readonly>
	                  </div>
	                  <!-- 우편번호 -->
	                  <div class="col-span-6 sm:col-span-5">
	                    <label for="zipcode" class="block text-sm font-medium text-gray-700 font-semibold">우편번호 확인</label>
	                    <input type="text" name="zipcode" id="zipcode"
	                       class="mt-1 w-60 rounded-md border-gray-400 shadow-sm focus:border-blue-100 focus:ring-blue-100 sm:text-sm mr-3"
	                       value="${regDTO.zipcode}" readonly>      
	                  </div>
	                  <!-- 주소 -->
	                  <div class="col-span-6 sm:col-span-6">
	                    <label for="addr" class="block text-sm font-medium text-gray-700 font-semibold">주소 확인</label>
	                    <input type="text" name="addr" id="addr"
	                       class="mt-1 w-80 rounded-md border-gray-400 shadow-sm focus:border-blue-100 focus:ring-blue-100 sm:text-sm mr-3"
	                       value="${regDTO.addr}" readonly>
	                  </div>
	                  <!-- 등급 -->
	                  <div class="col-span-6 sm:col-span-6">
	                    <label for="grade" class="block text-sm font-medium text-gray-700 font-semibold">등급</label>
	                    <input type="text" name="grade" id="grade"
	                       class="mt-1 w-60 rounded-md border-gray-400 shadow-sm focus:border-blue-100 focus:ring-blue-100 sm:text-sm mr-3"
	                       value="실버" readonly>
	                    <!-- 회원가입일 -->
	                    <input type="hidden" name="enrolldate" value="${regDTO.enrolldate}">
	                  </div>
	                  
	                  <!-- 확인완료/다시쓰기 -->
	                  <div class="bg-gray-50 px-4 py-3 text-center col-span-6 sm:col-span-6">
	                  	<button type="submit" class="inline-flex justify-center rounded-md border border-transparent bg-blue-700 py-2 px-6 text-sm font-medium text-white shadow-sm hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:ring-offset-2 my-2">
			              확인완료</button>
			             <button type="button" class="inline-flex justify-center rounded-md border border-transparent bg-blue-700 py-2 px-6 text-sm font-medium text-white shadow-sm hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:ring-offset-2 my-2" 
			              onclick="history.back()">
			              다시쓰기</button>
          			 </div>
          		</div>
              </div>
            </div>
          </form>
      	</div>
      </div>
    </div>
</body>
<jsp:include page="footer.jsp" flush="false"/>
</html>
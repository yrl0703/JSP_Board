<%@ page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="c" 
          uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>회원가입</title>
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script language="JavaScript" src="input.js?ver=2.4"></script>
</head>
<jsp:include page="top.jsp" flush="false"/>
<body>
  <div class="mt-10 sm:mt-0">
    <div class="md:grid md:grid-cols-3 md:gap-5">
      <div class="md:col-span-1 bg-blue-100">
        <div class="px-4 sm:px-0">
          <h3 class="indent-3 text-lg font-bold leading-6 text-gray-700 mt-3">회원정보 입력</h3>
          <p class="px-1 mt-1 text-sm text-gray-600">필수 정보를 빠짐없이 입력해주세요.<br>※ID중복확인 안하시면 회원가입이 어려울 수 있습니다.</p>
        </div>
      </div>

      <div class="mt-5 md:col-span-2 md:mt-0">
        <!--회원가입 폼-->
        <form name="regForm" id="regForm" method="post" action="U_RegisterProc.shop">
          <div class="overflow-hidden shadow sm:rounded-md">
            <div class="bg-white px-4 py-5 sm:p-6">
              <div class="grid grid-cols-6 gap-6">
                <!-- 아이디 -->
                <div class="col-span-6 sm:col-span-6">
                  <label for="memid" class="block text-sm font-medium text-gray-700 font-semibold">아이디</label>
                  <input type="text" name="memid" id="memid" autocomplete="memid" maxlength="15"
                  class="w-60 mt-1 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm mr-3">      
                  <button type="button" id="checkbutton" class="max-h-0.5 max-w-xs mt-7 sm:mt-6 bg-blue-600 inline-flex items-center justify-center rounded-full py-4 px-10 text-center text-sm font-normal text-white hover:bg-opacity-90 px-8" 
                  onclick="idCheck(regForm.memid.value)">ID중복확인</button>
                </div>
				<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" 
              			id="memid_error">ID중복확인을 해주세요.</span>
              	<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" 
                        id="memid_error1">4~12자 영문 대소문자, 숫자만 입력하세요.</span>
              	<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" 
                        id="memid_error2">아이디를 입력해야 합니다.</span>

                <!-- 비밀번호 -->
                <div class="col-span-6 sm:col-span-6">
                  <label for="mem_passwd" class="block text-sm font-medium text-gray-700 font-semibold">비밀번호</label>
                  <input type="password" name="pwd" id="mem_passwd" autocomplete="mem_passwd" minlength="4" maxlength="20" 
                  class="mt-1 block w-80 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm">
                </div>
				<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="mempwd_error">비밀번호를 입력해야 합니다.</span>
              	<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="mempwd_error1">4~12자 영문 대소문자, 숫자만 입력하세요.</span>
              	<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="mempwd_error2">아이디와 동일한 비밀번호를 사용할 수 없습니다.</span>

                <!-- 비밀번호 재확인 -->
                <div class="col-span-6 sm:col-span-6">
                  <label for="mem_repasswd" class="block text-sm font-medium text-gray-700 font-semibold">비밀번호 확인</label>
                  <input type="password" name="repwd" id="mem_repasswd" autocomplete="mem_repasswd" minlength="4" maxlength="20"
                  class="mt-1 block w-80 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm">
                  
                  <p class="hidden col-span-6 text-justify text-sm mt-1 -mb-3 text-red-500" id="ps_x">비밀번호가 일치하지 않습니다.</p>
                  <p class="hidden col-span-6 text-justify text-sm mt-1 -mb-3 text-green-600" id="ps_o">비밀번호가 일치합니다.</p>
                </div>
				<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="memrepwd_error">비밀번호를 입력해야 합니다.</span>

                <!-- 닉네임 -->
                <div class="col-span-6 sm:col-span-6">
                  <label for="mem_nick" class="block text-sm font-medium text-gray-700 font-semibold">닉네임</label>
                  <input type="text" name="nickname" id="mem_nick" autocomplete="mem_nick" maxlength="20" 
                  class="mt-1 block w-60 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm"> 
                </div>
				<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="nickname_error">닉네임을 입력해야 합니다.</span>

                <!-- 이름 -->
                <div class="col-span-3 sm:col-span-3">
                  <label for="mem_name" class="block text-sm font-medium text-gray-700 font-semibold">이름</label>
                  <input type="text" name="memname" id="mem_name" autocomplete="mem_name" maxlength="20"
                  class="mt-1 block w-60 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm">
                </div>
				<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="memname_error">이름을 입력해야 합니다.</span>

                <!-- 생년월일 -->
                <div class="col-span-6 sm:col-span-4">
                  <label for="mem_birthday" class="block text-sm font-medium text-gray-700 font-semibold">생년월일</label>
                  <input type="date" name="birthday" id="mem_birthday" value="" max="2001-01-31"
                  class="mt-1 block w-60 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm">
                </div>
				<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="birthday_error">생년월일을 입력해야 합니다.</span>

                <!-- 이메일 -->
                <div class="col-span-6 sm:col-span-4">
                  <label for="mem_email" class="block text-sm font-medium text-gray-700 font-semibold">이메일</label>
                  <input type="text" name="email" id="mem_email" 
                  autocomplete="mem_email" maxlength="30" 
                  class="mt-1 block w-80 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm">

                  <p class="hidden col-span-6 text-justify text-sm mt-1 -mb-3 text-red-500" id="em_x">이메일 양식을 정확히 입력해주세요.</p>
                </div>                
				<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="email_error">이메일을 입력해야 합니다.</span>
				<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="email_error1">이메일 양식을 정확히 입력해주세요.</span>
				
                <!-- 휴대전화 -->
                <div class="col-span-6 sm:colspan-4">
                  <label for="mem_phone" class="block text-sm font-medium text-gray-700 font-semibold"> 휴대전화 (-없이 숫자를 입력해주세요)</label>
                  <div class="flex space-x-2">
                  <select name="number" 
                  	class="mt-1 block w-20 rounded border-gray-400 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm">
                  	<option vlaue="none">===선택===</option>
                  	<option vlaue="n1" selected>010</option>
                  	<option vlaue="n2">011</option>
                  	<option vlaue="n3">016</option>
                  	<option vlaue="n4">017</option>
                  	<option vlaue="n5">018</option>
                  	<option vlaue="n6">019</option>
                  </select>
                  <input type="text" name="mphone" id="mem_phone" autocomplete="mem_phone" maxlength="6" 
                  class="mt-1 block w-40 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm">
				  </div>
                  <p class="hidden col-span-6 text-justify text-sm mt-1 -mb-3 text-red-500" id="required_phone">필수 정보입니다.</p>
                </div>
				<span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="mphone_error">휴대전화 번호를 입력해주세요.</span>

				<!-- 우편번호 -->
                <div class="col-span-6 sm:col-span-5">
                  <label for="mem_zipcode" class="block text-sm font-medium text-gray-700 font-semibold">우편번호</label>
                  <input type="text" name="zipcode" id="mem_zipcode" autocomplete="mem_zipcode" maxlength="10"
                  class="mt-1 w-50 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm mr-3">      
                  <button type="button" class="max-h-0.5 max-w-xs col-span-6 sm:col-span-2 bg-blue-600 inline-flex items-center justify-center rounded-full py-4 px-10 text-center text-sm font-normal text-white hover:bg-opacity-90 px-5"
                  				onClick="zipCheck()">우편번호검색</button>   
                </div>
                <span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="zipcode_error">우편번호를 입력해주세요.</span>
                
                <!-- 주소 -->
                <div class="col-span-6 sm:col-span-6">
                  <label for="mem_address" class="block text-sm font-medium text-gray-700 font-semibold">주소</label>
                  <input type="text" name="addr" id="mem_address" autocomplete="mem_address" 
                  class="mt-1 block w-80 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm">
                </div>
                <span class="hidden block col-span-6 text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="addr_error">주소를 입력해주세요.</span>
              </div>
            </div>
            
            <!-- 회원가입/가입취소 버튼 -->
            <div class="bg-gray-50 px-4 py-3 text-center sm:px-6">
              <button type="button" id="registerCK" class="inline-flex justify-center rounded-md border border-transparent bg-blue-700 py-2 px-6 text-sm font-medium text-white shadow-sm hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:ring-offset-2 my-2" 
               onclick="registerCheck()">
              회원가입</button>
              <button type="button" class="inline-flex justify-center rounded-md border border-transparent bg-blue-700 py-2 px-6
              ml-1 mr-1 text-sm font-medium text-white shadow-sm hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:ring-offset-2 my-2" 
              onclick="document.location='U_LoginPage.shop'">
              가입취소</button>
              <!-- 버튼 사용시 주의 - 리셋버튼이 아니라 새로고침 기능이 있는 버튼(에러메세지도 한꺼번에 지우기 위해서)-->
              <button type="button" class="inline-flex justify-center rounded-md border border-blue-700 bg-white py-2 px-6 text-sm font-medium text-blue-700 shadow-sm hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:ring-offset-0 my-2"
              onclick="location.replace(location.href)">
              다시입력</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
 
  <div class="hidden sm:block" aria-hidden="true">
    <div class="py-5">
      <div class="border-t border-gray-200"></div>
    </div>
  </div>
   <script>
    $("#mem_passwd").keyup(function(){
      if($("#mem_passwd").val()!=""){ 
        if($("#mem_passwd").val().length<4){//4글자미만(조건식 간략화)
          $("#con_passwd").removeClass("hidden");
        }else{
          $("#con_passwd").addClass("hidden");
        } return $("#required_passwd").addClass("hidden");
      }    
    })
    
    function ps_eq(){ 
      let pw1=$("#mem_passwd").val();
      let pw2=$("#mem_repasswd").val();

      if(pw1!="" || pw2!=""){
        if(pw1==pw2){//비밀번호 일치
          $("#ps_o").removeClass("hidden");
          $("#ps_x").addClass("hidden");
          $('#memrepwd_error').hide();
        }else if(pw1!="" && pw2.length>=4){//비밀번호 불일치(has class?) 4자 이상일때?
          $("#ps_x").removeClass("hidden");
          $("#ps_o").addClass("hidden");       
        } return [$("#required_passwd").addClass("hidden"),
          $("#memrepwd_error").addClass("hidden")];  
      }else{
        $("#ps_x").addClass("hidden");
        $("#ps_o").addClass("hidden");
        $("#con_passwd").addClass("hidden");
      }
    }

    $("#mem_repasswd").keyup(ps_eq);

  </script>
</body>
<jsp:include page="footer.jsp" flush="false"/>
</html>
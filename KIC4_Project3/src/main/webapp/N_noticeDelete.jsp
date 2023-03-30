<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
      <script>
    function del(){
      if($("#con_del").val()=="게시물 삭제"){
        return true;
      }else{
        $("#board_delete").removeClass("hidden");
        return false;
      }
    }
  </script>
    <title>공지사항 게시물 삭제</title>
</head>
<body>
<jsp:include page="top.jsp" flush="false" />

	  <!-- 게시물 삭제 section -->
  <section>
    <div>
      <div>
        게시물을 정말 삭제하시겠습니까?
      </div>
    </div>

    
    <form action="./N_noticeList.html" method="get" onsubmit="return del()">

      <!-- ====문구 입력으로 삭제시 사용 part, 제이쿼리 그대로 쓰거나 수정==== -->
      <div>
        <div>삭제를 원하시면 빈칸에 "게시물 삭제"를 입력해주세요.</div>
        <input class="mt-1 block w-80 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm"         
        maxlength="6" type="text" id="con_del" placeholder="게시물 삭제"/>
        <p class="hidden block text-justify text-sm mt-1 -mb-2 pb-1 text-red-500" id="board_delete">문구를 정확히 적어주세요.</p>

        <div class="grid grid-cols-2 justify-items-stretch md:grid-cols-3 bg-gray-50 px-4 py-3 text-center sm:px-6">
          <button type="button" class="col-span-1 md:w-40 md:order-2 md:col-end-auto md:justify-self-end rounded-md border border-blue-700 bg-white py-2 px-6 text-lg md:text-sm font-medium text-blue-700 shadow-sm hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:ring-offset-0 mx-2 my-2" onClick="location.href='N_noticeList.html'">
            <!-- 리스트 이동 -->
            목록으로
          </button>
          <button type="submit" class="col-span-1 md:w-40 md:order-1 md:col-start-2 md:justify-self-center rounded-md border border-transparent bg-blue-700 py-2 px-6 md:text-sm font-medium text-white shadow-sm hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:ring-offset-2 mx-2 my-2">
          삭제하기</button>
          <!-- ./N_notiRead.html 로 이동 설정중 -->          
        </div>
      </div>
      <!-- ====문구 입력으로 삭제시 사용 part==== -->


      <!-- ====비밀번호로 삭제시 사용 part, 이부분 사용시 제이쿼리 수정 필요==== -->
      <div class="">
        <span>글 삭제를 원하시면 비밀번호를 입력해주세요.</span>
        <label for="mem_passwd" class="block text-sm font-medium text-gray-700 font-semibold">비밀번호 입력</label>
        <input type="password" name="mem_passwd" id="mem_passwd"  maxlength="20" 
        class="mt-1 block w-80 rounded-md border-gray-300 shadow-sm focus:border-blue-600 focus:ring-blue-600 sm:text-sm">

        <p class="hidden text-justify text-sm mt-1 -mb-3 text-red-500" 
        id="incorrect_passwd">비밀번호가 일치하지 않습니다.</p>
        <!-- 비밀번호 불일치시 메세지(예시, 백엔드에서 필요시 변경.. alert창 등) -->
        <p class="hidden text-justify text-sm mt-1 -mb-3 text-red-500" 
        id="mw_empty_passwd">비밀번호를 입력해주세요.</p>
        <!-- 비밀번호 불입력시 메세지 - 프론트엔드에서 자바스크립트 이용, 빈칸이면 에러메세지 + submit금지할 예정, 재사용성 고려-->

        <div class="grid grid-cols-2 justify-items-stretch md:grid-cols-3 bg-gray-50 px-4 py-3 text-center sm:px-6">
          <button type="button" class="col-span-1 md:w-40 md:order-2 md:col-end-auto md:justify-self-end rounded-md border border-blue-700 bg-white py-2 px-6 text-lg md:text-sm font-medium text-blue-700 shadow-sm hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:ring-offset-0 mx-2 my-2" onClick="location.href='N_noticeList.html'">
            <!-- 리스트 이동 -->
            목록으로
          </button>
          <button type="submit" class="col-span-1 md:w-40 md:order-1 md:col-start-2 md:justify-self-center rounded-md border border-transparent bg-blue-700 py-2 px-6 md:text-sm font-medium text-white shadow-sm hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:ring-offset-2 mx-2 my-2">
          삭제하기</button>
          <!-- ./N_noticeList.html 로 이동 설정중 -->          
        </div>
      </div>
      <!--  ====비밀번호로 삭제시 사용 part==== -->

    </form>
  </section>
  <!-- 게시물 삭제 section -->
  
<jsp:include page="footer.jsp" flush="false" />
</body>
</html>
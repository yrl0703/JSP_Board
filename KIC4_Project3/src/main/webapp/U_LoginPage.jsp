<%@page contentType="text/html;charset=utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인페이지</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
  <script language="JavaScript" src="script.js?ver=2.0"></script>
</head>
<body>
<jsp:include page="top.jsp" flush="false" />
<!-- ====로그인 섹션(전체)==== -->
<section class="bg-[#F4F7FF] py-20 my-auto">
  <div class="container mx-auto">
    <div class="-mx-4 flex flex-wrap">
      <div class="w-full px-4">
        <div class="relative mx-auto max-w-[525px] overflow-hidden rounded-lg bg-white py-16 px-10 text-center sm:px-12 md:px-[60px]">

          <!-- ==로고(메인페이지 이동)== -->
          <div class="mb-10 text-center md:mb-16">
            <a 
            href="javascript:void(0)" 
            class="mx-auto inline-block max-w-[160px]">
              <img src="./img/logo.png"/>
            </a>
          </div>

          <!-- ==로그인 폼== -->
          <form name="login" method="POST" action="U_LoginPageProc.shop">
            <div class="mb-3">
              <input
                name="memid" id="mem_id"
                type="text"
                placeholder="아이디" maxlength="15"
                class="bordder-[#E9EDF4] w-full rounded-md border bg-[#FCFDFE] py-3 px-5 text-[17px] text-body-color placeholder-[#ACB6BE] outline-none focus:border-primary focus-visible:shadow-none"
              />
            </div>
            <div class="mb-4">
              <input
                name="pwd" id="mem_pass"
                type="password"
                placeholder="비밀번호" maxlength="20"
                class="bordder-[#E9EDF4] w-full rounded-md border bg-[#FCFDFE] py-3 px-5 text-[17px] text-body-color placeholder-[#ACB6BE] outline-none focus:border-primary focus-visible:shadow-none"
                onkeyup="checkCapsLock(event)"
              />
            </div>
              <!-- 에러메세지 출력 -->
            <p id="error_message"></p>

            <div class="mb-3">
              <input
              type="button"
              value="로그인"
              class="bordder-primary w-full cursor-pointer rounded-md  bg-primary py-4 px-5 text-lg text-white transition hover:bg-opacity-90 bg-blue-600"
              onclick="loginCheck()"
              />
            </div>
          </form>

          <!-- ==소셜로그인== -->
          <ul class="-mx-2 mb-12">
            <li class="w-full px-2 py-1 mb-4">
              <a 
              href="javascript:void(0)"
              class="flex h-11 items-center hover:opacity-80">
                <img src="./img/kakao_login.png"/>
              </a>
            </li>
            <li class="w-full px-2 py-1">
              <a
                href="javascript:void(0)"
                class="flex h-11 items-center hover:opacity-90">
              <img src="./img/naver_login.png"/>
              </a>
            </li>            
          </ul>

          <!-- ==아이디,비밀번호 찾기, 가입하기== -->
          <div>
            <a
              href="U_SearchId.shop"
              class="mb-2 inline-block text-base text-[#adadad] hover:text-primary hover:underline font-medium">
              아이디 찾기
            </a>
            <span>/</span>
            <a
            href="U_SearchPwd.shop"
            class="mb-2 inline-block text-base text-[#adadad] 
            hover:text-primary hover:underline font-medium">
            비밀번호 찾기
            </a>
          </div>
          <p class="text-base text-[#adadad] font-normal">
            아직 회원이 아니신가요?
            <a href="U_Agreement.shop" class="text-primary text-blue-600 hover:text-blue-400 hover:underline">
              가입하기
            </a>
          </p>          
        </div>

      </div>
    </div>
  </div>
</section>
<!-- ====로그인 섹션(전체)==== -->
</body>
<jsp:include page="footer.jsp" flush="false"/>
</html>
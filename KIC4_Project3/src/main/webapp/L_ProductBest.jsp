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
    
    <title>상품리스트</title>
</head>
<body>
    <header aria-label="Site Header" class="bg-white sticky shadow-sm top-0 z-10  backdrop-blur-sm	bg-white/90">
        <div
          class="mx-auto flex h-16 max-w-screen-2xl items-center gap-8 sm:px-6 lg:px-40"
        >
          <a class="block text-teal-600 flex items-center" href="/">
            <span class="sr-only">Home</span>
            <svg
              class="h-1"
              viewBox="0 0 28 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <img src="./logo/logo_mini.png" class="w-10">
              <img src="./logo/logo4.png" class="h-8 ml-1">
            </svg>
          </a>
      
          <div class="flex flex-1 items-center justify-end md:justify-between">
            <nav aria-label="Site Nav" class="hidden md:block">
              <ul class="flex items-center gap-10  font-bold text-base">
                <li>
                  <a class="text-gray-900 transition hover:text-gray-500/75" href="/KIC4_Project3/product.shop">
                    전체상품
                  </a>
                </li>
      
                <li>
                  <a class="text-gray-900 transition hover:text-gray-500/75" href="/KIC4_Project3/productBest.shop">
                    베스트
                  </a>
                </li>
      
                <li>
                  <a class="text-gray-900 transition hover:text-gray-500/75" href="/">
                    이벤트
                  </a>
                </li>
      
                <li>
                  <a class="text-gray-900 transition hover:text-gray-500/75" href="/">
                    공지사항
                  </a>
                </li>
      
              </ul>
            </nav>
      
            <div class="flex items-center gap-4">
              <div class="flex gap-4">
                <a
                  class="block px-1 py-2.5 text-sm font-medium text-gray-700 transition hover:text-gray-500"
                  href="/"
                >
                  마이페이지
                </a>
      
                <a
                class="block px-1 py-2.5 text-sm font-medium text-gray-700 transition hover:text-gray-500"
                  href="/"
                >
                  로그인
                </a>
                <a href="#" class="block py-3 px-2 hover:border-red-700">
                  <svg class="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" xmlns="http://www.w3.org/2000/svg">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z"></path>
                  </svg>
                </a>
              </div>
      
              <button
                class="block rounded bg-gray-100 p-2.5 text-gray-600 transition hover:text-gray-600/75 md:hidden"
              >
                <span class="sr-only">Toggle menu</span>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                  stroke-width="2"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M4 6h16M4 12h16M4 18h16"
                  />
                </svg>
              </button>
            </div>
          </div>
        </div>
    </header>


    <section>
    

   		<div class="relative max-w-screen-2xl px-4 py-0 mx-auto sm:px-6 sm:py-12 lg:pt-0 lg:pb-0 lg:px-40">
   		<div class="flex items-center sm:gap-4 mt-10 pl-8 py-8 border-0 border-solid border-inherit rounded-[15px] bg-gray-50">
		<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="h-12">
  			<path stroke-linecap="round" stroke-linejoin="round" d="M16.5 18.75h-9m9 0a3 3 0 013 3h-15a3 3 0 013-3m9 0v-3.375c0-.621-.503-1.125-1.125-1.125h-.871M7.5 18.75v-3.375c0-.621.504-1.125 1.125-1.125h.872m5.007 0H9.497m5.007 0a7.454 7.454 0 01-.982-3.172M9.497 14.25a7.454 7.454 0 00.981-3.172M5.25 4.236c-.982.143-1.954.317-2.916.52A6.003 6.003 0 007.73 9.728M5.25 4.236V4.5c0 2.108.966 3.99 2.48 5.228M5.25 4.236V2.721C7.456 2.41 9.71 2.25 12 2.25c2.291 0 4.545.16 6.75.47v1.516M7.73 9.728a6.726 6.726 0 002.748 1.35m8.272-6.842V4.5c0 2.108-.966 3.99-2.48 5.228m2.48-5.492a46.32 46.32 0 012.916.52 6.003 6.003 0 01-5.395 4.972m0 0a6.726 6.726 0 01-2.749 1.35m0 0a6.772 6.772 0 01-3.044 0" />
 		 	<span class="font-bold text-3xl font-sans serif">베스트 셀러</span>
		</svg>
		</div>
		</div>


      <!-- 상품 -->
      <div class="relative max-w-screen-2xl px-4 py-0 mx-auto sm:px-6 sm:py-12 lg:pt-0 lg:pb-0 lg:px-40">
        <div>
        
          <!-- 상품리스트 -->
          <div class="lg:col-span-4 mt-4 pb-10">

            <p class="mt-12 mb-6 flex justify-start">
              <span class="text-gray-700 text-sm"> <em class="productlist-num not-italic font-bold">30</em> 건의 결과가 있어요 </span>
            </p>
            
            <ul class="grid gap-6  lg:grid-cols-4 sm:grid-cols-8 ">

         	<c:forEach var="product" items="${productList}">
              <li class="mb-16">
                <a href="#" class=" block overflow-hidden group">
                  <div class="rounded-lg w-full hover:rounded-lg overflow-hidden ">
                    <img src="${product.imgpath}.jpg" alt="${product.pname}"
                    class="object-cover transition duration-500  group-hover:scale-105 "
                  />  
                  </div>
                 
                  <div class="relative pt-3 bg-white">
                    <h3
                      class="text-sm text-gray-900 font-bold">
                    ${product.pname}
                    </h3>

                    <p class="mt-2">
                      <span class="text-gray-900 font-bold"> <em class="price not-italic tracking-tighter">
                      <fmt:formatNumber value="${product.pprice}" pattern="###,###,###" /></em><span class="text-xs">원</span> 
                      </span>
                    </p>
                    <hr class="my-1">
                    <span class="text-xs">
                    ${product.pdesc}
                    </span>
                    
                  </div>
                </a>
              </li>
              </c:forEach>
              
            </ul>			

          </div>


        </div>
      </div>
    </section>


    <footer aria-label="Site Footer" class="bg-gray-100">
        <div class="mx-auto max-w-5xl px-4 py-16 sm:px-6 lg:px-40">
          <div class="flex justify-center text-teal-600">
            <svg
              class="h-0"
              viewBox="0 0 118 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <div class="flex justify-center">
              <img src="./logo/logo2.png" class="h-40">
              </div>
            </svg>
          </div>
      
          <p class="mx-auto mt-6 max-w-md text-center leading-relaxed text-gray-500">
            고객센터 : 070-123-4567 <br>
            평일 : 10:00 - 18:00, 주말 휴무
          </p>
      
          <nav aria-label="Footer Nav" class="mt-12">
            <ul class="flex flex-wrap justify-center gap-6 md:gap-8 lg:gap-12">
              <li>
                <a class="text-gray-700 transition hover:text-gray-700/75" href="/">
                  이용약관
                </a>
              </li>
      
              <li>
                <a class="text-gray-700 transition hover:text-gray-700/75" href="/">
                  개인정보처리방침
                </a>
              </li>
      
              <li>
                <a class="text-gray-700 transition hover:text-gray-700/75" href="/">
                  사업자정보
                </a>
              </li>
            </ul>
          </nav>
      
          <ul class="mt-12 flex justify-center gap-6 md:gap-8">
            <li>
              <a
                href="/"
                rel="noreferrer"
                target="_blank"
                class="text-gray-700 transition hover:text-gray-700/75"
              >
                <span class="sr-only">Facebook</span>
                <svg
                  class="h-6 w-6"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                  aria-hidden="true"
                >
                  <path
                    fill-rule="evenodd"
                    d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z"
                    clip-rule="evenodd"
                  />
                </svg>
              </a>
            </li>
      
            <li>
              <a
                href="/"
                rel="noreferrer"
                target="_blank"
                class="text-gray-700 transition hover:text-gray-700/75"
              >
                <span class="sr-only">Instagram</span>
                <svg
                  class="h-6 w-6"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                  aria-hidden="true"
                >
                  <path
                    fill-rule="evenodd"
                    d="M12.315 2c2.43 0 2.784.013 3.808.06 1.064.049 1.791.218 2.427.465a4.902 4.902 0 011.772 1.153 4.902 4.902 0 011.153 1.772c.247.636.416 1.363.465 2.427.048 1.067.06 1.407.06 4.123v.08c0 2.643-.012 2.987-.06 4.043-.049 1.064-.218 1.791-.465 2.427a4.902 4.902 0 01-1.153 1.772 4.902 4.902 0 01-1.772 1.153c-.636.247-1.363.416-2.427.465-1.067.048-1.407.06-4.123.06h-.08c-2.643 0-2.987-.012-4.043-.06-1.064-.049-1.791-.218-2.427-.465a4.902 4.902 0 01-1.772-1.153 4.902 4.902 0 01-1.153-1.772c-.247-.636-.416-1.363-.465-2.427-.047-1.024-.06-1.379-.06-3.808v-.63c0-2.43.013-2.784.06-3.808.049-1.064.218-1.791.465-2.427a4.902 4.902 0 011.153-1.772A4.902 4.902 0 015.45 2.525c.636-.247 1.363-.416 2.427-.465C8.901 2.013 9.256 2 11.685 2h.63zm-.081 1.802h-.468c-2.456 0-2.784.011-3.807.058-.975.045-1.504.207-1.857.344-.467.182-.8.398-1.15.748-.35.35-.566.683-.748 1.15-.137.353-.3.882-.344 1.857-.047 1.023-.058 1.351-.058 3.807v.468c0 2.456.011 2.784.058 3.807.045.975.207 1.504.344 1.857.182.466.399.8.748 1.15.35.35.683.566 1.15.748.353.137.882.3 1.857.344 1.054.048 1.37.058 4.041.058h.08c2.597 0 2.917-.01 3.96-.058.976-.045 1.505-.207 1.858-.344.466-.182.8-.398 1.15-.748.35-.35.566-.683.748-1.15.137-.353.3-.882.344-1.857.048-1.055.058-1.37.058-4.041v-.08c0-2.597-.01-2.917-.058-3.96-.045-.976-.207-1.505-.344-1.858a3.097 3.097 0 00-.748-1.15 3.098 3.098 0 00-1.15-.748c-.353-.137-.882-.3-1.857-.344-1.023-.047-1.351-.058-3.807-.058zM12 6.865a5.135 5.135 0 110 10.27 5.135 5.135 0 010-10.27zm0 1.802a3.333 3.333 0 100 6.666 3.333 3.333 0 000-6.666zm5.338-3.205a1.2 1.2 0 110 2.4 1.2 1.2 0 010-2.4z"
                    clip-rule="evenodd"
                  />
                </svg>
              </a>
            </li>
      
            <li>
              <a
                href="/"
                rel="noreferrer"
                target="_blank"
                class="text-gray-700 transition hover:text-gray-700/75"
              >
                <span class="sr-only">Twitter</span>
                <svg
                  class="h-6 w-6"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                  aria-hidden="true"
                >
                  <path
                    d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84"
                  />
                </svg>
              </a>
            </li>
      
            <li>
              <a
                href="/"
                rel="noreferrer"
                target="_blank"
                class="text-gray-700 transition hover:text-gray-700/75"
              >
                <span class="sr-only">GitHub</span>
                <svg
                  class="h-6 w-6"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                  aria-hidden="true"
                >
                  <path
                    fill-rule="evenodd"
                    d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
                    clip-rule="evenodd"
                  />
                </svg>
              </a>
            </li>
      
            <li>
              <a
                href="/"
                rel="noreferrer"
                target="_blank"
                class="text-gray-700 transition hover:text-gray-700/75"
              >
                <span class="sr-only">Dribbble</span>
                <svg
                  class="h-6 w-6"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                  aria-hidden="true"
                >
                  <path
                    fill-rule="evenodd"
                    d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10c5.51 0 10-4.48 10-10S17.51 2 12 2zm6.605 4.61a8.502 8.502 0 011.93 5.314c-.281-.054-3.101-.629-5.943-.271-.065-.141-.12-.293-.184-.445a25.416 25.416 0 00-.564-1.236c3.145-1.28 4.577-3.124 4.761-3.362zM12 3.475c2.17 0 4.154.813 5.662 2.148-.152.216-1.443 1.941-4.48 3.08-1.399-2.57-2.95-4.675-3.189-5A8.687 8.687 0 0112 3.475zm-3.633.803a53.896 53.896 0 013.167 4.935c-3.992 1.063-7.517 1.04-7.896 1.04a8.581 8.581 0 014.729-5.975zM3.453 12.01v-.26c.37.01 4.512.065 8.775-1.215.25.477.477.965.694 1.453-.109.033-.228.065-.336.098-4.404 1.42-6.747 5.303-6.942 5.629a8.522 8.522 0 01-2.19-5.705zM12 20.547a8.482 8.482 0 01-5.239-1.8c.152-.315 1.888-3.656 6.703-5.337.022-.01.033-.01.054-.022a35.318 35.318 0 011.823 6.475 8.4 8.4 0 01-3.341.684zm4.761-1.465c-.086-.52-.542-3.015-1.659-6.084 2.679-.423 5.022.271 5.314.369a8.468 8.468 0 01-3.655 5.715z"
                    clip-rule="evenodd"
                  />
                </svg>
              </a>
            </li>
          </ul>
        </div>
      </footer>
</body>
</html>
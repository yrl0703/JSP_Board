<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<c:set var="memid" value="${memid}"/>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>술주랑</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<!-- 점3 정리 -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:200,400&display=swap" rel="stylesheet">

    <script type="text/javascript">

        $(document).ready(function () {
          $(".slide_div").not("show_slide").hide();//show_slide 클래스가 아닌것을 hidden
          setInterval(nextSlide, 4000); 
        });
        
        function prevSlide() {
          $(".slide_div").hide();
          let allSlide = $(".slide_div"); 
          let currentIndex = 0; 
          $(".slide_div").each(function(index,item){ 
            if($(this).hasClass("show_slide")) {//show_slide가지고 있다면 
              currentIndex = index;
            }
          });
                
          let newIndex = 0;
            
          if(currentIndex <= 0) {
            newIndex = allSlide.length-1;
          } else {
            newIndex = currentIndex-1;
          }
        
          $(".slide_div").removeClass("show_slide");        
          $(".slide_div").eq(newIndex).addClass("show_slide");
          $(".slide_div").eq(newIndex).show();
        
        }
        
        function nextSlide() {
          $(".slide_div").hide();
          let allSlide = $(".slide_div");
          let currentIndex = 0;
          
          $(".slide_div").each(function(index,item){
            if($(this).hasClass("show_slide")) {
              currentIndex = index;
            }
                
          });
          
          let newIndex = 0;
          
          if(currentIndex >= allSlide.length-1) {
            newIndex = 0;
          } else {
            newIndex = currentIndex+1;
          }
        
          $(".slide_div").removeClass("show_slide");
          $(".slide_div").eq(newIndex).addClass("show_slide");
          $(".slide_div").eq(newIndex).show();
          
        }
        
        </script>
        <jsp:include page="top.jsp" flush="false" />
</head>


<body>
    <section class="bg-white text-gray-600 work-sans leading-normal text-base tracking-normal">
    <div class="carousel relative container mx-auto" style="max-width:1600px;">
        <div class="carousel-inner relative overflow-hidden w-full">
            <!-- 슬라이드 1 -->

            <input class="carousel-open hidden" type="radio" id="carousel-1" name="carousel" aria-hidden="true" checked="checked">
            <div class="carousel-item absolute opacity-0" style="height:50vh;">
                <div class="slide_div show_slide block h-full w-full mx-auto flex pt-6 md:pt-0 md:items-center bg-cover bg-right" style="background-image: url(../img/ev1.jpg);">
                    <!-- 출처 <a href="https://kr.freepik.com/free-photo/high-angle-sake-japanese-beverage_32037654.htm#page=4&query=%EC%88%A0&position=13&from_view=keyword&track=sph">Freepik</a> -->
                    <div class="container mx-auto">
                        <div class="flex flex-col w-full lg:w-1/2 md:ml-16 items-center md:items-start px-6 tracking-wide">
                            <p class="text-white text-2xl my-4">부드럽고 깔끔한 그 맛</p>
                            <a class="text-xl inline-block no-underline border-b border-gray-600 leading-relaxed  text-gray-800 font-bold hover:text-black hover:border-black" href="#">증류주 이벤트 보러가기</a>
                        </div>
                    </div>
                </div>
            </div>
            <label for="carousel-3" class="prev control-1 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900  opacity-50 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
            <label for="carousel-2" class="next control-1 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900  opacity-50 leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>

            <!-- 슬라이드 2 -->
            <input class="carousel-open hidden" type="radio" id="carousel-2" name="carousel" aria-hidden="true">
            <div class="carousel-item absolute opacity-0 bg-cover bg-right" style="height:50vh;">
                <div class="slide_div block h-full w-full mx-auto flex pt-6 md:pt-0 md:items-center bg-cover bg-right" style="background-image: url(./img/ev2.jpg);">
                    <!-- 출처 <a href="https://kr.freepik.com/free-photo/high-angle-cups-with-sake-drink_33747567.htm#query=%EC%A0%84%ED%86%B5%EC%A3%BC&position=4&from_view=search&track=sph">Freepik</a>-->
                    <div class="container mx-auto">
                        <div class="flex flex-col w-full lg:w-1/2 md:ml-16 items-center md:items-start px-6 tracking-wide">
                            <p class="text-white font-family text-2xl my-4">술잔을 나누고 싶은 상대방이 있나요?</p>
                            <a class="text-xl inline-block no-underline border-b border-gray-600 leading-relaxed text-gray-600 font-bold hover:text-black hover:border-black" href="#">선물하기 이벤트 보러가기</a>
                        </div>
                    </div>

                </div>
            </div>
            <label for="carousel-1" class="prev control-2 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900  opacity-50  leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
            <label for="carousel-3" class="next control-2 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900  opacity-50   leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>

            <!-- 슬라이드 3-->
            <input class="carousel-open hidden" type="radio" id="carousel-3" name="carousel" aria-hidden="true">
            <div class="carousel-item absolute opacity-0" style="height:50vh;">
                <div class="slide_div block h-full w-full mx-auto flex pt-6 md:pt-0 md:items-center bg-cover bg-bottom" style="background-image: url(./img/ev3.jpg)">
                    <!-- <a href="https://kr.freepik.com/free-photo/soju-bottles-and-korean-side-dishes-on-the-menu_13902907.htm#query=%EC%A0%84%ED%86%B5%EC%A3%BC&position=8&from_view=search&track=sph">작가 jcomp</a> 출처 Freepik-->
                    <div class="container mx-auto">
                        <div class="flex flex-col w-full lg:w-1/2 md:ml-16 items-center md:items-start px-6 tracking-wide">
                            <p class="text-white text-2xl my-4">나의 베스트 안주는?</p>
                            <a class="text-xl inline-block no-underline border-b border-gray-600 leading-relaxed  text-gray-300 font-bold hover:text-black hover:border-black" href="#">리뷰 이벤트 보러가기</a>
                        </div>
                    </div>

                </div>
            </div>
            <label for="carousel-2" class="prev control-3 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900  opacity-50 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
            <label for="carousel-1" class="next control-3 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900  opacity-50  leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>

            <ol class="carousel-indicators">
                <li class="inline-block mr-3">
                    <label for="carousel-1" class="carousel-bullet cursor-pointer block text-4xl text-white hover:text-gray-900">•</label>
                </li>
                <li class="inline-block mr-3">
                    <label for="carousel-2" class="carousel-bullet cursor-pointer block text-4xl text-white hover:text-gray-900">•</label>
                </li>
                <li class="inline-block mr-3">
                    <label for="carousel-3" class="carousel-bullet cursor-pointer block text-4xl text-white hover:text-gray-900">•</label>

                </li>
            </ol>

        </div>
    </div>

    <section class="bg-white py-8">

        <div class="container mx-auto flex items-center flex-wrap pt-4 pb-12">

            <nav id="store" class="w-full z-30 top-0 px-6 py-1">
                <div class="w-full container mx-auto flex flex-wrap items-center justify-between mt-0 px-2 py-3">

                    <a class="uppercase tracking-wide no-underline hover:no-underline font-bold text-gray-800 text-xl " href="#">
				상품 목록
			</a>

                    <div class="flex items-center" id="store-nav-content">

                        <a class="pl-3 inline-block no-underline hover:text-black" href="#">
                            <svg class="fill-current hover:text-black" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                <path d="M7 11H17V13H7zM4 7H20V9H4zM10 15H14V17H10z" />
                            </svg>
                        </a>

                        <a class="pl-3 inline-block no-underline hover:text-black" href="#">
                            <svg class="fill-current hover:text-black" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                <path d="M10,18c1.846,0,3.543-0.635,4.897-1.688l4.396,4.396l1.414-1.414l-4.396-4.396C17.365,13.543,18,11.846,18,10 c0-4.411-3.589-8-8-8s-8,3.589-8,8S5.589,18,10,18z M10,4c3.309,0,6,2.691,6,6s-2.691,6-6,6s-6-2.691-6-6S6.691,4,10,4z" />
                            </svg>
                        </a>

                    </div>
                </div>
            </nav>

            <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
                <a href="#">
                    <img src="../img/sool.jpg">
                    <div class="pt-3 flex items-center justify-between">
                        <p class="">상품명</p>
                        <span class="text-yellow-400">★★★★★</span>
                    </div>
                    <p class="pt-1 text-gray-900">0000원</p>
                </a>
            </div>

            <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
                <a href="#">
                    <img src="../img/sool.jpg">
                    <div class="pt-3 flex items-center justify-between">
                        <p class="">상품명</p>
                        <span class="text-yellow-400">★★★★★</span>
                    </div>
                    <p class="pt-1 text-gray-900">0000원</p>
                </a>
            </div>

            <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
                <a href="#">
                    <img src="../img/sool.jpg">
                    <div class="pt-3 flex items-center justify-between">
                        <p class="">상품명</p>
                        <span class="text-yellow-400">★★★★★</span>
                    </div>
                    <p class="pt-1 text-gray-900">0000원</p>
                </a>
            </div>

            <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
                <a href="#">
                    <img src="../img/sool.jpg">
                    <div class="pt-3 flex items-center justify-between">
                        <p class="">상품명</p>
                        <span class="text-yellow-400">★★★★★</span>
                    </div>
                    <p class="pt-1 text-gray-900">0000원</p>
                </a>
            </div>


            <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
                <a href="#">
                    <img src="../img/sool.jpg">
                    <div class="pt-3 flex items-center justify-between">
                        <p class="">상품명</p>
                        <span class="text-yellow-400">★★★★★</span>
                    </div>
                    <p class="pt-1 text-gray-900">0000원</p>
                </a>
            </div>

            <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
                <a href="#">
                    <img src="../img/sool.jpg">
                    <div class="pt-3 flex items-center justify-between">
                        <p class="">상품명</p>
                        <span class="text-yellow-400">★★★★★</span>
                    </div>
                    <p class="pt-1 text-gray-900">0000원</p>
                </a>
            </div>

            <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
                <a href="#">
                    <img src="../img/sool.jpg">
                    <div class="pt-3 flex items-center justify-between">
                        <p class="">상품명</p>
                        <span class="text-yellow-400">★★★★★</span>
                    </div>
                    <p class="pt-1 text-gray-900">0000원</p>
                </a>
            </div>

            <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
                <a href="#">
                    <img src="../img/sool.jpg">
                    <div class="pt-3 flex items-center justify-between">
                        <p class="">상품명</p>
                        <span class="text-yellow-400">★★★★★</span>
                    </div>
                    <p class="pt-1 text-gray-900">0000원</p>
                </a>
            </div>

            <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
                <a href="#">
                    <img src="../img/sool.jpg">
                    <div class="pt-3 flex items-center justify-between">
                        <p class="">상품명</p>
                        <span class="text-yellow-400">★★★★★</span>
                    </div>
                    <p class="pt-1 text-gray-900">0000원</p>
                </a>
            </div>
            </div>

    </section>

    <section class="bg-white py-8">

        <div class="container py-8 px-6 mx-auto">

            <a class="uppercase tracking-wide no-underline hover:no-underline font-bold text-gray-800 text-xl mb-8" href="#">
			상품 리뷰
            </a>

            <p class="mb-8">
                어떻게 적어야 하나
            </p>

        </div>

    </section>

    <footer aria-label="Site Footer" class="bg-gray-100 py-4 text-center">
        <p class="text-lg font-bold">술주랑</p>
        <p></p>
        <p></p>고객센터: 000-000-0000
        <p></p>평일 10:00 - 18:00, 주말 휴무

        <p>사업자등록번호 : 000-00-0000

        <p>사업자확인
        <p>통신판매 신고번호: 2000-서울서초-2000
        <p>술주랑은 통신판매중개자로서 통신판매 당사자가 아니며, 판매자가 등록한 상품정보 및 거래에 대해 술주랑은 책임을 지지 않습니다.

        <p>고객님의 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 NICE구매안전 (에스크로) 서비스를 이용하실 수 있습니다.
    </footer>
</section>
</body>

</html>

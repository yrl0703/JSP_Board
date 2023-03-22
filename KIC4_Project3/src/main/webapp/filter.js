/**
 *  상품 필터 검색
 */

var category=[];
$(function(){
	
	//var category=[];
   			
   	//이름이 pcategory인 checkbox를 클릭했을때
   	$('input:checkbox[name=filter]').on("click", function(){
   		//만약 체크가 되어있다면
	   	if($(this).is(":checked")==true){
	   		//배열에 value값을 넣는다.
	   		category.push($(this).val());   	
	   		//console.log(category.includes('탁주'))		
	   	} else{
			//체크해제시 배열에서 삭제
			var deleteItem=(category,value)=>category.filter(x=>x!=value);
			category=deleteItem(category,$(this).val());
		 }
   		console.log(category);
   		
	})
   			
}) 

function filterSearch(){
	location.href="product.shop?pcategory="+category
}

function reset(){
	if($("input:checkbox[name='filter']").is(":checked") == true){
		$("input:checkbox[name='filter']").prop("checked", false);
		category.splice(0);
		console.log(category);
	}
}
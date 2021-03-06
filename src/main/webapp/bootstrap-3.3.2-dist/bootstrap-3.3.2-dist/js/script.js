jQuery(document).ready(function(){

    // .navi의 li 태그에 mouseover 이벤트 설정
    $('.navi>li').mouseover(function(){
        // $(this) : 현재 선택된 태그(요소)
        // find('.submenu') : 선택된 태그의 자식 태그 중 .submenu와 일치하는 태그를
        //        찾아서 반환함. 만약에, children()를 사용할 경우 직계 자식 태그를 반환함
        // stop() : 현재 동작하고 있는 애니메이션 동작을 즉시 중단함
        // slideDown(), slideUp() : jQuery 라이브러리에서 제공하는 함수로
        // 슬라이딩 애니메이션과 함께 보여주거나 숨김 구현함. 선택한 요소의 height 값을
        // 낮추거나 높혀가며 슬라이드 업 또는 다운 전환되게 함.
        // 매개변수값(인수) 500은 0.5초를 의미함
         $(this).find('.submenu').stop().slideDown(500);
     // .navi의 li 태그에 mouseout 이벤트 설정
     }).mouseout(function(){
         $(this).find('.submenu').stop().slideUp(500);
     });

    // .imgslide a:gt(0) : gt(index)은 index 값보다
    //  더 큰 값(Greater)을 가진 요소를 선택함.
    //  0번째부터 계수하여 index 값보다 큰 값을 가져옴.
    //  여기에서는 gt(0)이므로 1, 2, 3이 됨
    $('.imgslide img:gt(0)').hide();
    // setInterval(function(){}), 3000 : 일정시간마다 반복적으로
    // 동작을 실행하게 함. 3000은 3000ms(3초)는 3초마다 반복 실행함.
     setInterval(function(){
        // 가상클래스 선택자로 부모 요소가 가지고 있는 자식 요소 중
        // 첫번째를 선택함. imgslide의 자식요소 <a>요소에서
        // 첫 번째를 선택하여 페이드아웃 실행함
         $('.imgslide img:first-child').fadeOut()
        // 다음 요소를 선택하여 페이드인 실행함
         .next('img').fadeIn()
        // 끝에다 appendTo()함수 내용을 붙여줌
        // 즉, 선택한 요소를 .imgslide 선택자 요소의
        // 자식 요소로 추가해줌
         .end().appendTo('.imgslide');}, 5000);

    $(function () {

        // ('.tabmenu>li>a').click : .tabmenu 요소의 자식 요소 <li>의
        // 자식 요소인 <a> 요소 영역을 클릭하면
       $('.tabmenu>li>a').click(function () {
           // (this).parent().addClass("active") : 현재 요소의 부모 요소를
           // 찾아 'active' 클래스를 추가해 줌. <a> 요소의 부모 요소는 <li>
           // 이므로, 클릭하면 <li>에 'active' 클래스를 추가해 줌
           $(this).parent().addClass("active")
           // .siblings().removeClass("active") : 다른 형제 요소를 찾은 후
           // 'active' 클래스를 삭제해 줌
           .siblings().removeClass("active");
           // return false : 클릭 이벤트 처리를 중단하고 함수를 호출한 곳으로
           // 즉시 돌아가도록 함. 이것은 HTML에서 요소들은 중첩되어 있기 때문에
           // <a> 요소를 클릭하면 이 요소를 감싸고 있는 부모 요소들도 클릭한
           // 것처럼 이벤트에 반응하게 됨. 이런 것을 이벤트 버블링(Event bubbling)
           // 이라고 함. 따라서, 현재 이벤트를 중지시키고, 그 이벤트가 부모 요소에
           // 전달되지 않도록 중지하기 위해서 return false를 사용함.
           // 단, return false를 사용하면 자바스크립트 해석기가 이 구문을 만나는
           // 즉시 코드 실행을 중지하기 때문에 return false 다음에 다른 문장을
           // 쓰지 않도록 주의가 필요함
           return false;
       });
    });

         // (".notice li:first").click : .notice 요소의 후손 요소
         // 중에서 첫 번째 요소를 클릭하면
         $(".notice li:first").click(function(){
            // #modal과 일치하는 요소에 'active'클래스를 추가함 
            $("#layer").addClass("active");
         });

         // .btn 요소를 클릭하면
         $(".btn").click(function(){
             // #modal의 'active'클래스를 삭제함
            $("#layer").removeClass("active");
         });


});
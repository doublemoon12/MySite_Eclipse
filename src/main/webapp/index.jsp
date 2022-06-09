<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>My Site</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="bootstrap-3.3.2-dist/bootstrap-3.3.2-dist/css/my.css">
    <script src="bootstrap-3.3.2-dist/bootstrap-3.3.2-dist/js/script.js" defer type="text/javascript"></script>
    <script src="bootstrap-3.3.2-dist/bootstrap-3.3.2-dist/js/jquery-1.12.3.js"></script>
</head>
<body>
    
    <header>
        <div class="top">
            <div class="logo">
                <a href="http://doublemoon.dothome.co.kr/"><img src="image/logo.png" alt="로고" title="홈페이지로"></a>
            </div>
            <nav class="menu">
                <ul class="menumenu">
                    <li><a href="#">고객센터</a></li>
                    <li><a href="#">주문하기</a></li>
                    <li><a href="http://doublemoon.dothome.co.kr/product.html">상품설명</a></li>
                    <li><a href="http://doublemoon.dothome.co.kr/login.html">로그인</a></li>
                </ul>
            </nav>
            <div class="menuicon"><div class="dropdown">
                <a class="" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="bi bi-list" style="font-size: 50px; color: #f0536a;"></i>
                </a>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                  <li><a class="dropdown-item" href="http://doublemoon.dothome.co.kr/login.html">로그인</a></li>
                  <li><a class="dropdown-item" href="http://doublemoon.dothome.co.kr/product.html">상품설명</a></li>
                  <li><a class="dropdown-item" href="">주문하기</a></li>
                  <li><a class="dropdown-item" href="">고객센터</a></li>
                </ul>
              </div></div>
        </div>
    </header>

    <div class="middlebody">
        <div class="bodyimage imgslide">
            <img class="img" style="background-image: url(image/backgoround.jpg); background-size: cover;">
            <img class="img" style="background-image: url(image/background.jpg); background-size: cover;">
            <img class="img" style="background-image: url(image/Back\ Ground\ Image.jpg); background-size: cover;">
        </div>
        <div class="note">
        <span class="bodynote" style="line-height: 100%; font-size: 50px; font-weight: 600;">당신의 몸을 탐험하세요</span>
            <span class="bodynote2">나도 몰랐던 본인을 찾아가는 탐험, 디스커버 바이오가 함께하겠습니다.
                <br>하루 10분 투자로 질병위험도는 낮추고  건강한 삶을 그려보세요.
            </span>
          </div>
    </div>

    <footer>
        <div class="card mb-5" style="font-family: 'Noto Sans KR', sans-serif; margin-top: 50px;">
            <div class="row g-1">
              <div class="col-md-4">
                <img src="image/Health.jpg" class="img-fluid rounded-start" alt="...">
              </div>
              <div class="col-md-8 row align-items-center">
                <div class="card-body ">
                  <h5 class="card-title fs-2" style="font-weight: 600;">데일리 헬스케어</h5><br>
                  <p class="card-text lh-sm">알고 계셨나요? 사람들은 저마다 다른 유전자 환경을 가지고 있습니다.
                    그래서 같은 프로바이오틱스를 섭취해도 누군가는 효과를 보고, 누군가는 변비에 걸립니다. 저희 디스커버 바이오는 장내미생물 분석 서비스를 통해 시중에 나와있는 제품 중 가장 본인에게 잘 맞는 프로바이오틱스 제품을 추천드립니다.                    
                    또 개인 유전자 분석을 통해 암 발병 위험도를 예측하여 병원 방문 혹은 식단 조절을 통한 예방법을 권해드립니다.</p>
                </div>
              </div> 
            </div>
          </div>
          <div class="card mb-5" style="font-family: 'Noto Sans KR', sans-serif;">
            <div class="row g-1" style="margin-right: calc(-25px);">
              <div class="col-md-8 row align-items-center">
                <div class="card-body ">
                  <h5 class="card-title fs-2" style="font-weight: 600;">행복한 삶</h5><br>
                  <p class="card-text lh-sm">건강한 삶을 통해 행복을 누리세요. 저희 디스커버 바이오는 비대면 헬스케어 서비스를 통해 고객님들께 건강한 삶을 선물해 드리겠습니다. 무엇보다 건강함이 중요시 되는 요즘 시대에 가족들과 함께 전문적인 서비스를 집에서 받아보세요.</p>
                </div>
              </div>
              <div class="col-md-4">
                <img src="image/BE HAPPY.jpg" class="img-fluid rounded-start" alt="...">
              </div>
            </div>
          </div>
          <div class="footernote">
            <div class="note1">
            <p style="font-size: 20px;">Company.(주) Moon Bio</p><br>
            <p>oner. 김문준/Kim Moon Joon</p>
            <p>010 - 1111 - 2222</p>
            <p>서울시 금천구 가산디지털2로 123
              월드메르디앙2차 4층  413호</p>
            </div>
            <div class="note2">
              <p style="font-size: 20px;">SERVICE</p><br>
              <p>고객님은 안전거래를 위해 현금 등으로 결제시 저희 사이트에서 가입한 구매안전 서비스를 이용하실 수 있습니다.</p>
            </div>
          </div>
    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
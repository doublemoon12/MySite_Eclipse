<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="bootstrap-3.3.2-dist/bootstrap-3.3.2-dist/css/my2.css">


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
            <div class="menuicon">
                <div class="dropdown">
                    <a class="" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <i class="bi bi-list" style="font-size: 50px; color: #f0536a;"></i>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <li><a class="dropdown-item" href="http://doublemoon.dothome.co.kr/login.html">로그인</a></li>
                        <li><a class="dropdown-item" href="http://doublemoon.dothome.co.kr/product.html">상품설명</a></li>
                        <li><a class="dropdown-item" href="">주문하기</a></li>
                        <li><a class="dropdown-item" href="">고객센터</a></li>
                    </ul>
                </div>
            </div>
    </header>

    <section>
        <div class="productmid">
            <h1>
                Discover Bio의 상품을
                <br>
                소개합니다.
            </h1>
            <img class="img" alt="">
        </div>
    </section>

    <section>
        <div class="container"
            style="padding: 150px 50px; margin: 0px; max-width: 100%; background-color: #f8f9fa; font-family: 'Noto Sans KR', sans-serif;;">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="card"
                        style="width: auto; padding-bottom: 20px; border: none; background-color: #f8f9fa;">
                        <a href=""><img src="image/gutmicro.png" class="card-img-top" alt="..."></a>
                        <div class="card-body">
                            <h5 class="card-title">장내 미생물</h5>
                            <p class="card-text">장내 미생물의 다양성과 유익균, 유해균의 분포도를 확인하여 맞춤 솔루션을 제공합니다.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="card"
                        style="width: auto; padding-bottom: 20px; border: none; background-color: #f8f9fa;">
                        <a href=""><img src="image/oral_skin.png" class="card-img-top" alt="..."></a>
                        <div class="card-body">
                            <h5 class="card-title">구강&피부 미생물</h5>
                            <p class="card-text">구강과 피부 미생물의 다양성과 유익균, 유해균의 분포도를 확인하여 장내 미생물과의 균형을 맞춥니다.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="card"
                        style="width: auto; padding-bottom: 20px; border: none; background-color: #f8f9fa;">
                        <a href=""><img src="image/cancer.png" class="card-img-top" alt="..."></a>
                        <div class="card-body">
                            <h5 class="card-title">암 유전자 검사</h5>
                            <p class="card-text">유전자 검사를 통해 유방암, 대장암, 전립선암의 발병위험도를 예측합니다.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="card"
                        style="width: auto;  padding-bottom: 20px; border: none; background-color: #f8f9fa;">
                        <a href=""><img src="image/total.png" class="card-img-top" alt="..."></a>
                        <div class="card-body">
                            <h5 class="card-title">종합 검사</h5>
                            <p class="card-text">장내 미생물 검사, 구강&피부 미생물 검사, 암 유전자 검사 서비스를 통합한 서비스 입니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="footernote">
            <div class="note1">
                <p style="font-size: 20px;">Company.(주) Moon Bio</p><br>
                <p>oner. 김문준/Kim Moon Joon</p>
                <p>010 - 1111 - 2222</p>
                <p>서울시 금천구 가산디지털2로 123
                    월드메르디앙2차 4층 413호</p>
            </div>
            <div class="note2">
                <p style="font-size: 20px;">SERVICE</p><br>
                <p>고객님은 안전거래를 위해 현금 등으로 결제시 저희 사이트에서 가입한 구매안전 서비스를 이용하실 수 있습니다.</p>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>
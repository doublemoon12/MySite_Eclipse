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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="bootstrap-3.3.2-dist/bootstrap-3.3.2-dist/css/my.css">
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

  <div class="container d-flex align-items-center justify-content-center" style="height: 800px;">
    <div class="border border-dark bg-light p-5">
      <h1 class="text-center m-3" style="padding-bottom: 20px; font-size: 40px; color: #f0536a; font-family: 'Noto Sans KR', sans-serif; font-weight: 600;">Discover BIO</h1>
      <form>
    <div class="input-group mb-3">
      <span class="input-group-text" id="basic-addon1"><i class="bi bi-person-circle"></i></span>
      <input type="text" class="form-control" placeholder="아이디" aria-label="Username" aria-describedby="basic-addon1">
    </div>
    <div class="input-group mb-3">
      <span class="input-group-text" id="basic-addon1"><i class="bi bi-key-fill"></i></span>
      <input type="password" class="form-control" placeholder="비밀번호" aria-label="Username"
        aria-describedby="basic-addon1">
    </div>
    <div class="d-grid gap-2">
      <button class="btn btn-primary" type="submit">LOGIN</button>
      <a href="http://doublemoon.dothome.co.kr/signup.html" button class="btn btn-dark" type="button">JOIN US</a>
    </div>
    <br>
    <div class="d-grid gap-0">
      <img src="image/kakao_login_medium_narrow.png" alt="" width="300px" height="85px" class="btn">
      <img src="image/btnW_완성형.png" alt="" width="300px" height="85px" class="btn">
    </div>
  </form>
  </div>
  </div>

  <footer>
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
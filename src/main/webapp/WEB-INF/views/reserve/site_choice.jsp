<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../includes/header.jsp" %>
<style>
    /*--------------------------------------------------------------
    # Hero-camp-a Section
    --------------------------------------------------------------*/
    #hero-camp-a {
        width: 620px;
        height: 510px;
        background-color: rgba(22, 30, 56, 0.8);
        overflow: hidden;
        position: relative;
        left: 25%;
        transform: translateX(-25%);
    }

    #hero-camp-a .carousel,
    #hero-camp-a .carousel-inner,
    #hero-camp-a .carousel-item,
    #hero-camp-a .carousel-item::before {
        position: absolute;
        top: 0;
        right: 0;
        left: 0;
        bottom: 0;
    }

    #hero-camp-a .carousel-item {
        background-size: cover;
        background-position: center;
        background-repeat: repeat;
    }

    #hero-camp-a .carousel-container {
        display: flex;
        justify-content: center;
        align-items: center;
        position: absolute;
        bottom: 0;
        top: 70px;
        left: 50px;
        right: 50px;
    }

    #hero-camp-a .container {
        text-align: center;
        display: flex; /* 컨테이너를 플렉스 박스로 설정하여 가로 정렬합니다. */
        align-items: center; /* 아이템들을 세로 중앙 정렬합니다. */
    }

    #hero-camp-a h2 {
        color: #fff;
        margin-bottom: 20px;
        font-size: 48px;
        font-weight: 700;
    }

    #hero-camp-a p {
        animation-delay: 0.4s;
        margin: 0 auto 30px auto;
        color: #fff;
    }

    #hero-camp-a .carousel-inner .carousel-item {
        transition-property: opacity;
        background-position: center top;
    }

    #hero-camp-a .carousel-inner .carousel-item,
    #hero-camp-a .carousel-inner .active.carousel-item-start,
    #hero-camp-a .carousel-inner .active.carousel-item-end {
        opacity: 0;
    }

    #hero-camp-a .carousel-inner .active,
    #hero-camp-a .carousel-inner .carousel-item-next.carousel-item-start,
    #hero-camp-a .carousel-inner .carousel-item-prev.carousel-item-end {
        opacity: 1;
        transition: 0.5s;
    }

    #hero-camp-a .carousel-control-next-icon,
    #hero-camp-a .carousel-control-prev-icon {
        background: none;
        font-size: 30px;
        line-height: 0;
        width: auto;
        height: auto;
        background: rgba(255, 255, 255, 0.2);
        border-radius: 50px;
        transition: 0.3s;
        color: rgba(255, 255, 255, 0.5);
        width: 54px;
        height: 54px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    #hero-camp-a .carousel-control-next-icon:hover,
    #hero-camp-a .carousel-control-prev-icon:hover {
        background: rgba(255, 255, 255, 0.3);
        color: rgba(255, 255, 255, 0.8);
    }

    #hero-camp-a .carousel-indicators li {
        list-style-type: none;
        cursor: pointer;
        background: #fff;
        overflow: hidden;
        border: 0;
        width: 12px;
        height: 12px;
        border-radius: 50px;
        opacity: 0.6;
        transition: 0.3s;
    }

    #hero-camp-a .carousel-indicators li.active {
        opacity: 1;
        background: #006fbe;
    }

    #hero-camp-a .btn-get-started {
        font-family: "Raleway", sans-serif;
        font-weight: 500;
        font-size: 14px;
        letter-spacing: 1px;
        display: inline-block;
        padding: 14px 32px;
        border-radius: 4px;
        transition: 0.5s;
        line-height: 1;
        color: #fff;
        animation-delay: 0.8s;
        background: #006fbe;
    }

    #hero-camp-a .btn-get-started:hover {
        background: #007ed8;
    }

    @media (max-width: 992px) {
        #hero-camp-a {
            height: 100vh;
        }

        #hero-camp-a .carousel-container {
            top: 8px;
        }
    }

    @media (max-width: 768px) {
        #hero-camp-a h2 {
            font-size: 28px;
        }
    }

    @media (min-width: 1024px) {

        #hero-camp-a .carousel-control-prev,
        #hero-camp-a .carousel-control-next {
            width: 5%;
        }
    }

    @media (max-height: 500px) {
        #hero-camp-a {
            height: 120vh;
        }
    }

    /*--------------------------------------------------------------
    # Hero-camp-b Section
    --------------------------------------------------------------*/
    #hero-camp-b {
        width: 620px;
        height: 510px;
        background-color: rgba(22, 30, 56, 0.8);
        overflow: hidden;
        position: relative;
        left: 25%;
        transform: translateX(-25%);
    }

    #hero-camp-b .carousel,
    #hero-camp-b .carousel-inner,
    #hero-camp-b .carousel-item,
    #hero-camp-b .carousel-item::before {
        position: absolute;
        top: 0;
        right: 0;
        left: 0;
        bottom: 0;
    }

    #hero-camp-b .carousel-item {
        background-size: cover;
        background-position: center;
        background-repeat: repeat;
    }

    #hero-camp-b .carousel-container {
        display: flex;
        justify-content: center;
        align-items: center;
        position: absolute;
        bottom: 0;
        top: 70px;
        left: 50px;
        right: 50px;
    }

    #hero-camp-b .container {
        text-align: center;
        display: flex; /* 컨테이너를 플렉스 박스로 설정하여 가로 정렬합니다. */
        align-items: center; /* 아이템들을 세로 중앙 정렬합니다. */
    }

    #hero-camp-b h2 {
        color: #fff;
        margin-bottom: 20px;
        font-size: 48px;
        font-weight: 700;
    }

    #hero-camp-b p {
        animation-delay: 0.4s;
        margin: 0 auto 30px auto;
        color: #fff;
    }

    #hero-camp-b .carousel-inner .carousel-item {
        transition-property: opacity;
        background-position: center top;
    }

    #hero-camp-b.carousel-inner .carousel-item,
    #hero-camp-b.carousel-inner .active.carousel-item-start,
    #hero-camp-b .carousel-inner .active.carousel-item-end {
        opacity: 0;
    }

    #hero-camp-b .carousel-inner .active,
    #hero-camp-b .carousel-inner .carousel-item-next.carousel-item-start,
    #hero-camp-b .carousel-inner .carousel-item-prev.carousel-item-end {
        opacity: 1;
        transition: 0.5s;
    }

    #hero-camp-b .carousel-control-next-icon,
    #hero-camp-b .carousel-control-prev-icon {
        background: none;
        font-size: 30px;
        line-height: 0;
        width: auto;
        height: auto;
        background: rgba(255, 255, 255, 0.2);
        border-radius: 50px;
        transition: 0.3s;
        color: rgba(255, 255, 255, 0.5);
        width: 54px;
        height: 54px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    #hero-camp-b .carousel-control-next-icon:hover,
    #hero-camp-b .carousel-control-prev-icon:hover {
        background: rgba(255, 255, 255, 0.3);
        color: rgba(255, 255, 255, 0.8);
    }

    #hero-camp-b .carousel-indicators li {
        list-style-type: none;
        cursor: pointer;
        background: #fff;
        overflow: hidden;
        border: 0;
        width: 12px;
        height: 12px;
        border-radius: 50px;
        opacity: 0.6;
        transition: 0.3s;
    }

    #hero-camp-b .carousel-indicators li.active {
        opacity: 1;
        background: #006fbe;
    }

    #hero-camp-b .btn-get-started {
        font-family: "Raleway", sans-serif;
        font-weight: 500;
        font-size: 14px;
        letter-spacing: 1px;
        display: inline-block;
        padding: 14px 32px;
        border-radius: 4px;
        transition: 0.5s;
        line-height: 1;
        color: #fff;
        animation-delay: 0.8s;
        background: #006fbe;
    }

    #hero-camp-b .btn-get-started:hover {
        background: #007ed8;
    }

    @media (max-width: 992px) {
        #hero-camp-b {
            height: 100vh;
        }

        #hero-camp-b .carousel-container {
            top: 8px;
        }
    }

    @media (max-width: 768px) {
        #hero-camp-b h2 {
            font-size: 28px;
        }
    }

    @media (min-width: 1024px) {

        #hero-camp-b .carousel-control-prev,
        #hero-camp-b .carousel-control-next {
            width: 5%;
        }
    }

    @media (max-height: 500px) {
        #hero-camp-b {
            height: 120vh;
        }
    }


    /*--------------------------------------------------------------
    # Hero-camp-c Section
    --------------------------------------------------------------*/
    #hero-camp-c {
        width: 620px;
        height: 510px;
        background-color: rgba(22, 30, 56, 0.8);
        overflow: hidden;
        position: relative;
        left: 25%;
        transform: translateX(-25%);
    }

    #hero-camp-c .carousel,
    #hero-camp-c .carousel-inner,
    #hero-camp-c .carousel-item,
    #hero-camp-c .carousel-item::before {
        position: absolute;
        top: 0;
        right: 0;
        left: 0;
        bottom: 0;
    }

    #hero-camp-c .carousel-item {
        background-size: cover;
        background-position: center;
        background-repeat: repeat;
    }

    #hero-camp-c .carousel-container {
        display: flex;
        justify-content: center;
        align-items: center;
        position: absolute;
        bottom: 0;
        top: 70px;
        left: 50px;
        right: 50px;
    }

    #hero-camp-c .container {
        text-align: center;
        display: flex; /* 컨테이너를 플렉스 박스로 설정하여 가로 정렬합니다. */
        align-items: center; /* 아이템들을 세로 중앙 정렬합니다. */
    }

    #hero-camp-c h2 {
        color: #fff;
        margin-bottom: 20px;
        font-size: 48px;
        font-weight: 700;
    }

    #hero-camp-c p {
        animation-delay: 0.4s;
        margin: 0 auto 30px auto;
        color: #fff;
    }

    #hero-camp-c .carousel-inner .carousel-item {
        transition-property: opacity;
        background-position: center top;
    }

    #hero-camp-c .carousel-inner .carousel-item,
    #hero-camp-c .carousel-inner .active.carousel-item-start,
    #hero-camp-c .carousel-inner .active.carousel-item-end {
        opacity: 0;
    }

    #hero-camp-c .carousel-inner .active,
    #hero-camp-c .carousel-inner .carousel-item-next.carousel-item-start,
    #hero-camp-c .carousel-inner .carousel-item-prev.carousel-item-end {
        opacity: 1;
        transition: 0.5s;
    }

    #hero-camp-c .carousel-control-next-icon,
    #hero-camp-c .carousel-control-prev-icon {
        background: none;
        font-size: 30px;
        line-height: 0;
        width: auto;
        height: auto;
        background: rgba(255, 255, 255, 0.2);
        border-radius: 50px;
        transition: 0.3s;
        color: rgba(255, 255, 255, 0.5);
        width: 54px;
        height: 54px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    #hero-camp-c .carousel-control-next-icon:hover,
    #hero-camp-c .carousel-control-prev-icon:hover {
        background: rgba(255, 255, 255, 0.3);
        color: rgba(255, 255, 255, 0.8);
    }

    #hero-camp-c .carousel-indicators li {
        list-style-type: none;
        cursor: pointer;
        background: #fff;
        overflow: hidden;
        border: 0;
        width: 12px;
        height: 12px;
        border-radius: 50px;
        opacity: 0.6;
        transition: 0.3s;
    }

    #hero-camp-c .carousel-indicators li.active {
        opacity: 1;
        background: #006fbe;
    }

    #hero-camp-c .btn-get-started {
        font-family: "Raleway", sans-serif;
        font-weight: 500;
        font-size: 14px;
        letter-spacing: 1px;
        display: inline-block;
        padding: 14px 32px;
        border-radius: 4px;
        transition: 0.5s;
        line-height: 1;
        color: #fff;
        animation-delay: 0.8s;
        background: #006fbe;
    }

    #hero-camp-c .btn-get-started:hover {
        background: #007ed8;
    }

    @media (max-width: 992px) {
        #hero-camp-c {
            height: 100vh;
        }

        #hero-camp-c .carousel-container {
            top: 8px;
        }
    }

    @media (max-width: 768px) {
        #hero-camp-c h2 {
            font-size: 28px;
        }
    }

    @media (min-width: 1024px) {

        #hero-camp-c .carousel-control-prev,
        #hero-camp-c .carousel-control-next {
            width: 5%;
        }
    }

    @media (max-height: 500px) {
        #hero-camp-c {
            height: 120vh;
        }
    }


    /* 버튼 스타일 */
    .button-large {
        padding: 10px 20px;
        font-size: 16px;
    }

    table {
        border-collapse: collapse;
        margin: 0 auto; /* 테이블을 수평 가운데 정렬합니다. */
        width: 1240px;
        height: 510px;
    }

    tr {
        text-align: center;
    }

    tr:first-child td:last-child {
        border-right-width: 3px; /* 첫 번째 행의 마지막 열의 오른쪽 선의 굵기를 3px로 변경 */
    }

    .table-slider {
        width: 50%;
    }

    td {
        border: 1px solid #dddddd;
        padding: 8px;
    }

     a {
         color: inherit; /* 링크의 색을 부모 요소의 색으로 상속 */
         text-decoration: none; /* 링크의 밑줄 제거 */
     }

</style>

<!-- <img src="/resources/assets/img/main.jpg" class="img-fluid" alt="..."> -->
<div style="padding-top: 70px;">
    <div style="background-image: url('/resources/assets/img/main.jpg'); background-size: cover; background-position: center; height: 270px; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; padding-top: 30px;">
        <h1 class="text-white" style="font-family: 'Nanum Gothic'; font-weight: bold;">예약</h1>
    </div>
</div>

<!-- HTML 버튼 추가 -->
<section >
    <div align="center">
        <h3>캠핑 섹션 선택</h3>
        <div align="center">
            <button><a href="site_choice_camping">캠핑동</a></button>
            <button><a href="site_choice_glamping">글램핑동</a></button>
            <button><a href="site_choice_caraban">카라반동</a></button>
        </div>
    </div>
</section>


<style>
    .resized-img {
        width: 300px; /* 가로 크기를 조정 */
        height: 300px; /* 세로 크기를 가로 크기와 동일하게 설정 */
        object-fit: cover; /* 이미지를 화면에 꽉 채우도록 설정 */
        cursor: pointer; /* 포인터 커서로 변경하여 사용자에게 클릭 가능함을 보여줌 */
    }

    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
    }

    .modal-content {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        max-width: 500px;
        max-height: 500px;
        cursor: pointer;
        background-color: rgba(0, 0, 0, 0.9); /* 모달 내용의 배경색을 지정 */
    }

    .close {
        position: absolute;
        top: 15px;
        right: 35px;
        color: #fff;
        font-size: 30px;
        font-weight: bold;
        cursor: pointer;
    }

    .close:hover,
    .close:focus {
        color: #bbb;
        text-decoration: none;
        cursor: pointer;
    }

    /* .button-large 클래스에 대한 스타일 지정 */
    .button-large {
        /* 너비와 높이 설정 */
        width: 90px;
        height: 60px;
        /* 기타 스타일 */
        font-family: 'Yogitae', sans-serif;
        font-weight: bold;
        font-size: 12px;
        /* 추가적인 스타일을 여기에 추가할 수 있습니다. */
    }


</style>

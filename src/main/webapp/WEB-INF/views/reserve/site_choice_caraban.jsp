<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="../reserve/site_choice.jsp" %>

<!-- -->
<section id="about" class="about">
    <div class="container">
        <div class="section-title">
            <h2>카라반동</h2>
        </div>
    </div>
</section>
<hr/>
<section id="about" class="about">
    <div class="container">
        <div class="row">
            <table >
                <tr class="table-slider">
                    <td rowspan="5">
                        <img src="/resources/assets/img/카라반.jpeg" style="width: 620px; height: 510px"/>
                    </td>
                </tr>
                <tr style="width: 600px; background-color: palegreen">
                    <th colspan="2">카라반 F1호</th>
                </tr>
                <tr style="width: 600px">
                    <th style="width: 300px">실내</th>
                    <td>완비</td>
                </tr>
                <tr style="background-color: palegreen">
                    <th>소개</th>
                    <td>다른 동과 강을 기준으로 나뉘어 프라이빗한 캠핑을 할 수 있는 사이트</td>
                </tr>
                <tr style="width: 600px">
                    <td colspan="2">
                        <button class="button-large">F1호 예약</button>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</section>
<hr/>
<section id="about" class="about">
    <div class="container">
        <div class="row">
            <table >
                <tr class="table-slider">
                    <td rowspan="5" class="carousel-container">
                        <img src="/resources/assets/img/카라반(2).jpeg" style="width: 620px; height: 510px"/>
                    </td>
                </tr>
                <tr style="width: 600px; background-color: palegreen">
                    <th colspan="2">카라반 F2호</th>
                </tr>
                <tr style="width: 600px">
                    <th style="width: 300px">실내</th>
                    <td>완비</td>
                </tr>
                <tr style="background-color: palegreen">
                    <th>소개</th>
                    <td>다른 동과 강을 기준으로 나뉘어 프라이빗한 캠핑을 할 수 있는 사이트</td>
                </tr>
                <tr style="width: 600px">
                    <td colspan="2">
                        <button class="button-large">F2호 예약</button>
                    </td>
                </tr>
            </table>
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


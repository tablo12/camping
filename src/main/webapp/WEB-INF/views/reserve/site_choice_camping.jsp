<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="../reserve/site_choice.jsp" %>

<!-- -->
<section id="about" class="about">
    <div class="container">
        <div class="section-title">
            <h2>캠핑동</h2>
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
                        <!-- ======= Hero Section ======= -->
                        <section id="hero-camp-a">
                            <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade"
                                 data-bs-ride="carousel">

                                <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

                                <div class="carousel-inner" role="listbox">

                                    <!-- Slide 1 -->
                                    <div class="carousel-item active"
                                         style="background-image: url(/resources/assets/img/캠피잉.jpeg)">
                                    </div>

                                    <!-- Slide 2 -->
                                    <div class="carousel-item"
                                         style="background-image: url(/resources/assets/img/캠피잉2.jpeg)">
                                    </div>

                                    <!-- Slide 3 -->
                                    <div class="carousel-item"
                                         style="background-image: url(/resources/assets/img/캠핑장.png)">
                                    </div>

                                </div>
                                <a class="carousel-control-prev" href="#heroCarousel" role="button"
                                   data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon bi bi-chevron-left"
                                          aria-hidden="true"></span>
                                </a>
                                <a class="carousel-control-next" href="#heroCarousel" role="button"
                                   data-bs-slide="next">
                                    <span class="carousel-control-next-icon bi bi-chevron-right"
                                          aria-hidden="true"></span>
                                </a>
                            </div>
                        </section><!-- End Hero -->
                    </td>
                </tr>
                <tr style="width: 600px; background-color: palegreen">
                    <th colspan="3">텐트 A동</th>
                </tr>
                <tr style="width: 600px">
                    <th style="width: 200px">바닥재</th>
                    <td colspan="2">전체 파쇄석</td>
                </tr>
                <tr style="background-color: palegreen">
                    <th style="width: 200px">소개</th>
                    <td colspan="2">다른 동과 강을 기준으로 나뉘어 프라이빗한 캠핑을 할 수 있는 사이트</td>
                </tr>
                <tr style="width: 600px">
                    <td style="width: 200px">
                        <form action="/reserve/enter_info" method="get">
                            <button type="submit" class="button-large">A-1 예약</button>
                        </form>
                    </td>
                    <td style="width: 200px">
                        <form action="/reserve/enter_info" method="get">
                            <button class="button-large">A-2 예약</button>
                        </form>
                    </td>
                    <td style="width: 200px">
                        <form action="/reserve/enter_info" method="get">
                            <input type="hidden" name="site" value="A-3">
                            <button class="button-large">A-3 예약</button>
                        </form>
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
                        <!-- ======= Hero Section ======= -->
                        <section id="hero-camp-b">
                            <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade"
                                 data-bs-ride="carousel">

                                <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

                                <div class="carousel-inner" role="listbox">

                                    <!-- Slide 1 -->
                                    <div class="carousel-item active"
                                         style="background-image: url(/resources/assets/img/B동.jpeg)">
                                    </div>

                                    <!-- Slide 2 -->
                                    <div class="carousel-item"
                                         style="background-image: url(/resources/assets/img/B동1.jpeg)">
                                    </div>

                                    <!-- Slide 3 -->
                                    <div class="carousel-item"
                                         style="background-image: url(/resources/assets/img/B동2.jpeg)">
                                    </div>

                                </div>
                                <a class="carousel-control-prev" href="#heroCarousel" role="button"
                                   data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon bi bi-chevron-left"
                                          aria-hidden="true"></span>
                                </a>
                                <a class="carousel-control-next" href="#heroCarousel" role="button"
                                   data-bs-slide="next">
                                    <span class="carousel-control-next-icon bi bi-chevron-right"
                                          aria-hidden="true"></span>
                                </a>
                            </div>
                        </section><!-- End Hero -->
                    </td>
                </tr>
                <tr style="width: 600px; background-color: palegreen">
                    <th colspan="3">텐트 B동</th>
                </tr>
                <tr style="width: 600px">
                    <th style="width: 200px">바닥재</th>
                    <td colspan="2">전체 나무 데크</td>
                </tr>
                <tr style="background-color: palegreen">
                    <th style="width: 200px">소개</th>
                    <td colspan="2">다른 동과 강을 기준으로 나뉘어 프라이빗한 캠핑을 할 수 있는 사이트</td>
                </tr>
                <tr style="width: 600px">
                    <td style="width: 200px">
                        <button class="button-large">B-1 예약</button>
                    </td>
                    <td style="width: 200px">
                        <button class="button-large">B-2 예약</button>
                    </td>
                    <td style="width: 200px">
                        <button class="button-large">B-3 예약</button>
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
            <table>
                <tr class="table-slider">
                    <td rowspan="5" class="carousel-container">
                        <!-- ======= Hero Section ======= -->
                        <section id="hero-camp-c">
                            <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade"
                                 data-bs-ride="carousel">

                                <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

                                <div class="carousel-inner" role="listbox">

                                    <!-- Slide 1 -->
                                    <div class="carousel-item active"
                                         style="background-image: url(/resources/assets/img/C동.jpg)">
                                    </div>

                                    <!-- Slide 2 -->
                                    <div class="carousel-item"
                                         style="background-image: url(/resources/assets/img/C동1.jpg)">
                                    </div>

                                    <!-- Slide 3 -->
                                    <div class="carousel-item"
                                         style="background-image: url(/resources/assets/img/C동2.jpeg)">
                                    </div>

                                </div>
                                <a class="carousel-control-prev" href="#heroCarousel" role="button"
                                   data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon bi bi-chevron-left"
                                          aria-hidden="true"></span>
                                </a>
                                <a class="carousel-control-next" href="#heroCarousel" role="button"
                                   data-bs-slide="next">
                                    <span class="carousel-control-next-icon bi bi-chevron-right"
                                          aria-hidden="true"></span>
                                </a>
                            </div>
                        </section><!-- End Hero -->
                    </td>
                </tr>
                <tr style="width: 600px; background-color: palegreen">
                    <th colspan="5">텐트 C동</th>
                </tr>
                <tr style="width: 600px">
                    <th style="width: 200px" colspan="2">바닥재</th>
                    <td colspan="3">1, 2, 4, 5구역 파쇄석, 3구역 나무 데크</td>
                </tr>
                <tr style="background-color: palegreen">
                    <th style="width: 200px" colspan="2">소개</th>
                    <td colspan="3">다른 동과 강을 기준으로 나뉘어 프라이빗한 캠핑을 할 수 있는 사이트</td>
                </tr>
                <tr style="width: 600px">
                    <td style="width: 120px">
                        <button class="button-large">C-1 예약</button>
                    </td>
                    <td style="width: 120px">
                        <button class="button-large">C-2 예약</button>
                    </td>
                    <td style="width: 120px">
                        <button class="button-large">C-3 예약</button>
                    </td>
                    <td style="width: 120px">
                        <button class="button-large">C-4 예약</button>
                    </td>
                    <td style="width: 120px">
                        <button class="button-large">C-5 예약</button>
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


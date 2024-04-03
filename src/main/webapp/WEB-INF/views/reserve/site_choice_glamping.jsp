<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="../reserve/site_choice.jsp" %>

<!-- -->
<section id="about" class="about">
    <div class="container">
        <div class="section-title">
            <h2>글램핑동</h2>
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
                                         style="background-image: url(/resources/assets/img/글램핑1.png)">
                                    </div>

                                    <!-- Slide 2 -->
                                    <div class="carousel-item"
                                         style="background-image: url(/resources/assets/img/끌램핑.png)">
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
                    <th colspan="2">글램핑 D1동</th>
                </tr>
                <tr style="width: 600px">
                    <th style="width: 300px">시설</th>
                    <td>완비</td>
                </tr>
                <tr style="background-color: palegreen">
                    <th style="width: 300px">소개</th>
                    <td>다른 동과 강을 기준으로 나뉘어 프라이빗한 캠핑을 할 수 있는 사이트</td>
                </tr>
                <tr style="width: 600px">
                    <td colspan="2">
                        <button class="button-large">D1동 예약</button>
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
                                         style="background-image: url(/resources/assets/img/끌램핑1.png)">
                                    </div>

                                    <!-- Slide 2 -->
                                    <div class="carousel-item"
                                         style="background-image: url(/resources/assets/img/그으을램핑.png)">
                                    </div>

                                    <!-- Slide 2 -->
                                    <div class="carousel-item"
                                         style="background-image: url(/resources/assets/img/그을램핑.png)">
                                    </div>

                                    <!-- Slide 2 -->
                                    <div class="carousel-item"
                                         style="background-image: url(/resources/assets/img/그을램핑1.png)">
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
                    <th colspan="2">글램핑 E동</th>
                </tr>
                <tr style="width: 600px">
                    <th style="width: 300px">시설</th>
                    <td>완비</td>
                </tr>
                <tr style="background-color: palegreen">
                    <th style="width: 300px">소개</th>
                    <td>다른 동과 강을 기준으로 나뉘어 프라이빗한 캠핑을 할 수 있는 사이트</td>
                </tr>
                <tr style="width: 600px">
                    <td style="width: 300px">
                        <button class="button-large">E1동 예약</button>
                    </td>
                    <td style="width: 300px">
                        <button class="button-large">E2동 예약</button>
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




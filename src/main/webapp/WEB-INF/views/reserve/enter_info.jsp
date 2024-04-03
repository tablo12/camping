<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../includes/header.jsp" %>

<!-- <img src="/resources/assets/img/main.jpg" class="img-fluid" alt="..."> -->
<div style="padding-top: 70px;">
    <div style="background-image: url('/resources/assets/img/main.jpg'); background-size: cover; background-position: center; height: 270px; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; padding-top: 30px;">
        <h1 class="text-white" style="font-family: 'Nanum Gothic'; font-weight: bold;">예약</h1>
    </div>
</div>

<main id="main">

    <!-- ======= My & Family Section ======= -->
    <section id="about" class="about">
        <div class="container">
            <div class="section-title">
                <h2>정보 입력</h2>
                <h3><c:out value="${site}"/></h3>
            </div>
            <hr/>
            <br/>
            <br/>
        </div>

        <div class="row content">
            <div class="col-lg-6">
                <img src="/resources/assets/img/about.jpg" class="img-fluid" alt="">
            </div>
            <div class="col-lg-6 pt-4 pt-lg-0">
                <form action="/reserve/register" method="post">
                    <ul>
                        <li><i class="ri-check-double-line"></i>
                            <strong> 입실 : </strong>
                            <input type="date" id="start-date" name="reserve_startDate">
                            <strong> 퇴실 : </strong>
                            <input type="date" id="end-date" name="reserve_endDate">
                        </li>
                        <li><i class="ri-check-double-line"></i>
                            <strong> 이름 : </strong>
                            <input value="가나다" readonly/>
                        </li>
                        <li><i class="ri-check-double-line"></i>
                            <strong> 인원 : </strong>
                            <input type="number" id="quantity" name="reserve_people" min="1" max="4">
                            <span> 인원은 1~4명으로 입력 가능합니다.</span>
                        </li>
                        <li><i class="ri-check-double-line"></i>
                            <strong> 가격 : </strong>
                            <input name="reserve_price" value="20000" readonly/>
                        </li>
                    </ul>
                    <div align="center">
                        <input type="hidden" name="mem_id" value="kkw">
                        <input type="hidden" name="camp_no" value="${site}">
                        <button type="reset">취소</button>
                        <button type="submit" onclick="validateInput()">결제</button>
                    </div>
                </form>
            </div>
        </div>

        </div>
    </section><!-- End My & Family Section -->


</main>

<script>
    // 현재 날짜 가져오기
    var today = new Date();

    // 현재 날짜를 YYYY-MM-DD 형식으로 변환
    var formattedDate = today.toISOString().substr(0, 10);

    // date input의 min 속성에 현재 날짜 할당
    document.getElementById("start-date").setAttribute("min", formattedDate);

    // 시작일과 종료일 입력란 가져오기
    var startDateInput = document.getElementById("start-date");
    var endDateInput = document.getElementById("end-date");

    // 시작일 변경 시 종료일의 최솟값 변경
    startDateInput.addEventListener("change", function () {
        endDateInput.min = startDateInput.value;
    });

    // 종료일 변경 시 시작일의 최댓값 변경
    endDateInput.addEventListener("change", function () {
        startDateInput.max = endDateInput.value;
    });

    // 인원 선택이 1미만, 4초과인 경우
    function validateInput() {
        // quantity 이름의 값을 가져옴
        var input = document.getElementById("quantity").value;

        if (input < 1 || input > 4) {
            alert("입력값은 1에서 4 사이어야 합니다.");
        } else {
            // 유효한 경우에는 여기에 원하는 작업을 수행합니다.
            alert("입력값이 유효합니다.");
        }
    }
</script>
<!-- End #main -->
<%@include file="../includes/footer.jsp" %>
  
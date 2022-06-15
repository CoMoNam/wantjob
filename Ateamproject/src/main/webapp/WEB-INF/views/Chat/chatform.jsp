<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="resources/css/chatform.css"/>
    <title></title>
  </head>

    <body>
    <jsp:include page="../header2.jsp"></jsp:include>
    
     <body>
    <div class="container">
    <h3 class=" text-center" style="margin-top:30px;">문의/채팅방</h3>
    <div class="messaging">
          <div class="inbox_msg">
            <div class="mesgs">
              <div class="msg_history">
                <div class="incoming_msg">
                  <div class="incoming_msg_img"> <img src="https://i.pinimg.com/originals/a7/ee/b8/a7eeb85a1d27390ebdf770f8cf31e434.jpg" alt="sunil"> </div>
                  <div class="received_msg">
                    <div class="received_withd_msg">
                      <p>안녕하세요.</p>
                      <span class="time_date"> 11:01 AM    |    5월 9일</span></div>
                  </div>
                </div>
                <div class="outgoing_msg">
                  <div class="sent_msg">
                    <p>안녕하세요.</p>
                    <span class="time_date"> 11:02 AM    |    5월 9일</span> </div>
                </div>
                <div class="incoming_msg">
                  <div class="incoming_msg_img"> <img src="https://i.pinimg.com/originals/a7/ee/b8/a7eeb85a1d27390ebdf770f8cf31e434.jpg" alt="sunil"> </div>
                  <div class="received_msg">
                    <div class="received_withd_msg">
                      <p>견적 문의드립니다.</p>
                      <span class="time_date"> 11:05 AM    |    5월 10일</span></div>
                  </div>
                </div>
                <div class="outgoing_msg">
                  <div class="sent_msg">
                    <p>견적 확인 후 다시 연락드리겠습니다.</p>
                    <span class="time_date"> 07:30 PM    |    어제</span> </div>
                </div>
                <div class="incoming_msg">
                  <div class="incoming_msg_img"> <img src="https://i.pinimg.com/originals/a7/ee/b8/a7eeb85a1d27390ebdf770f8cf31e434.jpg" alt="sunil"> </div>
                  <div class="received_msg">
                    <div class="received_withd_msg">
                      <p>네 확인 감사합니다..</p>
                      <span class="time_date"> 09:30 AM    |    오늘</span></div>
                  </div>
                </div>
              </div>
              <div class="type_msg">
                <div class="input_msg_write">
                  <input type="text" class="write_msg" placeholder="메세지를 입력하세요." />
                  <button class="msg_send_btn" type="button"><i class="" aria-hidden="true">보내기</i></button>
                </div>
              </div>
            </div>
          </div>
        </div>
       </div>
      <jsp:include page="../footer.jsp"></jsp:include>
    </body>
  </html>

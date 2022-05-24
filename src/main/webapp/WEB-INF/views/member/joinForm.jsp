<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="icon" type="image/png" sizes="96x96" href="/favicon.ico/favicon-96x96.png">
    <link href="<c:url value='/css/join.css'/>" rel="stylesheet" type="text/css">

    <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/wichipopup.js'/>"></script>
    <script src="<c:url value='/js/AreaCRET.js'/>"></script>
    <script src="<c:url value='/js/join.js'/>"></script>
    <script src="<c:url value='/js/memIdCheck.js'/>"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="<c:url value='/js/searchZip.js'/>"></script>	
</head>
<body>

    <!-- TOP -->

    <section>
        <div id="joinBox" class="joinForm">
            <form name="joinForm" id="joinForm"  method="post">
                <table>
                    <tr>
                        <td class="title">
                        <h1> 회원가입 </h1>
                        <h4>회원정보입력</h4>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <label for="memId">아이디</label>
                        </td>
                        <td class="Cn2">
                            <input type="text" name="memId" id="memId" class="int_id" placeholder="아이디를 입력해주세요."
                                onfocus="this.placeholder=''" onblur="this.placeholder='아이디를 입력해주세요.'">
                            <input class="IdCheckBtu" type="button" value="ID중복체크" id="idCheck">
                            <div id="idError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <label for="memPw">비밀번호</label>
                            <div class="tooltipmenumenumenu"><i class="fas fa-exclamation-triangle"></i>
                                <div class="tooltipmenumenumenu-text">
                                    <b>
                                        비밀번호 입력 시 아래 규칙을 참고해주세요!
                                    </b>
                                    <p>
                                        1. 아이디와 비밀번호가 같을 수 없습니다.
                                    </p>
                                    <p>
                                        2. 비밀번호는 영문자,숫자,특수기호의 조합으로
                                        <b>8~15자리</b>를 사용해야합니다.
                                    </p>
                                    <p>
                                        3. 특수기호는 <b>! @ # $ % ^ * ? _ ~</b>만 사용 가능합니다.
                                    </p>
                                </div>
                            </div>
                        </td>
                        <td class="Cn2">
                            <input type="password" name="memPw" id="memPw" class="int" placeholder="비밀번호를 입력해주세요."
                                onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호를 입력해주세요.'">
                            <div id="pwdError" class="error"></div>
                            <span class="point-color">
                                <small>
                                    8~15자리의 영문/숫자/특수문자를 함께 입력해주세요.
                                </small>
                            </span>
                            <input type="password" name="passwordCheck" id="passwordCheck" class="int"
                                placeholder="비밀번호를 다시 입력해주세요." onfocus="this.placeholder=''"
                                onblur="this.placeholder='비밀번호를 다시 입력해주세요.'">
                            <div id="pwdCkError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <label for="memBirth">생년원일</label>
                        </td>
                        <td class="Cn2">
                            <input type="text" name="memBirth" id="memBirth" class="int" placeholder="ex.2022-01-01"
                                onfocus="this.placeholder=''" onblur="this.placeholder='ex.2022-01-01'">
                            <div id="BirthError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <label for="memName">이름</label>
                        </td>
                        <td class="Cn2">
                            <input type="text" name="memName" id="memName" class="int" size="35"
                                placeholder="한글 또는 영문으로 입력해주세요." onfocus="this.placeholder=''"
                                onblur="this.placeholder='한글 또는 영문으로 입력해주세요.'">
                            <div id="nameError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn"><label for="hp1">전화번호</label></td>
                        <td class="Cn2">
                            <select name="hp1" class="int_email_input" id="hp1" style="width: 130px">
                                <option value="010" selected>010
                                <option value="011">011
                                <option value="016">016
                                <option value="018">018
                                <option value="019">019
                            </select> -
                            <input type="text" name="hp2" id="hp2" class="int_email_input" style="width: 130px"> -
                            <input type="text" name="hp3" id="hp3" class="int_email_input" style="width: 130px">
                            <div id="hpError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn"><label for="email1">이메일</label></td>
                        <td class="Cn2">
                            <input type="text" name="email1" id="email1" class="int_email_input" size="6"> @
                            <select name="email" class="int_email" id="email2">
                                <option value="naver.com" selected>naver.com
                                <option value="gmail.com">gmail.com
                                <option value="nate.com">nate.com
                                <option value="hanmail.net">hanmail.net
                            </select>
                            <div id="emailError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                    	<td class="Cn"><label for="searchZip">주소</label></td>
                        <td class="Cn2">
                        	<div>
	                        	<input type="text" id="zipcode" name="zipcode"  style="width: 50px; float: left;" class="int"> 
								<input type="button" id="searchZip" name="searchZip" value="주소찾기" class="searchZipbtn" readonly><br>
                        	</div>
                        	<div>
                        		<input type="text"  id="address1"  name="address1" class="int" readonly><br> 
								<input type="text" id="address2"  name="address2" class="int" style="margin-top: 0px; margin-bottom: 20px;" placeholder="상세 주소 입력">
                        	</div>
                        	<div id="zipError" class="error"></div>
                        </td>
                    </tr>
<!--                     <tr> -->
<!--                     	<td class="Cn"><label for="myLOC">현재위치</label></td> -->
<!--                         <td class="Cn2"> -->
<!--                         	<div style="height: 0px;"> -->
<!--                         		<input type="text"  id="myLOCint"  name="myLOCint" class="myLOCint" readonly><br> -->
<!--                         	</div> -->
<!--                         	<div> -->
<!-- 								<input type="button" id="myLOC" name="myLOC" value="현재위치" class="myLOCbtn" onclick="wichiPopUp()"> -->
<!--                         	</div> -->
<!--                         </td> -->
<!--                     </tr> -->
                    <tr>
                        <td class="create" colspan="2">
                            <input class="CelBtu" type="button" value="취    소" onclick="cancel()">
                            <input class="CreBtu" type="button" value="가    입" onclick="signUpCheck()">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
  </section>

  <!-- -->

</body>
</html>
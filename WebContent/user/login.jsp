<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/user/nav.jsp"%>

<div class="limiter">
	<div class="container-login100" style="background-image: url('/soundcloud/login/images/main.jpeg');">
		<div class="wrap-login100">
			
			<form action="/soundcloud/users?cmd=loginProc" method="POST" class="login100-form validate-form">
				
				<span class="login100-form-title p-b-50 p-t-27"> Sign in </span>

				<div class="wrap-input100 validate-input" data-validate="Enter username">
					<input id="username" value="${cookie.remember.value}" class="input100" type="text" name="username" placeholder="Your ID"> 
					<span class="focus-input100" data-placeholder="&#xf207;"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Enter password">
					<input id="password" class="input100" type="password" name="password" placeholder="Your Password"> <span class="focus-input100" data-placeholder="&#xf191;"></span>
				</div>

				<div class="contact100-form-checkbox">
				<c:choose>
					<c:when test="${empty cookie.remember}">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember"><label class="label-checkbox100" for="ckb1"> Remember me </label>
					</c:when>
					<c:otherwise>
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember" checked><label class="label-checkbox100" for="ckb1"> Remember me </label>
					</c:otherwise>
				</c:choose>
				</div>

				<div class="container-login100-form-btn">
					<button type="submit" class="login100-form-btn">Continue</button>
				</div>

				<div class="text-center p-t-15">
					<div class="txt1">
						<span>or</span>
					</div>
				</div>

				<div class="container-kakao-form-btn p-t-15">
					<button class="kakao-form-btn">Continue with Kakao</button>
				</div>

				<div class="text-center p-t-40">
					<a class="txt2" href="/soundcloud/users?cmd=join"> Not a member? </a>
				</div>
			</form>
		</div>
	</div>
</div>


<%@ include file="../include/user/footer.jsp"%>



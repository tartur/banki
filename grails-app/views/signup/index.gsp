<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Register</title>
<meta name="layout" content="main" />
</head>


<body>


	<h1>Signup</h1>


	<g:if test="${flash.message}">
		<div class="alert alert-info">
			${flash.message}
		</div>
	</g:if>


	<g:hasErrors bean="${user}">
		<div class="alert alert-error">
			<g:renderErrors bean="${user}" as="list" />
		</div>
	</g:hasErrors>


	<g:form action="register">
		<fieldset>
			<div
				class="fieldcontain ${hasErrors(bean: user, field: 'username', 'error')} required">
				<label for="username"> <g:message code="user.username.label"
						default="Username" /> <span class="required-indicator">*</span>
				</label>
				<g:textField name="username" required="" value="${user?.username}" />
			</div>

			<div
				class="fieldcontain ${hasErrors(bean: user, field: 'password', 'error')} required">
				<label for="password">
					<g:message code="user.password.label" default="Password" /> <span
					class="required-indicator">*</span>
				</label>
				<g:passwordField name="password" required="" value="" />
			</div>


			<div
				class="fieldcontain ${hasErrors(bean: user, field: 'password', 'error')} required">
				<label for="password">
					<g:message code="user.password2.label" default="Confirm Password" /> <span
					class="required-indicator">*</span>
				</label>
				<g:passwordField name="password2" required="" value="" />
			</div>

		</fieldset>

		<fieldset>
			<g:submitButton name="submit" value="Submit" />
		</fieldset>
	</g:form>


</body>
</html>
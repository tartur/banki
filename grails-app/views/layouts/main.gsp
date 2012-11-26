<!DOCTYPE html>
<%@ page import="org.apache.shiro.SecurityUtils"%>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Banki" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div id="bankiLogo" role="banner">
		<g:link controller="home" action="index">
			<img src="${resource(dir: 'images', file: 'banki_logo.png')}"
				alt="Grails" />
		</g:link>
	</div>
	<div class="nav" role="navigation">
		<nav>
			<ul>
				<shiro:isLoggedIn>
					<li><g:message code="salutation.header"
							default="Hi, ${SecurityUtils.subject.principal}" /></li>
					<li><g:link controller="auth" action="signOut">
							<g:message code="default.link.signout.label" default="Sign out" />
						</g:link></li>
				</shiro:isLoggedIn>
				<shiro:isNotLoggedIn>
					<li><g:link controller="auth" action="login">
							<g:message code="default.link.login.label" default="Sign in" />
						</g:link></li>
					<li><g:link controller="signup" action="index">
							<g:message code="default.link.signup.label" default="Sign up" />
						</g:link></li>
				</shiro:isNotLoggedIn>
			</ul>
		</nav>
	</div>
	<g:layoutBody />
	<div class="footer" role="contentinfo"></div>
	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
	<g:javascript library="application" />
	<r:layoutResources />
</body>
</html>

<html>
<head>
<title>Home</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>
</head>


<body>
	<h1>Welcome aboard</h1>
	<g:if test="${flash.message}">
		<div class="alert alert-info">
			${flash.message}
		</div>
	</g:if>
	<g:if test="${accounts.isEmpty()}">
		<p>Please create an account</p>
	</g:if>
	<g:else>
		<table>
			<thead>
				<tr>
					<g:sortableColumn property="name"
						title="${message(code: 'account.name.label', default: 'Name')}" />
				</tr>
			</thead>
			<tbody>
				<g:each var="a" in="${accounts}">
					<tr>
						<td><g:link>
								${a.name}
							</g:link></td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</g:else>
	<a href="#accountPopup" data-rel="popup" data-position-to="window"
		data-role="button" data-inline="true" data-icon="plus"> <g:message
			code="create.account.link.label" default="Create" />
	</a>


	<div data-role="popup" id="accountPopup">
		<h3>
			<g:message code="default.create.label" args="['Account']" />
		</h3>

		<g:form action="saveAccount">
			<fieldset class="form">
				<g:render template="accountForm" />
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save"
					value="${message(code: 'default.button.create.label', default: 'Save')}" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
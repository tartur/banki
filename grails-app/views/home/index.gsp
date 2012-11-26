<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Register</title>
<meta name="layout" content="main" />
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
	<div class="buttons" role="buttonbar">
		<g:link controller="userAccount" action="create">
			<g:message code="create.account.link.label" default="Create account" />
		</g:link>
	</div>
</body>
</html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Admin Home</title>
<meta name="layout" content="main" />
<style type="text/css" media="screen">
#page-body {
	margin: 2em 1em 1.25em 18em;
}

h2 {
	margin-top: 1em;
	margin-bottom: 0.3em;
	font-size: 1em;
}

p {
	line-height: 1.5;
	margin: 0.25em 0;
}

#controller-list ul {
	list-style-position: inside;
}

#controller-list li {
	line-height: 1.3;
	list-style-position: inside;
	margin: 0.25em 0;
}

@media screen and (max-width: 480px) {
	#page-body {
		margin: 0 1em 1em;
	}
	#page-body h1 {
		margin-top: 0;
	}
}
</style>
</head>


<body>
	<g:if test="${flash.message}">
		<div class="alert alert-info">
			${flash.message}
		</div>
	</g:if>

	<h1>Welcome to Banki</h1>
	<div id="page-body" role="main">
		<div id="controller-list" role="navigation">
			<h2>Available Controllers:</h2>
			<ul>
				<g:each var="c"
					in="${grailsApplication.controllerClasses.sort { it.fullName } }">
					<li class="controller"><g:link
							controller="${c.logicalPropertyName}">
							${c.name}
						</g:link></li>
				</g:each>
			</ul>
		</div>
	</div>
</body>
</html>


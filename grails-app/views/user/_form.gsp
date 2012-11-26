<%@ page import="com.tartur.banki.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="user.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailAddress" required="" value="${userInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accounts', 'error')} ">
	<label for="accounts">
		<g:message code="user.accounts.label" default="Accounts" />
	</label>
	<g:select name="accounts" from="${com.tartur.banki.Account.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.accounts*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'roles', 'error')} ">
	<label for="roles">
		<g:message code="user.roles.label" default="Roles" />
		
	</label>
	<g:select name="roles" from="${com.tartur.banki.Role.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.roles*.id}" class="many-to-many"/>
</div>


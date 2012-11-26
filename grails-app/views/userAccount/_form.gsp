<%@ page import="com.tartur.banki.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${accountInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'operations', 'error')} ">
	<label for="operations">
		<g:message code="account.operations.label" default="Operations" />
		
	</label>
	<g:select name="operations" from="${com.tartur.banki.Operation.list()}" multiple="multiple" optionKey="id" size="5" value="${accountInstance?.operations*.id}" class="many-to-many"/>
</div>


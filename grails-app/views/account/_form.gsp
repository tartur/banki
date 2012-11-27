<%@ page import="com.tartur.banki.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${accountInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="account.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${com.tartur.banki.User.list()}" optionKey="id" required="" value="${accountInstance?.owner?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'operations', 'error')} ">
	<label for="operations">
		<g:message code="account.operations.label" default="Operations" />
		
	</label>
	<g:select name="operations" from="${com.tartur.banki.Operation.list()}" multiple="multiple" optionKey="id" size="5" value="${accountInstance?.operations*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'team', 'error')} ">
	<label for="team">
		<g:message code="account.team.label" default="Team" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${accountInstance?.team?}" var="t">
    <li><g:link controller="nakama" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="nakama" action="create" params="['account.id': accountInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'nakama.label', default: 'Nakama')])}</g:link>
</li>
</ul>

</div>


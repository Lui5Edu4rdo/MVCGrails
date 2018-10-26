
<%@ page import="listatarefas.Tarefa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tarefa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tarefa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tarefa">
			
				<g:if test="${tarefaInstance?.fim}">
				<li class="fieldcontain">
					<span id="fim-label" class="property-label"><g:message code="tarefa.fim.label" default="Fim" /></span>
					
						<span class="property-value" aria-labelledby="fim-label"><g:formatDate date="${tarefaInstance?.fim}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tarefaInstance?.inicio}">
				<li class="fieldcontain">
					<span id="inicio-label" class="property-label"><g:message code="tarefa.inicio.label" default="Inicio" /></span>
					
						<span class="property-value" aria-labelledby="inicio-label"><g:formatDate date="${tarefaInstance?.inicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tarefaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="tarefa.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${tarefaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tarefaInstance?.terminada}">
				<li class="fieldcontain">
					<span id="terminada-label" class="property-label"><g:message code="tarefa.terminada.label" default="Terminada" /></span>
					
						<span class="property-value" aria-labelledby="terminada-label"><g:formatBoolean boolean="${tarefaInstance?.terminada}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tarefaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tarefaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

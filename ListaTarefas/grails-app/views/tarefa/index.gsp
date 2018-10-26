
<%@ page import="listatarefas.Tarefa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tarefa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tarefa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fim" title="${message(code: 'tarefa.fim.label', default: 'Fim')}" />
					
						<g:sortableColumn property="inicio" title="${message(code: 'tarefa.inicio.label', default: 'Inicio')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'tarefa.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="terminada" title="${message(code: 'tarefa.terminada.label', default: 'Terminada')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tarefaInstanceList}" status="i" var="tarefaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tarefaInstance.id}">${fieldValue(bean: tarefaInstance, field: "fim")}</g:link></td>
					
						<td><g:formatDate date="${tarefaInstance.inicio}" /></td>
					
						<td>${fieldValue(bean: tarefaInstance, field: "nome")}</td>
					
						<td><g:formatBoolean boolean="${tarefaInstance.terminada}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tarefaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

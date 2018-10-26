<%@ page import="listatarefas.Tarefa" %>



<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'fim', 'error')} required">
	<label for="fim">
		<g:message code="tarefa.fim.label" default="Fim" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fim" precision="day"  value="${tarefaInstance?.fim}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'inicio', 'error')} required">
	<label for="inicio">
		<g:message code="tarefa.inicio.label" default="Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="inicio" precision="day"  value="${tarefaInstance?.inicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="tarefa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${tarefaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'terminada', 'error')} ">
	<label for="terminada">
		<g:message code="tarefa.terminada.label" default="Terminada" />
		
	</label>
	<g:checkBox name="terminada" value="${tarefaInstance?.terminada}" />

</div>


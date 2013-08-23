<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../../includes/header.jsp"/>

	<table class="table table-striped table-hover">
        <thead>
        	<td>Código</td>
            <td>Modelo</td>
            <td>Cert. Matrícula</td>
            <td>Marca</td>
            <td>Apólice de Seguro</td>
            <td>Manual de vôo</td>
            <td>Check List</td>
            <td>Diário de Bordo</td>
            <td>Aeronave Ativa</td>
            <td>Motivo de Inatividade</td>
            <td></td>
        </thead>
        <tbody>
		<c:forEach var="aeronave" items="${listaDeAeronaves}">
			<tr id="aeronave_<c:out value="${aeronave.id}"/>">
                <td><c:out value="${aeronave.id}"/></td>
				<td id="aeronaveModelo<c:out value="${aeronave.id}"/>"><c:out value="${aeronave.modelo}"/></td>
                <td>${aeronave.certificadoMatricula}</td>
				<td>${aeronave.marca}</td>
                <td>${aeronave.apoliceSeguro}</td>
                <td>${aeronave.manualVoo}</td>
                <td>${aeronave.checkList}</td>
                <td>${aeronave.diarioBordo}</td>
                <td>${aeronave.ativo}</td>
                <td>${aeronave.motivoInatividade}</td>
               <td>
                    <div class="btn-group btn-group-sm">
                        <input type="button" class="btn btn-default editaAeronaveAction" id="editar_<c:out value="${aeronave.id}"/>" value="Editar" aeronaveid="<c:out value="${aeronave.id}"/>"/>
                        <input type="button" class="btn btn-default apagaAeronaveAction" id="apagar_<c:out value="${aeronave.id}"/>" value="Apagar" aeronaveid="<c:out value="${aeronave.id}"/>"/>
                    </div>
                </td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
<!-- Button trigger modal -->
<a id="aeronaveModalBtn" data-toggle="modal" href="#myModal" class="btn btn-default btn-lg">Nova Aeronave</a>

<%-- Formulario para inserir nova aeronave --%>
<c:import url="formulario.jsp"/>

<c:import url="../../includes/footer.jsp"/>
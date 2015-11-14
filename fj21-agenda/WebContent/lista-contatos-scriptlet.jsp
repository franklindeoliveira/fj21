<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.com.caelum.agenda.modelo.Contato"%>
<%@page import="java.util.List"%>
<%@page import="br.com.caelum.agenda.dao.ContatoDao"%>
<html>
	<head>
		<style>
			table, th, td {
			    border: 1px solid black;
			}
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Data de nascimento</th>
			</tr>
			<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			for (Contato contato : contatos) {
			%>
			<tr>
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<td><%=new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime()) %></td>
			</tr>
			<%
			}
			%>
		</table>
	</body>
</html>
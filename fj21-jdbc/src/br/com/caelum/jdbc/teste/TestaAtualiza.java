package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaAtualiza {

	public static void main(String[] args) {
		ContatoDao dao = new ContatoDao();
		Contato contato = new Contato();
		contato.setId(1l);
		contato.setNome("alterado Caelum");
		contato.setEmail("alterado contato@caelum.com.br");
		contato.setEndereco("alterado R. Vergueiro 3185 cj57");
		contato.setDataNascimento(Calendar.getInstance());
		dao.altera(contato);
		
		System.out.println("Contato alterado com sucesso!");
	}

}

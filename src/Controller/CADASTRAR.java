package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import DAO.FilmeDAO;
import DAO.SalaDAO;
import DAO.SessaoDAO;
import DAO.IDAO;

import Dominio.Filme;
import Dominio.Sala;
import Dominio.Sessao;

public class CADASTRAR implements Action{
	
	public String run(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Cadastrando Aluno");
		
		String txtTitulo = request.getParameter("titulo");
		String txtEstreia = request.getParameter("estreia");
		String txtAno = request.getParameter("ano");
		String txtDuracao = request.getParameter("duracao");
		String txtElenco = request.getParameter("elenco");
		String txtSinopse = request.getParameter("sinopse");
		
		Filme filme = new Filme(txtTitulo, txtEstreia, txtAno, txtDuracao, txtElenco, txtSinopse);
		
		String txtCodigo = request.getParameter("txtCodigo");
		String txtTipo = request.getParameter("tipo");
		Integer txtCapacidade = Integer.parseInt(request.getParameter("capacidade"));
		
		Sala sala = new Sala(txtCodigo, txtTipo, txtCapacidade);
		
		float txtValorM = Float.parseFloat(request.getParameter("valorM"));
		float txtValorI = Float.parseFloat(request.getParameter("valorI"));
		String txtDtI = request.getParameter("dtI");
		String txtDtS = request.getParameter("DtS");
		Integer txtHorarios = Integer.parseInt(request.getParameter("horarios"));
		
		Sessao sessao = new Sessao(txtValorM, txtValorI, txtDtI, txtDtS, txtHorarios, sala, filme);
			
		System.out.println("Acessando banco...");
		try {
			IDAO filmeDAO = new FilmeDAO();
			filmeDAO.salvar(filme);
			IDAO salaDAO = new SalaDAO();
			salaDAO.salvar(sala);
			IDAO sessaoDAO = new SessaoDAO();
			sessaoDAO.salvar(sessao);
		} catch (Exception e) {
			System.out.println("Erro ao cadastrar: " + e);
		}
		
		request.setAttribute("filme", filme.getTitulo() );
		
		return"redirect:controle?operacao=CONSULTAR";
	}
	
}
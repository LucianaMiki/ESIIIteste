package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import DAO.FilmeDAO;
import DAO.SalaDAO;
import DAO.SessaoDAO;
import DAO.IDAO;
import Dominio.EntidadeDominio;
import Dominio.Filme;
import Dominio.Sala;
import Dominio.Sessao;

public class CONSULTAR implements Action{
	
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("Listando :)");
		
		IDAO filmeDAO = new FilmeDAO();
		List<EntidadeDominio> lista = new ArrayList<EntidadeDominio>();
		EntidadeDominio entidade = new EntidadeDominio();
		lista = filmeDAO.Consultar(entidade);
		
		request.setAttribute("filme", lista);
		
		return "forward:func.jsp";
		
	}
}
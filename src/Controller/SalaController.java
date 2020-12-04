package Controller;

import java.io.IOException;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dominio.EntidadeDominio;
import Dominio.Resultado;
import Controller.Action;

@WebServlet(urlPatterns = {"/controle"})
public class SalaController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String paramAcao = request.getParameter("operacao");
			System.out.println("Cadastrando");
		
			String nomeDaClasse = "Controller." + paramAcao;
			
			String nome;
			try {
				Class classe = Class.forName(nomeDaClasse); // Carrega a classe com o nome da string => API Reflection
				Action acao = (Action) classe.newInstance();
				nome = acao.run(request, response);
			} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
				throw new ServletException(e);
			}
			
			String[] tipoEndereco = nome.split(":");		
			if(tipoEndereco[0].equals("forward")) {
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + tipoEndereco[1]);
				rd.forward(request, response);
			}else {
				response.sendRedirect(tipoEndereco[1]);
			}
	}	
}


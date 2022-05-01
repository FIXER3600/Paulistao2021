package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Jogo;
import persistence.GenericDao;
import persistence.IJogoDao;
import persistence.JogoDao;

@WebServlet("/ServletQuartas")
public class ServletQuartas extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	private IJogoDao jDao;
	
    public ServletQuartas() throws ClassNotFoundException, SQLException {
        super();
        this.jDao = new JogoDao(new GenericDao());
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String botao = request.getParameter("mostrar_quartas");
    	List<Jogo> jogos = new ArrayList<Jogo>();
    	String erro = "";
    	String saida = "";
    	try {
    		if(botao.equals("Gerar Quartas de Finais")) {
    			jDao.gerarJogos();
    			jogos = this.jDao.listarQuartas();
    		}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}finally {
			RequestDispatcher rd = request.getRequestDispatcher("quartas.jsp");
			request.setAttribute("erro", erro);
			request.setAttribute("saida", saida);
			request.setAttribute("jogos", jogos);
			rd.forward(request, response);
		}
	}

}

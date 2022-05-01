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

import model.Resultado;
import persistence.ClassificacaoDao;
import persistence.GenericDao;
import persistence.IClassificacaoDao;

@WebServlet("/ServletClassificacaoGrupo")
public class ServletClassificacaoGrupo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IClassificacaoDao cDao;

	public ServletClassificacaoGrupo() {
		super();
		this.cDao = new ClassificacaoDao(new GenericDao());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String botao = request.getParameter("grupos");
		List<Resultado> resA = new ArrayList<Resultado>();
		List<Resultado> resB = new ArrayList<Resultado>();
		List<Resultado> resC = new ArrayList<Resultado>();
		List<Resultado> resD = new ArrayList<Resultado>();

		String erro = "";
		String saida = "";
		try {
			if (botao.equals("Classificacao por Grupo")) {
				resA = this.cDao.classificacaoPorGrupo("A");
				resB = this.cDao.classificacaoPorGrupo("B");
				resC = this.cDao.classificacaoPorGrupo("C");
				resD = this.cDao.classificacaoPorGrupo("D");
			}

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			RequestDispatcher rd = request.getRequestDispatcher("classificacao.jsp");
			request.setAttribute("resultadoGrupoA", resA);
			request.setAttribute("resultadoGrupoB", resB);
			request.setAttribute("resultadoGrupoC", resC);
			request.setAttribute("resultadoGrupoD", resD);
			request.setAttribute("erro", erro);
			request.setAttribute("saida", saida);
			rd.forward(request, response);
		}
	}

}

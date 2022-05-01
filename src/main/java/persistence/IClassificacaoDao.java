package persistence;

import java.sql.SQLException;
import java.util.List;

import model.Resultado;

public interface IClassificacaoDao {
	public List<Resultado> classificacaoGeral() throws SQLException, ClassNotFoundException;
	public List<Resultado> classificacaoPorGrupo(String grupo) throws SQLException, ClassNotFoundException;

}

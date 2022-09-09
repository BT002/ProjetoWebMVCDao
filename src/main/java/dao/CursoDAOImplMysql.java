package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Curso;

public class CursoDAOImplMysql implements CursoDAO{
	
	private String url = "jdbc:mysql://localhost:3306/db_bt002?useSSL=false";
	private String username = "root";
	private String password = "";

	private static final String INSERT_CURSO_SQL  = "cursos(cod_curso, nome, descricao, valor, data_inicio, data_fim) VALUES (?,?,?,?,?,?)";
	private static final String SELECT_CURSO_POR_COD_SQL = "cod_curso, nome, descricao, valor, data_inicio, data_fim FROM cursos WHERE cod_curso = ?";
	private static final String SELECT_TODOS_CURSOS_SQL  = "SELECT * FROM cursos";
	private static final String UPDATE_CURSO_SQL  = "cursos SET cod_curso=?,nome=?,descricao=?,valor=?,data_inicio=?,data_fim=? WHERE cod_curso = ?";
	private static final String DELETE_CURSO_SQL  = "cursos WHERE cod_curso = ?;";
	
	public CursoDAOImplMysql() {}

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
	
	@Override
	public void criarCurso(Curso curso) {
		// TODO Auto-generated method stub
		System.out.println(INSERT_CURSO_SQL);
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CURSO_SQL)) {
        	// (ra, nome, telefone, endereco, data_nascimento)
        	preparedStatement.setString(1, curso.getcod_curso());
        	preparedStatement.setString(2, curso.getNome());
        	preparedStatement.setString(3, curso.getdescricao());
        	preparedStatement.setString(4, curso.getvalor());
        	preparedStatement.setDate(5, curso.getdata_inicio());
        	preparedStatement.setDate(6, curso.getdata_fim());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
	}
	@Override
	public ArrayList<Curso> getTodosCurso() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Curso getCursoPorCodCurso(int cod_curso) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void atualizarCurso(Curso curso) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void deleteCurso(Curso curso) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void deleteCurso(int cod_curso) {
		// TODO Auto-generated method stub
		
	}
	
	
}

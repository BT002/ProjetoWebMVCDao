package dao;

import java.util.ArrayList;

import model.Curso;

public class CursoDAOImplMysql implements CursoDAO{
	
    private String url = "jdbc:mysql://localhost:3306/db_bt002?useSSL=false";
    private String username = "root";
    private String password = "";
    
    
    private static final String INSERT_CURSO_SQL         = "";
    private static final String SELECT_CURSO_POR_COD_SQL = "SELECT * FROM cursos WHERE cod_curso = ?";
    private static final String SELECT_TODOS_CURSOS_SQL  = "SELECT * FROM cursos";
    private static final String UPDATE_CURSO_SQl         = "";
    private static final String DELETE_CURSO_SQL         = "";

    
    @Override
	public void criarCurso(Curso curso) {
		
	}
	@Override
	public ArrayList<Curso> getTodosCurso() {
		// TODO Pedro
		return null;
	}
	@Override
	public Curso getCursoPorCodCurso(int codCurso) {
		// TODO Renato
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
	public void deleteCurso(int codCurso) {
		// TODO Auto-generated method stub
		
	}
    
    

}

package dao;

import java.util.ArrayList;

public interface CursoDAO {
	
	void criarCurso(Curso curso);
	ArrayList<Curso> getTodosCurso();					
	Curso getCursoPorCodCurso(int cod_curso);			
	void atualizarCurso(Curso curso);					
	void deleteCurso(Curso curso);
	void deleteCurso(int codcurso);	

}

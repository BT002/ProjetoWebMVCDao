package dao;


import java.util.ArrayList;

import model.Curso;


public interface CursoDAO {

	void criarCurso(Curso aluno);       // C - Create
    ArrayList<Curso> getTodosCurso();  // R - Read
    Curso getCursoPorCodCurso(int cod_curso);     // R - Read
    void atualizarCurso(Curso curso);   // U - Update (atualizar)
    void deleteCurso(Curso curso);      // D - Delete
    void deleteCurso(int cod_curso);        // D - Delete

}

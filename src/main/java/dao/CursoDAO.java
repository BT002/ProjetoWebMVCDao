package dao;

import java.util.ArrayList;

import model.Curso;



public interface CursoDAO {

	void criarCurso(Curso curso);                 // C - Create
    ArrayList<Curso> getTodosCurso();             // R - Read
    Curso getCursoPorCodCurso(int codCurso);     // R - Read
    void atualizarCurso(Curso curso);             // U - Update (atualizar)
    void deleteCurso(Curso curso);                // D - Delete
    void deleteCurso(int codCurso);              // D - Delete

}
package dao;

import java.util.ArrayList;

import model.Curso;
import model.Professor;


public interface CursoDAO {

	void criarCurso(Curso curso);       // C - Create
    ArrayList<Curso> getTodoscurso();     // R - Read
    Professor getCursoporcodcurso(int cod_curso);       // R - Read
    void atualizarCurso(Curso curso);   // U - Update (atualizar)
    void deleteCurso(Curso curso);      // D - Delete
    void deleteCurso(int cod_curso);               // D - Delete

}
package servlets;

import java.io.*;
import java.sql.Date;
import java.util.List;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.AlunoDAO;
import dao.AlunoDAOImplMysql;
import model.Aluno;


@WebServlet(description = "Salvar dados aluno", urlPatterns = { "/AlunoServlet"})
public class AlunoServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
   private AlunoDAO alunoDAO;

   
   // Inicializando o servlet
   public void init() throws ServletException {
	   alunoDAO = new AlunoDAOImplMysql();
   }

   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
   
   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
	   String action = request.getServletPath();
	   
       switch (action) {
           case "/cadastrar_novo_aluno":
        	   formularioCadastrarAluno(request, response);
               break;
           case "/editando_dados_aluno":
        	   formularioAtualizarAluno(request, response);
        	   break;
           case "/insert_aluno":  // C - Create
               inserirAluno(request, response);
               break;
           case "/update_aluno":  // U - Update
        	   updateAluno(request, response);
        	   break;
           case "/delete_aluno":  // D - Delete
               deletarAluno(request, response);
               break;
           default:               // R - Read
               listar_alunos(request, response);
               break;
       }
	   
	   String nome = request.getParameter("nome");
	   String cpf = request.getParameter("cpf");

		response.setContentType("text/html");
		PrintWriter printWriter = response.getWriter();
		printWriter.print("<html>");
		printWriter.print("<body>");
		printWriter.print("<a href=\"/aluno\">Aluno salvo com sucesso! Link para voltar </a>");
		printWriter.print("</body>");
		printWriter.print("</html>");
		printWriter.close();
      
   }

   private void listar_alunos(HttpServletRequest request, HttpServletResponse response) {
       try {
    	   
    	   List<Aluno> alunos = alunoDAO.getTodosAlunos();
    	   request.setAttribute("alunos_todos", alunos);
    	   RequestDispatcher dispatcher = request.getRequestDispatcher("alunos.jsp");
    	   dispatcher.forward(request, response);
	
       } catch (ServletException | IOException e) {
		e.printStackTrace();
       }
	
	}
	
	private void deletarAluno(HttpServletRequest request, HttpServletResponse response) {
	        try {
	        	
	        	String ra = request.getParameter("ra");
	        	alunoDAO.deleteAluno(ra);
				response.sendRedirect("alunos.jsp");
			
	        } catch (IOException e) {
				e.printStackTrace();
			}

		
	}
	
	private void updateAluno(HttpServletRequest request, HttpServletResponse response) {
        try {

        	String ra = request.getParameter("ra");
        	String nome = request.getParameter("nome");
        	String telefone = request.getParameter("telefone");
        	String endereco = request.getParameter("endereco");
        	String data_nascimento = request.getParameter("data_nascimento");
        	
        	Aluno aluno = new Aluno(ra, nome, telefone, endereco, Date.valueOf(data_nascimento));
        	alunoDAO.atualizarAluno(aluno);
			response.sendRedirect("aluno");
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	private void inserirAluno(HttpServletRequest request, HttpServletResponse response) {
        
		try {
			
	    	String ra = request.getParameter("ra");
	    	String nome = request.getParameter("nome");
	    	String telefone = request.getParameter("telefone");
	    	String endereco = request.getParameter("endereco");
	    	String data_nascimento = request.getParameter("data_nascimento");
	    	
	    	Aluno aluno = new Aluno(ra, nome, telefone, endereco, Date.valueOf(data_nascimento));
	    	alunoDAO.atualizarAluno(aluno);
			response.sendRedirect("aluno");
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	private void formularioCadastrarAluno(HttpServletRequest request, HttpServletResponse response) {
		try {

			RequestDispatcher dispatcher = request.getRequestDispatcher("aluno_form_cadastrar.jsp");
			dispatcher.forward(request, response);
			
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}
	
	private void formularioAtualizarAluno(HttpServletRequest request, HttpServletResponse response) {

		try {
        
			String ra = request.getParameter("ra");
	        Aluno alunoLocalizado = alunoDAO.getAlunoPorRa(ra);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("aluno_form_editar.jsp");
	        request.setAttribute("ra", alunoLocalizado.getRa());
	        request.setAttribute("nome", alunoLocalizado.getNome());
	        request.setAttribute("endereco", alunoLocalizado.getEndereco());
	        request.setAttribute("telefone", alunoLocalizado.getTelefone());
	        request.setAttribute("data_nascimento", alunoLocalizado.getData_nascimento());
			dispatcher.forward(request, response);
		
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public void destroy() {
	
	   }
}
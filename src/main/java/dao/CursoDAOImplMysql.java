package dao;

public class CursoDAOImplMysql {

	private String url = "jdbc:mysql://localhost:3306/db_bt002?useSSL=false";
	private String username = "root";
	private String password = "";
	
    private static final String INSERT_CURSO_SQL  = "INSERT INTO cursos (cod_curso, nome, descricao, valor, data_inicio, data_fim) VALUES (?,?,?,?,?,?);";
    private static final String SELECT_USER_BY_ID = "SELECT * FROM cursos WHERE cod_curso = ?";
    private static final String SELECT_ALL_CURSO  = "SELECT * FROM cursos";
    private static final String UPDATE_CURSO_SQL  = "UPDATE `cursos` "
    		+ "SET \r\n"
    		+ "    `cod_curso`= ?,"
    		+ "    `nome`= ?,"
    		+ "    `descricao`= ?,"
    		+ "    `valor`= ?,"
    		+ "    `data_inicio`= ?,"
    		+ "    `data_fim`= ?"
    		+ "WHERE `cod_curso` = ?,";
    private static final String DELETE_CURSO_SQL  = "DELETE FROM `cursos` WHERE cod_curso = ?";
    
    


}

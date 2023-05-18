
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDAO {

    private static final String url = "jdbc:mysql://localhost:3306/db_autoescola";
    private static final String user = "root";
    private static final String pass = "12345";
    // private static final String url = DB_URL + "?user=" + USER + "&password=" +
    // PASS;

    private static Connection conn;

    /**
     * @return
     */
    public static Connection getConnection() {

        try {
            if (conn == null) {
                //Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(url, user, pass);
                return conn;
            } else {
                return conn;
            }

        } catch (SQLException e) {
            System.out.println("Conexao: " + e.getMessage());
            return null;
        }

    }
}

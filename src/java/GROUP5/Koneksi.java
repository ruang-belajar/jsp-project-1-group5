/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package GROUP5;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Asri Nurul Afni H
 */
public class Koneksi {
    public static Connection connect() {
        String DBDRIVER = "com.mysql.cj.jdbc.Driver";
        String DBCONNECTION = "jdbc:mysql://localhost:3306/wall";
        String DBUSER = "root";
        String DBPASS = "";

        try {
            Class.forName(DBDRIVER);
            return DriverManager.getConnection(DBCONNECTION, DBUSER, DBPASS);
        } catch(Exception e) {
            e.printStackTrace();
            throw new RuntimeException("SQL Error: " + e.getMessage());
        }
    }
}


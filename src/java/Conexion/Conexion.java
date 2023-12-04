/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Conexion;

import java.sql.*;

/**
 *
 * @author ADMIN
 */
public class Conexion {

    private static final String DB = "EPS";
    private static final String USR = "root";
    private static final String KEY = "";
    private static final String HST = "localhost";
    private static final String URL = "jdbc:mysql://" + HST + ":3306/" + DB;
    private Connection conexion = null;

    public Connection getConexion() {

        try {

            if (conexion == null) {

                Class.forName("com.mysql.cj.jdbc.Driver");
                conexion = DriverManager.getConnection(URL, USR, KEY);

            }

        } catch (SQLException | ClassNotFoundException ex) {

            ex.printStackTrace();

        }

        return conexion;
    }
}

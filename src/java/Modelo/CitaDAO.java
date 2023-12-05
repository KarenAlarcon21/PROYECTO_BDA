/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Conexion.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CitaDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    /*public PacienteDTO Buscar(String identificacion) {

        PacienteDTO p = new PacienteDTO();
        String sql = "select * from cliente where Dni=" + identificacion;

        try {

            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {

                cl.setId(rs.getInt(1));
                cl.setDni(rs.getString(2));
                cl.setNombres(rs.getString(3));
                cl.setDireccion(rs.getString(4));
                cl.setEstado(rs.getString(5));

            }

        } catch (Exception e) {

            System.out.println("Error al validar: " + e.getMessage());

        }

        return cl;
    }*/

    public List<List<Object>> listar() {

        String sql = "SELECT p.nombre, p.apellido, TIMESTAMPDIFF(YEAR, p.fecha_nto, CURDATE()) AS Edad, c.fecha, c.diagnostico AS Diagnostico FROM Paciente p INNER JOIN Cita c ON (p.identificacion = c.identificacion_p) ORDER BY c.fecha DESC;";
        List<List<Object>> lista = new ArrayList<>();

        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                
                List<Object> fila = new ArrayList<>();

                fila.add(rs.getString("nombre"));
                fila.add(rs.getString("apellido"));
                fila.add(rs.getInt("Edad"));
                fila.add(rs.getString("fecha"));
                fila.add(rs.getString("Diagnostico"));

                lista.add(fila);

            }

        } catch (Exception e) {

            System.out.println("Error al validar: " + e.getMessage());

        }
        
        return lista;
    }
}

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

    public List<List<Object>> Filtrar(PacienteDTO paciente) {

        String sql = "SELECT p.nombre, p.apellido, TIMESTAMPDIFF(YEAR, p.fecha_nto, CURDATE()) AS Edad, m.nombre AS Medico, em.especialidad, ci.ciudad, s.nombre AS sede, c.fecha, c.diagnostico AS Diagnostico FROM Paciente p INNER JOIN Cita c ON (p.identificacion = c.identificacion_p) INNER JOIN Medico m USING (licencia_medica) INNER JOIN especialidad_medico em ON (m.id_especialidad = em.id) INNER JOIN Sede s ON (c.id_sede = s.id) INNER JOIN Ciudad ci ON (s.id_ciudad = ci.id) WHERE p.identificacion = ?";
        List<List<Object>> lista = new ArrayList<>();

        try {

            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, paciente.getIdentificacion());
            rs = ps.executeQuery();

            if (rs.next()) {

                List<Object> fila = new ArrayList<>();

                fila.add(rs.getString("nombre"));
                fila.add(rs.getString("apellido"));
                fila.add(rs.getInt("Edad"));
                fila.add(rs.getString("Medico"));
                fila.add(rs.getString("especialidad"));
                fila.add(rs.getString("ciudad"));
                fila.add(rs.getString("sede"));
                fila.add(rs.getString("fecha"));
                fila.add(rs.getString("Diagnostico"));

                lista.add(fila);
            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return lista;
    }

    public List<List<Object>> Listar() {

        String sql = "SELECT p.nombre, p.apellido, TIMESTAMPDIFF(YEAR, p.fecha_nto, CURDATE()) AS Edad, m.nombre AS Medico, em.especialidad, ci.ciudad, s.nombre AS sede, c.fecha, c.diagnostico AS Diagnostico FROM Paciente p INNER JOIN Cita c ON (p.identificacion = c.identificacion_p) INNER JOIN Medico m USING (licencia_medica) INNER JOIN especialidad_medico em ON (m.id_especialidad = em.id) INNER JOIN Sede s ON (c.id_sede = s.id) INNER JOIN Ciudad ci ON (s.id_ciudad = ci.id) ORDER BY `c`.`fecha` DESC;";
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
                fila.add(rs.getString("Medico"));
                fila.add(rs.getString("especialidad"));
                fila.add(rs.getString("ciudad"));
                fila.add(rs.getString("sede"));
                fila.add(rs.getString("fecha"));
                fila.add(rs.getString("Diagnostico"));

                lista.add(fila);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return lista;
    }
}

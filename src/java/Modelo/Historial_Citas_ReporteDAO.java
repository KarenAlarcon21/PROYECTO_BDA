/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class Historial_Citas_ReporteDAO {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    
    public List listar_Citas(String id) {
        
        String sql = "SELECT * FROM Historial_Citas_Vista_P WHERE identificacion = " + id + ";";
        List<Historial_Citas_ReporteDTO> lista = new ArrayList<>();

        try {
            
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                Historial_Citas_ReporteDTO hc = new Historial_Citas_ReporteDTO();
                hc.setID(rs.getString(1));
                hc.setEncargado(rs.getString(2));
                hc.setLicencia_Medica(rs.getString(3));
                hc.setNombre(rs.getString(4));
                hc.setIdentificacion_p(rs.getString(5));
                hc.setEdad(rs.getString(6));
                hc.setPrograma(rs.getString(7));
                hc.setFecha(rs.getString(8));
                hc.setAsistencia(rs.getString(9));
                lista.add(hc);
                
            }
            
        } catch (Exception e) {
            
            e.printStackTrace();
            
        }
        
        return lista;
    }
    
    public List Citas() {
        
        String sql = "SELECT * FROM Historial_Citas_Vista_P ORDER BY `id` ASC;";
        List<Historial_Citas_ReporteDTO> lista = new ArrayList<>();

        try {
            
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                Historial_Citas_ReporteDTO hc = new Historial_Citas_ReporteDTO();
                hc.setID(rs.getString(1));
                hc.setEncargado(rs.getString(2));
                hc.setLicencia_Medica(rs.getString(3));
                hc.setNombre(rs.getString(4));
                hc.setIdentificacion_p(rs.getString(5));
                hc.setEdad(rs.getString(6));
                hc.setPrograma(rs.getString(7));
                hc.setFecha(rs.getString(8));
                hc.setAsistencia(rs.getString(9));
                lista.add(hc);
                
            }
            
        } catch (Exception e) {
            
            e.printStackTrace();
            
        }
        
        return lista;
    }

    public void Delete(int id) {
        
        String sql = "DELETE FROM Cita WHERE id =" + id;
        
        try {
            
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (Exception e) {
            
            e.printStackTrace();
            
        }
    }
    
    /*
    
    CREATE VIEW Historial_Citas_Vista_P AS
    SELECT c.id, m.nombre AS Encargado, c.licencia_medica, p.nombre, p.identificacion, TIMESTAMPDIFF(YEAR,fecha_nto, CURDATE()) AS Edad, pr.nombre AS Programa, c.fecha, c.id_asistencia FROM medico m INNER JOIN cita c USING (licencia_medica) INNER JOIN paciente p ON (identificacion_p = identificacion) INNER JOIN asistir a USING (identificacion_p ) INNER JOIN programa AS pr ON (ID_programa = pr.ID);
    
    */
    
}

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
public class Informe_PacienteDAO {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    
    public List listar(String id) {
        
        String sql = "SELECT * FROM Reporte_Vista_Pacientes WHERE identificacion =" + id + ";";
        List<Informe_PacienteDTO> lista = new ArrayList<>();

        try {
            
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                Informe_PacienteDTO ip = new Informe_PacienteDTO();
                ip.setNombre(rs.getString(1));
                ip.setIdentificacion(rs.getString(2));
                ip.setDireccion(rs.getString(3));
                ip.setTelefono(rs.getString(4));
                ip.setCorreo_electronico(rs.getString(5));
                ip.setCiudad_afiliacion(rs.getString(6));
                ip.setPrograma(rs.getString(7));
                lista.add(ip);
                
            }
            
        } catch (Exception e) {
            
            e.printStackTrace();
            
        }
        
        return lista;
    }
    
    /*

    CREATE VIEW Reporte_Vista_Pacientes AS
    SELECT p.nombre, p.apellido ,p.identificacion,p.direccion_residencia, t.telefono, pc.correo_electronico, pr.nombre AS Programa
    FROM paciente p INNER JOIN telefono_paciente t ON (identificacion = identificacion_p)
    INNER JOIN paciente_correo_electronico pc USING (identificacion_p) 
    INNER JOIN Ciudad c ON (id_ciudad_afiliacion = id)
    INNER JOIN Asistir a USING (identificacion_p)
    INNER JOIN programa AS pr ON (ID_programa = pr.ID);

*/
    
}

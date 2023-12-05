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
 * @author FAMILIA PC
 */
public class Historial_Citas_Reporte {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    private String Encargado, Licencia_Medica, Nombre,Identificacion_p, Edad,Programa,fecha,asistencia;

    public Historial_Citas_Reporte() {
    }

    public String getEncargado() {
        return Encargado;
    }

    public void setEncargado(String Encargado) {
        this.Encargado = Encargado;
    }

    public String getLicencia_Medica() {
        return Licencia_Medica;
    }

    public void setLicencia_Medica(String Licencia_Medica) {
        this.Licencia_Medica = Licencia_Medica;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getIdentificacion_p() {
        return Identificacion_p;
    }

    public void setIdentificacion_p(String Identificacion_p) {
        this.Identificacion_p = Identificacion_p;
    }

    public String getEdad() {
        return Edad;
    }

    public void setEdad(String Edad) {
        this.Edad = Edad;
    }

    public String getPrograma() {
        return Programa;
    }

    public void setPrograma(String Programa) {
        this.Programa = Programa;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getAsistencia() {
        return asistencia;
    }

    public void setAsistencia(String asistencia) {
        this.asistencia = asistencia;
    }
    
    public List listar_Citas(String id){
        String sql="SELECT * FROM Historial_Citas_Vista_P WHERE identificacion="+id+";";
        List<Historial_Citas_Reporte>lista=new ArrayList<>();
        
        try{
            con=cn.getConexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Historial_Citas_Reporte hc = new Historial_Citas_Reporte();
                hc.setEncargado(rs.getString(1));
                hc.setLicencia_Medica(rs.getString(2));
                hc.setNombre(rs.getString(3));
                hc.setIdentificacion_p(rs.getString(4));
                hc.setEdad(rs.getString(5));
                hc.setPrograma(rs.getString(6));
                hc.setFecha(rs.getString(7));
                lista.add(hc);
            }
        }catch(Exception e){
        }
        return lista;
    }
    
    public void DELETE(int id){
        String sql="DELETE FROM Cita WHERE id ="+id;
        try{
            con=cn.getConexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){}
    }
    
}

/*
    CREATE VIEW Historial_Citas_Vista_P AS
    SELECT m.nombre AS Encargado, c.licencia_medica, p.nombre, p.identificacion, TIMESTAMPDIFF(YEAR,fecha_nto, CURDATE()) AS Edad, pr.nombre AS Programa, c.fecha
    FROM medico m INNER JOIN cita c USING (licencia_medica)
    INNER JOIN paciente p ON (identificacion_p = identificacion)
    INNER JOIN asistir a USING (identificacion_p ) 
    INNER JOIN programa AS pr ON (ID_programa = pr.ID);
*/

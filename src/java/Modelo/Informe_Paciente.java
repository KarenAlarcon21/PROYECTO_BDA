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
public class Informe_Paciente {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    private String nombre, identificacion, direccion, telefono, correo_electronico, ciudad_afiliacion, programa;

    public Informe_Paciente() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo_electronico() {
        return correo_electronico;
    }

    public void setCorreo_electronico(String correo_electronico) {
        this.correo_electronico = correo_electronico;
    }

    public String getCiudad_afiliacion() {
        return ciudad_afiliacion;
    }

    public void setCiudad_afiliacion(String ciudad_afiliacion) {
        this.ciudad_afiliacion = ciudad_afiliacion;
    }

    public String getPrograma() {
        return programa;
    }

    public void setPrograma(String programa) {
        this.programa = programa;
    }

    public List listar(String id){
        String sql="SELECT * FROM Reporte_Vista_Pacientes WHERE identificacion ="+id+";";
        List<Informe_Paciente>lista=new ArrayList<>();
        
        try{
            con=cn.getConexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Informe_Paciente ip = new Informe_Paciente();
                ip.setNombre(rs.getString(1));
                ip.setIdentificacion(rs.getString(2));
                ip.setDireccion(rs.getString(3));
                ip.setTelefono(rs.getString(4));
                ip.setCorreo_electronico(rs.getString(5));
                ip.setCiudad_afiliacion(rs.getString(6));
                ip.setPrograma(rs.getString(7));
                lista.add(ip);
            }
        }catch(Exception e){
        }
        return lista;
    }
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
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author ADMIN
 */
public class PacienteDTO {

    private String identificacion;
    private String nombre;
    private String apellido;
    private String direccion_residencia;
    private String direccion_correspondencia;
    private int estrato;
    private int id_ciudad_residencia;
    private int id_ciudad_afiliacion;
    private String fecha_nacimiento;
    private int edad;
    private int id_ciudad_lugar_nacimiento;

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDireccion_residencia() {
        return direccion_residencia;
    }

    public void setDireccion_residencia(String direccion_residencia) {
        this.direccion_residencia = direccion_residencia;
    }

    public String getDireccion_correspondencia() {
        return direccion_correspondencia;
    }

    public void setDireccion_correspondencia(String direccion_correspondencia) {
        this.direccion_correspondencia = direccion_correspondencia;
    }

    public int getEstrato() {
        return estrato;
    }

    public void setEstrato(int estrato) {
        this.estrato = estrato;
    }

    public int getId_ciudad_residencia() {
        return id_ciudad_residencia;
    }

    public void setId_ciudad_residencia(int id_ciudad_residencia) {
        this.id_ciudad_residencia = id_ciudad_residencia;
    }

    public int getId_ciudad_afiliacion() {
        return id_ciudad_afiliacion;
    }

    public void setId_ciudad_afiliacion(int id_ciudad_afiliacion) {
        this.id_ciudad_afiliacion = id_ciudad_afiliacion;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getId_ciudad_lugar_nacimiento() {
        return id_ciudad_lugar_nacimiento;
    }

    public void setId_ciudad_lugar_nacimiento(int id_ciudad_lugar_nacimiento) {
        this.id_ciudad_lugar_nacimiento = id_ciudad_lugar_nacimiento;
    }

}

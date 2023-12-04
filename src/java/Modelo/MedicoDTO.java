/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author ADMIN
 */
public class MedicoDTO {

    private String licencia_medica;
    private String nombre;
    private String apellido;
    private int id_especialidad;
    private int id_tipo_medico;
    private String direccion;
    private int id_municipio_residencia;
    private String user;
    private String password;

    public String getLicencia_medica() {
        return licencia_medica;
    }

    public void setLicencia_medica(String licencia_medica) {
        this.licencia_medica = licencia_medica;
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

    public int getId_especialidad() {
        return id_especialidad;
    }

    public void setId_especialidad(int id_especialidad) {
        this.id_especialidad = id_especialidad;
    }

    public int getId_tipo_medico() {
        return id_tipo_medico;
    }

    public void setId_tipo_medico(int id_tipo_medico) {
        this.id_tipo_medico = id_tipo_medico;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getId_municipio_residencia() {
        return id_municipio_residencia;
    }

    public void setId_municipio_residencia(int id_municipio_residencia) {
        this.id_municipio_residencia = id_municipio_residencia;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}

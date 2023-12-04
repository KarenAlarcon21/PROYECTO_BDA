/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author ADMIN
 */
public class CitaDTO {

    private int id;
    private String licencia_medica;
    private String identificacion_p;
    private int id_tipo;
    private String fecha;
    private String hora;
    private int id_sede;
    private int consultorio;
    private String diagnostico;
    private int id_asistencia;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLicencia_medica() {
        return licencia_medica;
    }

    public void setLicencia_medica(String licencia_medica) {
        this.licencia_medica = licencia_medica;
    }

    public String getIdentificacion_p() {
        return identificacion_p;
    }

    public void setIdentificacion_p(String identificacion_p) {
        this.identificacion_p = identificacion_p;
    }

    public int getId_tipo() {
        return id_tipo;
    }

    public void setId_tipo(int id_tipo) {
        this.id_tipo = id_tipo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public int getId_sede() {
        return id_sede;
    }

    public void setId_sede(int id_sede) {
        this.id_sede = id_sede;
    }

    public int getConsultorio() {
        return consultorio;
    }

    public void setConsultorio(int consultorio) {
        this.consultorio = consultorio;
    }

    public String getDiagnostico() {
        return diagnostico;
    }

    public void setDiagnostico(String diagnostico) {
        this.diagnostico = diagnostico;
    }

    public int getId_asistencia() {
        return id_asistencia;
    }

    public void setId_asistencia(int id_asistencia) {
        this.id_asistencia = id_asistencia;
    }

}

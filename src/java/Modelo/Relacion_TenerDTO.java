/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author ADMIN
 */
public class Relacion_TenerDTO {

    private String licencia_medica;
    private String fecha;
    private int consultorio;
    private String hora_i;
    private String hora_s;

    public String getLicencia_medica() {
        return licencia_medica;
    }

    public void setLicencia_medica(String licencia_medica) {
        this.licencia_medica = licencia_medica;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getConsultorio() {
        return consultorio;
    }

    public void setConsultorio(int consultorio) {
        this.consultorio = consultorio;
    }

    public String getHora_i() {
        return hora_i;
    }

    public void setHora_i(String hora_i) {
        this.hora_i = hora_i;
    }

    public String getHora_s() {
        return hora_s;
    }

    public void setHora_s(String hora_s) {
        this.hora_s = hora_s;
    }

}

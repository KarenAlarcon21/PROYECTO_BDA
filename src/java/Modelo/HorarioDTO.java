/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author ADMIN
 */
public class HorarioDTO {

    private String fecha;
    private int consultorio;
    private String hora_i;
    private String hora_f;

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

    public String getHora_f() {
        return hora_f;
    }

    public void setHora_f(String hora_f) {
        this.hora_f = hora_f;
    }

}

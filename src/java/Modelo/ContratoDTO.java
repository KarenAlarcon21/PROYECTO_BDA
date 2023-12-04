/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author ADMIN
 */
public class ContratoDTO {

    private String licencia_medica;
    private int discriminante;
    private double salario;
    private int ID_TipoContrato;
    private String fecha_inicio;
    private String fecha_culminacion;

    public String getLicencia_medica() {
        return licencia_medica;
    }

    public void setLicencia_medica(String licencia_medica) {
        this.licencia_medica = licencia_medica;
    }

    public int getDiscriminante() {
        return discriminante;
    }

    public void setDiscriminante(int discriminante) {
        this.discriminante = discriminante;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public int getID_TipoContrato() {
        return ID_TipoContrato;
    }

    public void setID_TipoContrato(int ID_TipoContrato) {
        this.ID_TipoContrato = ID_TipoContrato;
    }

    public String getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(String fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public String getFecha_culminacion() {
        return fecha_culminacion;
    }

    public void setFecha_culminacion(String fecha_culminacion) {
        this.fecha_culminacion = fecha_culminacion;
    }

}

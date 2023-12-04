/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author ADMIN
 */
public class ExamenDTO {

    private int id;
    private String identificacion_p;
    private int id_tipo_examen;
    private String fecha;
    private String resultado;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdentificacion_p() {
        return identificacion_p;
    }

    public void setIdentificacion_p(String identificacion_p) {
        this.identificacion_p = identificacion_p;
    }

    public int getId_tipo_examen() {
        return id_tipo_examen;
    }

    public void setId_tipo_examen(int id_tipo_examen) {
        this.id_tipo_examen = id_tipo_examen;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getResultado() {
        return resultado;
    }

    public void setResultado(String resultado) {
        this.resultado = resultado;
    }

}

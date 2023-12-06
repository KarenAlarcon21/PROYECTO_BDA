/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Conexion.Conexion;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;
import java.sql.*;
import com.sun.jdi.connect.spi.Connection;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Miguel Culma
 */
public class ConsultasDAO {

    Vista objetoVista = new Vista();
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    private String ruta_archivo;
    int l=0;


    public DefaultTableModel consultas(Consultas objetConsultas) throws SQLException {
        System.out.println("entre a consultas");
        DefaultTableModel modelo = new DefaultTableModel();
        if (objetConsultas.getControl() == 1) {
            modelo = cons1(objetConsultas);
        }

        if (objetConsultas.getControl() == 2) {
            modelo = cons2(objetConsultas);
        }

        if (objetConsultas.getControl() == 3) {
           modelo= cons3(objetConsultas);
        }

        if (objetConsultas.getControl() == 4) {
           modelo = cons4(objetConsultas);
        }

        if (objetConsultas.getControl() == 5) {
           modelo = cons5(objetConsultas);
        }
        return modelo;
    }

    public DefaultTableModel cons1(Consultas objetoConsultas) throws SQLException {
        System.out.println("entre a cons1");
        Conexion conexion = new Conexion();
        String[] titulo = {"Mes", "Catidad de pacientes", "Modalidad"};
        DefaultTableModel modelo = new DefaultTableModel(null, titulo);
        int columnas = 3;

        try {
            System.out.println("mes n: " + objetoConsultas.getNumero());
            java.sql.Statement sentencia = conexion.getConexion().createStatement();
            ResultSet resutado = sentencia.executeQuery("SELECT MONTH(fecha) AS mes, COUNT(*) AS cantidad_pacientes, t.nombre "
                    + "FROM cita c INNER JOIN tipo_cita t ON (c.id_tipo = t.id) "
                    + "INNER JOIN Asistencia_cita s ON (c.id_asistencia = s.id) "
                    + "WHERE MONTH(fecha) = " + objetoConsultas.getNumero() + " AND respuesta ='SI' "
                    + "GROUP BY t.nombre, MONTH(fecha);");

            int j = 0;
            while (resutado.next()) {
                Object filas[] = new Object[columnas];

                for (int i = 0; i < columnas; i++) {
                    filas[0] = resutado.getString("mes");
                    filas[1] = resutado.getString("cantidad_pacientes");
                    filas[2] = resutado.getString("t.nombre");

                }

                modelo.addRow(filas);
                j++;
                System.out.println("j"+j);
            }
            resutado.close();
            conexion.getConexion().close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "ERROR" + e, "Informacion", JOptionPane.INFORMATION_MESSAGE);
        }

        return modelo;

    }

    public DefaultTableModel cons2(Consultas objetoConsultas) {
        System.out.println("entre a consultas2:" + objetoConsultas.getSede());
        Conexion conexion = new Conexion();
        String[] titulo = {"Mes", "Catidad de pacientes", "Modalidad", "sede"};
        DefaultTableModel modelo = new DefaultTableModel(null, titulo);
        int columnas = 4;

        try {
            java.sql.Statement sentencia = conexion.getConexion().createStatement();
          ResultSet resutado = sentencia.executeQuery("SELECT MONTH(fecha) AS mes, COUNT(*) AS cantidad_pacientes, t.nombre AS modalidad, s.nombre AS Sede "
                                           + "FROM cita c INNER JOIN tipo_cita t ON (c.id_tipo = t.id) "
                                           + "INNER JOIN Sede s ON (c.id_sede = s.id) "
                                           + "INNER JOIN Asistencia_cita asi ON (c.id_asistencia = asi.id) "
                                           + "WHERE s.nombre = '" + objetoConsultas.getSede() + "' "  // Añade comillas para cadenas
                                           + "AND respuesta ='SI' "
                                           + "GROUP BY t.nombre, MONTH(fecha);");

            int j = 0;
            while (resutado.next()) {
                Object filas[] = new Object[columnas];

                for (int i = 0; i < columnas; i++) {
                    filas[0] = resutado.getString("mes");
                    filas[1] = resutado.getString("cantidad_pacientes");
                    filas[2]= resutado.getString("modalidad");
                    filas[3] = resutado.getString("sede");

                }
                 j++;
                 System.out.println("j:" + j);    
                modelo.addRow(filas);
            }
            resutado.close();
            conexion.getConexion().close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "ERROR" + e, "Informacion", JOptionPane.INFORMATION_MESSAGE);
        }

        return modelo;
    }

    public DefaultTableModel cons3(Consultas objetoConsultas) {
         System.out.println("entre a consultas3:" + objetoConsultas.getNumero());
        Conexion conexion = new Conexion();
        String[] titulo = {"sede", "Modalidad", "Nombre P", "Apellido P","Direccion residencia","Direccion correspondencia","Estrato","Fecha nacimiento,diagnostico"};
        DefaultTableModel modelo = new DefaultTableModel(null, titulo);
        int columnas = 9;

        try {
            java.sql.Statement sentencia = conexion.getConexion().createStatement();
         ResultSet resutado = sentencia.executeQuery("SELECT s.nombre, t.nombre, p.nombre, p.apellido, p.direccion_residencia, direccion_correspondencia, estrato, fecha_nto, c.diagnostico " +
                                             "FROM cita c " +
                                             "INNER JOIN paciente p ON (identificacion_p = p.identificacion) " +
                                             "INNER JOIN Sede s ON (id_sede = s.id) " +
                                             "INNER JOIN tipo_cita t ON (id_tipo = t.id) " +
                                             "WHERE MONTH(fecha) = " + objetoConsultas.getNumero() +
                                             " GROUP BY s.nombre,t.nombre;");

            int j = 0;
            while (resutado.next()) {
                Object filas[] = new Object[columnas];

                for (int i = 0; i < columnas; i++) {
                    filas[0] = resutado.getString("s.nombre");
                    filas[1] = resutado.getString("t.nombre");
                    filas[2]= resutado.getString("p.nombre");
                    filas[3] = resutado.getString("p.apellido");
                    filas[4] = resutado.getString("p.direccion_residencia");
                    filas[5] = resutado.getString("direccion_correspondencia");
                    filas[6] = resutado.getString("estrato");
                    filas[7] = resutado.getString("fecha_nto");
                    filas[8] = resutado.getString("c.diagnostico");

                }
                 j++;
                 System.out.println("j:" + j);    
                modelo.addRow(filas);
            }
            resutado.close();
            conexion.getConexion().close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "ERROR" + e, "Informacion", JOptionPane.INFORMATION_MESSAGE);
        }

        return modelo;
    }

    public DefaultTableModel cons4(Consultas objetoConsultas) {
         System.out.println("entre a consultas3:" + objetoConsultas.getNumero());
        Conexion conexion = new Conexion();
        String[] titulo = {"sede", "nombre del examen"};
        DefaultTableModel modelo = new DefaultTableModel(null, titulo);
        int columnas = 2;

        try {
            java.sql.Statement sentencia = conexion.getConexion().createStatement();
        ResultSet resutado = sentencia.executeQuery("SELECT s.nombre,tex.nombre" +
    " FROM cita c INNER JOIN paciente p ON (c.identificacion_p = p.identificacion)" +
    " INNER JOIN examen ex ON (p.identificacion = ex.identificacion_p)" +
    " INNER JOIN Sede s ON (id_sede = s.id)" +
    " INNER JOIN tipo_examen tex ON (ex.id = tex.id)" +
    " WHERE MONTH(c.fecha) = '"+objetoConsultas.getNumero()+"'"+
    " GROUP BY s.nombre;");

            int j = 0;
            while (resutado.next()) {
                Object filas[] = new Object[columnas];

                for (int i = 0; i < columnas; i++) {
                    filas[0] = resutado.getString("s.nombre");
                    filas[1] = resutado.getString("tex.nombre");
                }
                 j++;
                 System.out.println("j:" + j);    
                modelo.addRow(filas);
            }
            resutado.close();
            conexion.getConexion().close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "ERROR" + e, "Informacion", JOptionPane.INFORMATION_MESSAGE);
        }

        return modelo;
    }

    public DefaultTableModel cons5(Consultas objetoConsultas) {
           
        Conexion conexion = new Conexion();
        String[] titulo = {"nombre paciente", "apellido","direccion residencia","direccion correspondencia","estrato","fecha n"};
        DefaultTableModel modelo = new DefaultTableModel(null, titulo);
        int columnas = 6;

        try {
            java.sql.Statement sentencia = conexion.getConexion().createStatement();
        ResultSet resutado = sentencia.executeQuery("SELECT p.nombre,p.apellido,p.direccion_residencia,direccion_correspondencia,estrato,fecha_nto " +
                                                    "FROM cita c INNER JOIN paciente p ON (identificacion_p = p.identificacion) " +
                                                    "INNER JOIN Asistencia_cita s ON(id_asistencia = s.id) " +
                                                     "WHERE" +
                                                     " month(fecha)=" + objetoConsultas.getNumero() +
                                                     " AND respuesta ='NO';");

            int j = 0;
            while (resutado.next()) {
                Object filas[] = new Object[columnas];

                for (int i = 0; i < columnas; i++) {
                    filas[0] = resutado.getString("p.nombre");
                    filas[1] = resutado.getString("p.apellido");
                    filas[2] = resutado.getString("direccion_residencia");
                    filas[3] = resutado.getString("direccion_correspondencia");
                    filas[4] = resutado.getString("estrato");
                    filas[5] = resutado.getString("fecha_nto");
                }
                 j++;
                 System.out.println("j:" + j);    
                modelo.addRow(filas);
            }
            resutado.close();
            conexion.getConexion().close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "ERROR" + e, "Informacion", JOptionPane.INFORMATION_MESSAGE);
        }

        return modelo;
    
    }
        
    public void verRegistros(Consultas objetoConsultas) throws SQLException, IOException, DocumentException {
        System.out.println("verregistros mes: " + objetoConsultas.getNumero());
        System.out.println("entre a ver registros");
        DefaultTableModel modelo = new DefaultTableModel();
        modelo = (DefaultTableModel) objetoVista.tabla.getModel();
        int filas = objetoVista.tabla.getRowCount();
        for (int i = 0; filas > i; i++) {
            modelo.removeRow(0);
        }

        modelo = consultas(objetoConsultas);
        objetoVista.tabla.setModel(modelo);
        //objetoVista.setVisible(true);
        //objetoVista.tabla.setVisible(true);
        convertirTablaAPDF(objetoVista.tabla);

    }
    
    
   public void convertirTablaAPDF(JTable tabla) throws IOException, DocumentException {
        
        Document document = new Document();
           // Obtener el directorio actual del usuario
        String directorioUsuario = System.getProperty("user.home");

        // Crear la ruta del archivo en el directorio actual
        ruta_archivo = directorioUsuario + File.separator + "Downloads" + File.separator +l+"Reportes.pdf";
        PdfWriter.getInstance(document, new FileOutputStream(ruta_archivo));
        document.open();

        PdfPTable pdfTable = new PdfPTable(tabla.getColumnCount());

        // Agregar encabezados de columna a la tabla PDF
        for (int i = 0; i < tabla.getColumnCount(); i++) {
            pdfTable.addCell(new PdfPCell(new Phrase(tabla.getColumnName(i))));
        }

        // Agregar filas de la tabla Swing a la tabla PDF
        for (int i = 0; i < tabla.getRowCount(); i++) {
            for (int j = 0; j < tabla.getColumnCount(); j++) {
                pdfTable.addCell(new PdfPCell(new Phrase(tabla.getValueAt(i, j).toString())));
            }
        }

        document.add(pdfTable);
        document.close();
        l++;
    }

}

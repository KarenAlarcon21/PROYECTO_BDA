/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import java.util.Properties;
/*import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;*/

/**
 *
 * @author ADMIN
 */
public class Enviar_Correo {

    private static String emailFrom = "correoalertas1@gmail.com";
    private static String password = "AITF V P Z L CZL N SXW V";
    private String emailTo;
    private String subject;
    private String content;

    private Properties mProperties;
    /*private Session mSession;
    private MimeMessage mCorreo;*/

    public Enviar_Correo() {
        mProperties = new Properties();
    }

    public void Contenido_Correo(String correo_destino, String asunto, String contenido) {

        emailTo = correo_destino;
        subject = asunto;
        content = contenido.replace("\n", "<br>");

        mProperties.put("mail.smtp.host", "smtp.gmail.com");
        mProperties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        mProperties.setProperty("mail.smtp.starttls.enable", "true");
        mProperties.setProperty("mail.smtp.port", "587");
        mProperties.setProperty("mail.smtp.user", emailFrom);
        mProperties.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
        mProperties.setProperty("mail.smtp.auth", "true");

        /*mSession = Session.getDefaultInstance(mProperties);

        try {

            mCorreo = new MimeMessage(mSession);
            mCorreo.setFrom(new InternetAddress(emailFrom));
            mCorreo.setRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
            mCorreo.setSubject(subject);
            mCorreo.setText(content, "ISO-8859-1", "html");

            Enviar();

        } catch (AddressException ex) {

            Logger.getLogger(Enviar_Correo.class.getName()).log(Level.SEVERE, null, ex);

        } catch (MessagingException ex) {

            Logger.getLogger(Enviar_Correo.class.getName()).log(Level.SEVERE, null, ex);

        }*/

    }

    private void Enviar() {

        /*try {

            Transport mTransport = mSession.getTransport("smtp");
            mTransport.connect(emailFrom, password);
            mTransport.sendMessage(mCorreo, mCorreo.getRecipients(Message.RecipientType.TO));
            mTransport.close();

        } catch (NoSuchProviderException ex) {

            Logger.getLogger(Enviar_Correo.class.getName()).log(Level.SEVERE, null, ex);

        } catch (MessagingException ex) {

            Logger.getLogger(Enviar_Correo.class.getName()).log(Level.SEVERE, null, ex);

        }*/
    }

}

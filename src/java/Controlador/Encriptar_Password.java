/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.MedicoDTO;
import java.io.File;
import java.io.FileInputStream;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.crypto.Cipher;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

/**
 *
 * @author ADMIN
 */
public class Encriptar_Password {

    public String Encriptar(MedicoDTO medico) {

        try {

            byte[] salt = obtenerSaltDesdeArchivo();

            if (salt == null) {

                throw new Exception("Salt no encontrado");

            }

            return derivarContraseña(Base64.getEncoder().encodeToString(salt) + medico.getPassword(), salt);

        } catch (Exception e) {

            e.printStackTrace();
            return null;
        }
    }

    private byte[] obtenerSaltDesdeArchivo() {
        
        File archivo = new File("salt.dat");

        if (!archivo.exists()) {

            byte[] nuevoSalt = generarNuevoSalt();
            guardarSaltEnArchivo(nuevoSalt);
            return nuevoSalt;
        }

        try (ObjectInputStream entrada = new ObjectInputStream(new FileInputStream(archivo))) {
            
            return (byte[]) entrada.readObject();
            
        } catch (IOException | ClassNotFoundException e) {
            
            e.printStackTrace();
            return null;
            
        }
    }

    private byte[] generarNuevoSalt() {
        
        SecureRandom random = new SecureRandom();
        byte[] salt = new byte[16];
        random.nextBytes(salt);
        return salt;
        
    }

    private void guardarSaltEnArchivo(byte[] salt) {
        
        try (ObjectOutputStream salida = new ObjectOutputStream(new FileOutputStream("salt.dat"))) {
            
            salida.writeObject(salt);
            
        } catch (IOException e) {
            
            e.printStackTrace();
            
        }
        
    }

    private String derivarContraseña(String contraseña, byte[] salt) throws InvalidKeySpecException {

        try {

            SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA512");
            KeySpec spec = new PBEKeySpec(contraseña.toCharArray(), salt, 10000, 256);
            SecretKey key = factory.generateSecret(spec);
            byte[] hash = key.getEncoded();
            return Base64.getEncoder().encodeToString(hash);

        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {

            e.printStackTrace();
            return null;
        }
    }

    public static String cifrarAES(String texto, SecretKey clave) throws Exception {

        Cipher cifrador = Cipher.getInstance("AES");
        cifrador.init(Cipher.ENCRYPT_MODE, clave);

        byte[] textoCifrado = cifrador.doFinal(texto.getBytes());

        return Base64.getEncoder().encodeToString(textoCifrado);
    }

    public SecretKey obtenerOGenerarClaveSimetrica() throws Exception {

        try (ObjectInputStream entrada = new ObjectInputStream(new FileInputStream("claveSimetrica.dat"))) {

            return (SecretKey) entrada.readObject();

        } catch (IOException | ClassNotFoundException e) {

            return generarNuevaClaveSimetrica();
        }
    }

    private static SecretKey generarNuevaClaveSimetrica() throws Exception {

        KeyGenerator keyGen = KeyGenerator.getInstance("AES");
        keyGen.init(256);
        SecretKey clave = keyGen.generateKey();

        try (ObjectOutputStream salida = new ObjectOutputStream(new FileOutputStream("claveSimetrica.dat"))) {

            salida.writeObject(clave);

        }

        return clave;
    }

}

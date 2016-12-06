package impl;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import remote.EncryptorRemote;

@Stateless
@LocalBean
public class Encryptor implements EncryptorRemote {

    public Encryptor() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public String encrypt( String password ) {
        String sha1 = "";
        try {
            MessageDigest crypt = MessageDigest.getInstance( "SHA-1" );
            crypt.reset();
            crypt.update( password.getBytes( "UTF-8" ) );
            sha1 = byteToHex( crypt.digest() );
        } catch ( NoSuchAlgorithmException e ) {
            e.printStackTrace();
        } catch ( UnsupportedEncodingException e ) {
            e.printStackTrace();
        }
        return sha1;
    }

    @Override
    public String byteToHex( final byte[] hash ) {
        Formatter formatter = new Formatter();
        for ( byte b : hash ) {
            formatter.format( "%02x", b );
        }
        String result = formatter.toString();
        formatter.close();
        return result;
    }

}
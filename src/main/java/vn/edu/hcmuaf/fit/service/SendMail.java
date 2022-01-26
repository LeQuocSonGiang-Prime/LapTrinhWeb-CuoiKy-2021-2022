package vn.edu.hcmuaf.fit.service;


import java.io.UnsupportedEncodingException;
import java.util.Properties;


import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendMail {



    private static String username = "homestayprime365@gmail.com";
    private static String password = "a123456789A@";

    public  boolean sendMail(String to, String subject, String content) {
        Session session = connect();
        try {
            Message messmage = new MimeMessage(session);
            messmage.setFrom(new InternetAddress(username, "Homestay Prime"));
            messmage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            messmage.setSubject(subject);

          //  messmage.setText(content);
            messmage.setContent(content,"text/html");
            Transport.send(messmage);
            return true;
        } catch (MessagingException | UnsupportedEncodingException e) {
            e.printStackTrace();
            return false;
        }
    }

    private  Session connect() {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        return Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
    }

    private void completeContent(String recipient){
        String content = "Click vào <a href=http://localhost:8080/cuoiky/xac-nhan-dang-ky?email=" + recipient + ">đây</a> để xác nhận đăng ký";
        sendMail(recipient, "Homestay Prime", content);
    }

    public SendMail(String recipient){
        completeContent(recipient);
    }

    public static void main(String[] args) {

       new SendMail("lequocsongiang@gmail.com");
    }

}

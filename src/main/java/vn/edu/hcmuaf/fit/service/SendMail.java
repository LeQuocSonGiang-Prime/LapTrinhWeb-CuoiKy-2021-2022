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


    private static final String username = "laptrinhwebnlu@gmail.com";
    private static final String password = "12345678aA";

    public void sendMail(String to, String subject, String content) {
        Session session = connect();
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username, "Homestay Prime"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);

            //  messmage.setText(content);
            message.setContent(content, "text/html; charset=UTF-8");
            Transport.send(message);

        } catch (MessagingException | UnsupportedEncodingException e) {
            e.printStackTrace();

        }
    }

    private Session connect() {
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

    public void sendMailLogin(String recipient) {

        String contentMail = "<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
                "    <title>SubmitEmail</title>\n" +
                "    <link rel=\"stylesheet\" href=\"email.css\">\n" +
                "\n" +
                "    <style>\n" +
                "        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700;900&display=swap');\n"+
                "        body{\n" +
                "            margin: 0;\n" +
                "            padding: 0;\n" +
                "            \n" +
                "            font-family: 'Roboto', sans-serif; \n "+
                "        }\n" +
                "        .container{\n" +
                "            background-color: #FFDEE9;\n" +
                "            background-image: linear-gradient(0deg, #FFDEE9 0%, #B5FFFC 100%);\n" +
                "            width: 100%;\n" +
                "            height: 100vh;\n" +
                "            position: relative;\n" +
                "        }\n" +
                "        .container .top {\n" +
                "            position: absolute;\n" +
                "            left: 50%;\n" +
                "            top: 7%;\n" +
                "            transform: translate(-50%,-50%);\n" +
                "        }\n" +
                "        .container .content{\n" +
                "            background-color: rgba(83, 63, 63, 0.2);\n" +
                "            backdrop-filter: blur(0.5rem);\n" +
                "            height: 70%;\n" +
                "            width: 70%;\n" +
                "            border-radius: 10px;\n" +
                "            padding: 30px;\n" +
                "            position: relative;\n" +
                "            left: 50%;\n" +
                "            top: 50%;\n" +
                "            transform: translate(-50%,-50%);\n" +
                "        }\n" +
                "        .container .content h1{\n" +
                "            color: #192a56;\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "        .container .content p{\n" +
                "            font-weight: 800;\n" +
                "            font-size: 15px;\n" +
                "        }\n" +
                "        .container .content img{\n" +
                "            width: 160px;\n" +
                "            height: 160px;\n" +
                "            object-fit: cover;\n" +
                "            position: absolute;\n" +
                "            left: 50%;\n" +
                "            transform: translate(-50%);\n" +
                "        }\n" +
                "    </style>\n" +
                "</head>\n" +
                "<body>\n" +
                "    <div class=\"container\">\n" +
                "        <div class=\"top\">\n" +
                "            <img src=\"./logo-dark.png\" alt=\"\">\n" +
                "        </div>\n" +
                "        <div class=\"content\">\n" +
                "            <div class=\"content1\">\n" +
                "                <h1>Welcome To Prime HomeStay</h1>\n" +
                "                <p>Xin Chào!!!</p>\n" +
                "                <p>Bạn đang đăng kí tài khoản của chúng tôi</p>\n" +
                "                <p>Vui lòng nhấp vào liên kết dưới đây để xác nhận địa chỉ email của bạn: <a href='http://localhost:8080/cuoiky/xac-nhan-dang-ky?email=" + recipient + " '>Click vào đây</a></p> \n" +
                "            </div>\n" +
                "            <div class=\"content2\">\n" +
                "                <p>Chúng tôi gửi email này cho bạn để xác nhận xem địa chỉ email liên kết với tài khoản Prime HomeStay của bạn.</p>\n" +
                "                <p>Nếu có sự nhầm lẫn gì ở đây. Vui lòng liên hệ lại với chúng tôi.</p>\n" +
                "                <h2 style=\"text-transform: capitalize; color: #192a56;\">cảm ơn bạn đã tin tưởng chúng tôi. </h2>\n" +
                "            </div>\n" +
                "            <img src=\"./unnamed.png\" alt=\"\" >\n" +
                "        </div>\n" +
                "    </div>\n" +
                "</body>\n" +
                "</html>";
        sendMail(recipient, "Homestay Prime", contentMail);
    }

    public SendMail() {

    }

}

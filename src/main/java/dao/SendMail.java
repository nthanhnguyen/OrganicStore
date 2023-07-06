package dao;

import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import model.Email;

public class SendMail {
	public static void send(Email email) 
			throws Exception {
		Properties prop = new Properties();
		
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		Session session = Session.getInstance(prop, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("ntnguyen10222002@gmail.com", "ezmbzxbodjwhbeaz");
			}
		});
		try {
			Message message = new MimeMessage(session);
			
			message.setFrom(new InternetAddress("ntnguyen10222002@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email.getTo()));
			message.setSubject(email.getSubject());
			message.setContent(email.getContent(), "text/html; charset=utf-8"); 
			
			Transport.send(message);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			throw e;
		}
	}

}

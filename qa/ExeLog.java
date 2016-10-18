import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class ExeLog
{

public static void mail(String as[])
{

    final String username = "qa.aman.khan@gmail.com";
    final String password = "dolpho@dolpho";
   
    //PropertyReader property = new PropertyReader();
    //String path = property.getFilePath();
    //ExecutionLog executionLog = new ExecutionLog();
    //String Name = executionLog.getFileName();
    Properties props = new Properties();
    props.put("mail.smtp.auth", true);
    props.put("mail.smtp.starttls.enable", true);
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");

    Session session = Session.getInstance(props,
            new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });

    try {

        Message message = new MimeMessage(session);
        
        message.setFrom(new InternetAddress("qa.aman.khan@gmail.com"));

        message.setFrom(new InternetAddress("qa.aman.khan@gmail.com"));
        message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse("qa.aman.khan@gmail.com"));
        message.setSubject("Testing Subject");
        message.setText("PFA");

        MimeBodyPart messageBodyPart = new MimeBodyPart();

        Multipart multipart = new MimeMultipart();

        messageBodyPart = new MimeBodyPart();
        String file = path + "//ExecutionLog//" + Name + ".txt";
        String fileName = "attachmentName";
        DataSource source = new FileDataSource(file);
        messageBodyPart.setDataHandler(new DataHandler(source));
        //messageBodyPart.setFileName(fileName);
        multipart.addBodyPart(messageBodyPart);

        message.setContent(multipart);

        System.out.println("Sending");

        Transport.send(message);

        System.out.println("Done");
	}
	catch (MessagingException e) 
	{
        e.printStackTrace();
    }

  }
   
	
	
}

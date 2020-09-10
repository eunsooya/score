package com.human.shop.function;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
//이메일보내기
   public void EmailSend(String email,String pass) throws AddressException, MessagingException {

         String host ="smtp.naver.com"; //쓸메일
         
         final String username="wodn1567"; // 아이디
         final String password="wkd1215@"; // 비번
         int port=465; //포트번호
         
         //메일내용
         String recipient=email; //받는 사람 메일 주소
         String subject="인증번호"; //메일 제목
         
         String body=pass;  //메일 내용
         Properties props =System.getProperties();//정보를 담기 위한 객체 생성
         
         //SMTP서버 정보 설정
         props.put("mail.smtp.host", host);
         props.put("mail.smtp.port", port);
         props.put("mail.smtp.auth", "true");
         props.put("mail.smtp.ssl.enable", "true");
         props.put("mail.smtp.ssl.trust", host);
         
         //Session 생성
         Session session=Session.getDefaultInstance(props,new javax.mail.Authenticator() {
            String un=username;
            String pw=password;
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
               return new javax.mail.PasswordAuthentication(un, pw);
            }
         });
         session.setDebug(true);//for debug
         
         
            Message mimeMessage =new MimeMessage(session); //MimeMessage 생성
            mimeMessage.setFrom(new InternetAddress("wodn1567@naver.com"));//발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요.

            mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));//수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음      
            
            
            
            mimeMessage.setSubject(subject);      //제목셋팅
            mimeMessage.setText(body);            //내용셋팅
            Transport.send(mimeMessage);         //javax.mail.Transport.send() 이용
   }
}
package action;

import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mail.Gmail;
import member.RegisterDTO;

public class U_EmailSendAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

			request.setCharacterEncoding("utf-8");
			//MemberDAO userDAO = new MemberDAO();
			//String memid=request.getParameter("memid");
			RegisterDTO regDTO=new RegisterDTO();
			String email=request.getParameter("email");
			String memname=request.getParameter("memname");
			//String testid="khg97221@gmail.com";
			//인증키
			Random random=new Random(); //랜덤함수
			String randomKey=""; //인증번호
			
			for(int i=0; i<4;i++) {
				int index=random.nextInt(25)+65;//A~Z까지 랜덤 알파벳 생성
				randomKey+=(char)index;
			}
			int numIndex=random.nextInt(9999)+1000; //4자리 랜덤 정수를 생성
			randomKey+=numIndex;
			
			// 사용자 인증 이메일 발송 내용
			String from = "ATalk <admin@gmail.com>";
			String to = "<"+email+">";
			String subject = memname+"님이 요청하신 인증번호를 알려드립니다."; 
			String content = "";
			System.out.println("u_email=>"+from+"to => "+to);
			
			content +="<div style='margin:100px;background:#f8f8f9;' align='center;'>";
			content +="<h1>아래 코드를 회원가입 창으로 돌아가 입력해주세요</h1>";
			content +="<br>";
			content +="<div style='font-size:120%'>";
			content += "인증번호 : <strong>"+randomKey;
			content +="</strong></div>";
			content +="<br>";
			content +="<p>술주랑을 이용해주셔서 감사합니다.</p>";
			content +="<br>";
			content +="더욱 편리한 서비스를 제공하기 위해 항상 최선을 다하겠습니다.";
			content +="</div>";
			// 이메일 전송 : SMTP 이용을 위함
			Properties prop = new Properties();
			prop.put("mail.smtp.user", from);
			prop.put("mail.smtp.host", "smtp.googlemail.com"); //google SMTP 주소
			prop.put("mail.smtp.port", "465");
			prop.put("mail.smtp.starttls.enable", "true");//google은 true 고정
			prop.put("mail.smtp.auth", "true"); //gmail은 true 고정
			prop.put("mail.smtp.debug", "true");
			prop.put("mail.smtp.socketFactory.port", "465");
			//ssl 사용일때
			prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			prop.put("mail.smtp.socketFactory.fallback", "false");
			prop.put("mail.smtp.ssl.protocols", "TLSv1.2"); // 추가된 코드
			prop.put("mail.smtp.ssl.enable", "true");  // 추가된 코드
			/* 
			 	p.put("mail.smtp.starttls.enable", "true");     // gmail은 true 고정
		        p.put("mail.smtp.host", "smtp.naver.com");      // smtp 서버 네이버 주소
		        p.put("mail.smtp.auth","true");                 // gmail은 true 고정
		        p.put("mail.smtp.port", "587");                 // 네이버 포트
		        p.put("mail.smtp.port", "587");                 // 네이버 포트
			*/
			System.out.println("prop=>"+prop);
					
			try{
				Authenticator auth = new Gmail();
			    Session ses = Session.getInstance(prop, auth);
			    ses.setDebug(true);
			    MimeMessage msg = new MimeMessage(ses);
			    msg.setSentDate(new Date()); //편지보낸시간
			    msg.setSubject(subject,"UTF-8");		// 메일 제목
			    Address fromAddr = new InternetAddress(from); 	// 보내는 사람 정보
			    msg.setFrom(fromAddr);
			    Address toAddr = new InternetAddress(to);  // 받는 사람 정보
			    msg.addRecipient(Message.RecipientType.TO, toAddr);
			    
			    msg.setContent(content, "text/html;charset=UTF-8");
			    Transport.send(msg); // 메세지 전송
			    
			}catch(Exception e){
				e.printStackTrace();
			}
			
			request.setAttribute("randomKey",randomKey);

		return "/U_EmailSend.jsp";
	}

}

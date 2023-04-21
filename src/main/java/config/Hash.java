package config;

import java.security.MessageDigest;

public class Hash {
	
	public static String hashPw(String id, String pwd) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			// Hash 알고리즘 -> 암호 + 아이디를 64자리 암호로 변환
			
			md.update((id + pwd).getBytes());
			
			byte[] pwdSalt = md.digest();
			
			StringBuffer sb = new StringBuffer();
			for(byte b : pwdSalt) {
				sb.append(String.format("%02X", b));
			}
			
			String result = sb.toString();
			return result;
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}

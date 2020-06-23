package com.oracle.namecardTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Select {
	
	public static void main(String[] args) {
		//(oracle) jdbc:oracle:thin:@localhost:1521:xe
		//(mySQL) jdbc:mysql://localhost:3306/db�̸�
		//�̸� �Է��� ����Ŭ �ּ�, ����, ��й�ȣ�� ������ ����
		String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
        String DB_USER = "scott";
        String DB_PASSWORD = "1234";
        //conn�� ����Ŭ ������ ���� ��ü
        Connection conn = null;
        //stmt�� sql���� �����ϱ� ���� ��ü
        Statement stmt = null;
        //rs�� sql�� ������ ������� �޾ƿ��� ��ü
        ResultSet rs = null;

        // ������ �Է� sql �����
        String query = "SELECT * FROM namecard ORDER BY NO";
        
        try {
        	//1. ����Ŭ ����̹� �ε�   ( ojdbc6_g.jar )    		
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e ) { //Ŭ������ ��ã������ (����̹� ������ )
            e.printStackTrace();
        }

        try { //DB ���� �κ��� try-catch ������ ���� �߻��� ó��
        	//2. DB ����
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            //3. SQL �� �غ�
            stmt = conn.createStatement();
            //4. SQL ���� �����ϰ� ��� �ޱ�
            rs = stmt.executeQuery(query);
            
            while(rs.next()) {
            	int no = rs.getInt("no");
            	String name = rs.getString("name");
            	String mobile = rs.getString("mobile");
            	String email = rs.getString("email");
            	String company = rs.getString("company");
            	
            	System.out.println(no + "|" + name + "|" + mobile +"|" + email + "|" + company);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                rs.close();
                stmt.close();		//State�� �ݱ�
                conn.close();
            } catch (SQLException e) {}
        }
    }

}

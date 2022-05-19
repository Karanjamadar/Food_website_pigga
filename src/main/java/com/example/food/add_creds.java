package com.example.food;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

@WebServlet(name = "add_creds", value = "/add_creds")
public class add_creds extends HttpServlet {
  private String name;
  private int i;
  @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
      PrintWriter out = res.getWriter();
      String email = req.getParameter("email");
      String password = req.getParameter("pass");
      String phone_no = req.getParameter("mob_no");
      String hash = convertHex(email);
      Connection conn = null;
      Statement pmt = null;
      try{
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection("jdbc:postgresql://ec2-52-3-200-138.compute-1.amazonaws.com:5432/de42rrf9l3mhqt","ezryqdphjhtojz","a502726a91339ee600dc530c80c382e0a411dfd82253f3d0ec42ec2f577ba1c6");
        String sql = "insert into user_login values('"+hash+"','"+email+"','"+password+"','"+phone_no+"')";
        pmt = conn.createStatement();
        i = pmt.executeUpdate(sql);
        res.sendRedirect("sign_up/signup.jsp?flag=inserted");
      }catch (Exception e){
        out.println("already registered");
//
      }

  }

  public String convertHex(String name){
    this.name = name;
    StringBuffer sb = new StringBuffer();
    char[] ch = name.toCharArray();
    for (int i = 0; i < ch.length; i++) {
      String hexString  = Integer.toHexString(ch[i]);
      sb.append(hexString);
    }

    String final_str = sb.toString();
    return final_str;
  }
}

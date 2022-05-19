package com.example.food;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "validate" , value = "/validate")
public class validate extends HttpServlet {
     private String username, password,name;

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        response.setContentType("text/html");
        String user = request.getParameter("user_mail");
        String pwd = request.getParameter("password");
        String user_hex = convertToHex(user);
        PrintWriter out = response.getWriter();
//        out.println(user+"<br>"+pwd+"<br>"+user_hex);
        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:postgresql://ec2-52-3-200-138.compute-1.amazonaws.com:5432/de42rrf9l3mhqt","ezryqdphjhtojz","a502726a91339ee600dc530c80c382e0a411dfd82253f3d0ec42ec2f577ba1c6");
            String sql = "select * from user_login where hash=?";
            PreparedStatement pmt = conn.prepareStatement(sql);
            pmt.setString(1, user_hex);
            ResultSet rs = pmt.executeQuery();
            while (rs.next()){
                username = rs.getString(2);
                password = rs.getString(3);
            }
//            out.println("Creds" + username + password);
//        response.sendRedirect("index.jsp?username="+user);
            if (username.equals(user)) {
                if (password.equals(pwd)) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("userId", user_hex);
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                    response.sendRedirect("index.jsp?userId=" + user_hex);
                } else {
                    response.sendRedirect("sign_in/login.jsp?error=invalid_password");
                }
            } else {
                response.sendRedirect("sign_in/login.jsp?error=invalid_username");
            }
        }catch(Exception e){
            //
        }
    }


    public String convertToHex(String name){
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

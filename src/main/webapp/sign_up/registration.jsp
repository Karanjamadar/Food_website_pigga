<%@ page language="java" import="java.sql.*" %>
<%      
    String username = request.getParameter("username");
    String email = request.getParameter("email"); 
    String password = request.getParameter("password"); 
    //String Querry = "INSERT INTO user_login VALUES('" + username + "','" + email + "','" + password
    //+ "')";
    try{ 
        Class.forName("org.postgresql.Driver");
        //out.println("DRIVER LOADED...");
        Connection conn = DriverManager.getConnection("jdbc:postgresql://ec2-52-3-200-138.compute-1.amazonaws.com:5432/de42rrf9l3mhqt","ezryqdphjhtojz","a502726a91339ee600dc530c80c382e0a411dfd82253f3d0ec42ec2f577ba1c6");
        //out.println("connection established...");
        Statement st=con.createStatement(); 
        ResultSet rs=st.executeQuery("INSERT INTO user_login VALUES('" + username + "','" + email + "','" + password
                + "')");
        
%>           
<script>
    alert("registration successfully");
</script>
<%
       
     }
     catch(SQLException e){
         //out.println("THE ERROR IS"+e); 
        }
%>

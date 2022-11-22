<%@ page import= "java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>

<%
  Connection con = null;  
  Statement st = null;
  ResultSet rs = null; 
  
  String email = request.getParameter("email"); 
  String senha = request.getParameter("senha");
  String user = null;
  String pass = "";
  String NomeUser = "";
  
  
  if(email == "" || senha == ""){
    response.sendRedirect("../index.jsp?erro=1");
  }else{
    try{
        String url = "jdbc:postgresql://localhost:5432/finalproject";
        String usuario = "postgres";
        String senhaBD = "1234";
        
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection(url,usuario,senhaBD);
        st = con.createStatement();
        rs = st.executeQuery("SELECT *FROM usuarios WHERE email = '"+email+"' AND senha = '"+senha+"' ");
        while(rs.next()){
           user = rs.getString(3);
           pass = rs.getString(5);
           NomeUser = rs.getString(2);
        }
    }catch(Exception e){
        out.print(e);
    }
    if(email.equals(user) && senha.equals(pass)){
        session.setAttribute("nomeUsuario", NomeUser);
        response.sendRedirect("../home.jsp");
    }else{
        response.sendRedirect("../index.jsp?erro=2");
    }
  }
    
%>
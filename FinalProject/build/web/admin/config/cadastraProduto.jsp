<%@ page import= "java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>
<%@ page import="util.Upload" %>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    
    Upload up = new Upload();
    
    up.setFolderUpload("arquivos");
    
    if(up.formProcess(getServletContext(),request)){
        
        String imagem = up.getFiles().get(0);
        String nome = up.getForm().get("nome").toString();
        String desc = up.getForm().get("desc").toString();
        Float valor = Float.parseFloat(up.getForm().get("valor").toString());
        
        String url = "jdbc:postgresql://localhost:5432/finalproject";
        String usuario = "postgres";
        String senhaBD = "1234";
        
        try{
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url,usuario,senhaBD);
            st = con.createStatement();
            st.execute("INSERT INTO produtos(nome,descricao,valor,imagem)VALUES('"+nome+"','"+desc+"', '"+valor+"', '"+imagem+"')");
            response.sendRedirect("../produtos.jsp?status=1");
        }catch(Exception e){
            out.print(e);
        }
        
    }
    

%>
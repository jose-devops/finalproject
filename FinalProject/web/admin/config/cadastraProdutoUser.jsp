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
        String descricao = up.getForm().get("desc").toString();
        String endereco = up.getForm().get("endereco").toString();
        String cidade = up.getForm().get("cidade").toString();
        String telefone = up.getForm().get("telefone").toString();
        
        
        String url = "jdbc:postgresql://localhost:5432/finalproject";
        String usuario = "postgres";
        String senhaBD = "1234";
        
        try{
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url,usuario,senhaBD);
            st = con.createStatement();
            st.execute("INSERT INTO produtos(nome,descricao,endereco,cidade,telefone,imagem)VALUES('"+nome+"','"+descricao+"', '"+endereco+"','"+cidade+"','"+telefone+"', '"+imagem+"')");
            response.sendRedirect("../../loja.jsp?status=1");
        }catch(Exception e){
            out.print(e);
        }
        
    }
    

%>
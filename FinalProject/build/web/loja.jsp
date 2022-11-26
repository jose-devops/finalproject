<%@ page import="java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assetsLoja/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./cssLoja/styles.css" rel="stylesheet" />
    </head>
    <body>
        
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#">Donation´sCenter</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="./index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="./loja.jsp">Doações</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Sobre</a></li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Produtos para doação</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Faça sua doação!</p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <%
                Connection con = null;
                Statement st = null;
                ResultSet rs = null;
                
                String url = "jdbc:postgresql://localhost:5432/finalproject";
                String usuario = "postgres";
                String senhaBD = "1234";
                try{
                    Class.forName("org.postgresql.Driver");
                    con = DriverManager.getConnection(url,usuario,senhaBD);
                    st = con.createStatement();
                    rs = st.executeQuery("SELECT *FROM produtos ORDER BY id DESC");
                    while(rs.next()){
                        String id = rs.getString("id");
                %>    
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="arquivos/<%=rs.getString("imagem") %>" class="card-img-top" alt="..."/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%=rs.getString("nome") %></h5>
                                    <!-- Product price-->
                                    <p class="card-text"><%=rs.getString("descricao") %></p>
                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Adquirir</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                <%    }
                }catch(Exception e){
                    out.print(e);
                }
                
                %>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="jsLoja/scripts.js"></script>
    </body>
</html>

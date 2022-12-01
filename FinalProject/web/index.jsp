<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Modern Business - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./cssUserLogin/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="./index.jsp">Donations Store</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item" class="nav-link" style="color: white" >
                        <div class="small"></div>
                        <%
                            String nomeUsuario = (String) session.getAttribute("nomeUsuario");

                               
                                if(nomeUsuario == null){

                                }else {
                                 out.print(nomeUsuario);
                                                }
                           
                            
                        %>
                    </li>
                   
                            <li class="nav-item"><a class="nav-link" href="./index.jsp">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="loja.jsp">Doações</a></li>
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="loginUser.jsp">Login</a></li>
                        
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="logoutUser.jsp">Logout</a></li>
                    </ul>
                </li>
            </ul>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Header-->
            <header class="bg-dark py-5" style="background-image: url(./chama2.png); background-size: 100%; background-repeat: no-repeat; text-align: center">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start" style="color: brown;">
                                <h1 class="display-5 fw-bolder text-danger mb-2" >Seja bem vindo a Donations Store</h1>
                                <p class="lead fw-normal text-danger-50 mb-4">Canal eletronico destinado a familias carentes sem condições financeiras.</p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="./loginUser.jsp">Faça sua doação</a>
                                    <!--<a class="btn btn-outline-light btn-lg px-4" href="#!">Learn More</a>-->
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </header>

            <!-- Blog preview section-->
            <section class="py-5">

                <header class="py-5">
                    <div class="container px-5">
                        <div class="row justify-content-center">
                            <div class="col-lg-8 col-xxl-6">
                                <div class="text-center my-5">
                                    <h1 class="fw-bolder mb-3">A des</h1>
                                    <p class="lead fw-normal text-muted mb-4">Start Bootstrap was built on the idea that quality, functional website templates and themes should be available to everyone. Use our open source, free products, or support us by purchasing one of our premium products or services.</p>
                                    <a class="btn btn-primary btn-lg" href="#scroll-target">Read our story</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <!-- About section one-->
                <section class="py-5 bg-light" id="scroll-target">
                    <div class="container px-5 my-5">
                        <div class="row gx-5 align-items-center">
                            <div class="col-lg-6"><img class="img-fluid rounded mb-5 mb-lg-0" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div>
                            <div class="col-lg-6">
                                <h2 class="fw-bolder">Our founding</h2>
                                <p class="lead fw-normal text-muted mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto est, ut esse a labore aliquam beatae expedita. Blanditiis impedit numquam libero molestiae et fugit cupiditate, quibusdam expedita, maiores eaque quisquam.</p>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- About section two-->
                <section class="py-5">
                    <div class="container px-5 my-5">
                        <div class="row gx-5 align-items-center">
                            <div class="col-lg-6 order-first order-lg-last"><img class="img-fluid rounded mb-5 mb-lg-0" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div>
                            <div class="col-lg-6">
                                <h2 class="fw-bolder">Growth &amp; beyond</h2>
                                <p class="lead fw-normal text-muted mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto est, ut esse a labore aliquam beatae expedita. Blanditiis impedit numquam libero molestiae et fugit cupiditate, quibusdam expedita, maiores eaque quisquam.</p>
                            </div>
                        </div>
                    </div>
                </section>


                
            </section>
        </main>
        <!-- Footer-->
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; Your Website 2022</div></div>
                    <div class="col-auto">
                        <a class="link-light small" href="#!">Privacy</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Terms</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Contact</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./jsUserLogin/scripts.js"></script>
    </body>
</html>

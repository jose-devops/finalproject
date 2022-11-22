<%
    session.invalidate(); // Encerra a sess?o do usuario
    response.sendRedirect("../index.jsp?erro=4"); // Redireciona login msg -> sua sess?o foi encerrada

%>
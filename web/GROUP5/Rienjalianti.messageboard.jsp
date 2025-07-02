<%-- 
    Document   : Rienjalianti.messageboard
    Created on : Jul 1, 2025, 2:41:35?PM
    Author     : Rien jalianti
--%>

<%-- 
    Document   : asri.messageboard
    Created on : Jun 29, 2025, 2:59:03?PM
    Author     : Asri Nurul Afni H
--%>
<%@page import="GROUP5.Messager"%>
<%@page import="GROUP5.Message"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.servlet.*"%>

<%
    Messager messager = new Messager("Asri");

    if (request.getParameter("pengirim") != null && request.getParameter("pesan") != null) {
        messager.addMessage(request.getParameter("pengirim"), request.getParameter("pesan"));
    }

    ArrayList<Message> list = messager.getList();
    request.setAttribute("list", list);

    RequestDispatcher dispatcher = request.getRequestDispatcher("asri.messageboard.view.jsp");
    dispatcher.forward(request, response);
%>
package com.example.m5_actividadsession1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HellowServlet", value = "/hello")
public class HelloServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String usuario = request.getParameter("usu");
        String password = request.getParameter("pass");

        if (usuario != null && password != null && !usuario.isEmpty() && !password.isEmpty()) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);
//          response.sendRedirect(request.getContextPath() + "/areaprivada.jsp");
            request.getRequestDispatcher("areaprivada.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/index.jsp?error=1");
        }
    }
}
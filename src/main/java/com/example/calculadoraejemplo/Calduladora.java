package com.example.calculadoraejemplo;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jdk.jshell.execution.Util;

@WebServlet(name = "calculadora", urlPatterns = {"", "/"})
public class Calduladora extends HttpServlet {
    private String message;

    public void init(){}
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String capital = request.getParameter("capital");
        String interes = request.getParameter("interes");
        String anios = request.getParameter("anios");
        String periodos = request.getParameter("periodos");

        String error;

        if( capital.isBlank() || interes.isBlank() || anios.isBlank()|| periodos.isBlank() ){
            error = "Por favor llene todas las casillas";

            request.setAttribute("error", error);
        }else{
            double result = Utils.calculadorInteresComp(
                    Double.parseDouble(capital), Double.parseDouble(interes)/100, Double.parseDouble(anios), Double.parseDouble(periodos));

            request.setAttribute("result", result);
        }

        request.setAttribute("capital", capital);
        request.setAttribute("interes", interes);
        request.setAttribute("anios", anios);
        request.setAttribute("periodos", periodos);

        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    public void destroy() {
    }
}
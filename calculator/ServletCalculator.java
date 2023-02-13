package com.example.calculator;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "calculator", value = "/calculator")
public class ServletCalculadora extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        float resultado =0;
        float n1 = 0;
        float n2 = 0;

        if(request.getMethod() == "POST"){
            n1 = Float.parseFloat(request.getParameter("n1"));
            n2 = Float.parseFloat(request.getParameter("n2"));

            if(request.getParameter("somar") != null){
                resultado = n1+n2;
            }else if (request.getParameter("sub") != null) {
                resultado = n1-n2;
            }else if (request.getParameter("mul") != null) {
                resultado = n1*n2;
            }else if (request.getParameter("div") != null) {
                resultado = n1/n2;
            }
        }
        out.print("Resultado<br>"+resultado);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException

    {

    }
}
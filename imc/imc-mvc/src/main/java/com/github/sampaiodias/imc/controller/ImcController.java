package com.github.sampaiodias.imc.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.github.sampaiodias.imc.model.ImcModel;

import java.io.IOException;

@WebServlet(value = "/")
public class ImcController extends HttpServlet {

    @Override
    protected void service(
            HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String resultado = "";

        String alturaStr = request.getParameter("altura");
        String pesoStr = request.getParameter("peso");
        if (alturaStr != null && pesoStr != null) {
          float altura = Float.parseFloat(alturaStr);
          float peso = Float.parseFloat(pesoStr);
          resultado = ImcModel.getImc(altura, peso);
        }

        request.setAttribute("resultado", resultado);
        request.getRequestDispatcher("/imc-view.jsp").forward(request, response);
    }
}
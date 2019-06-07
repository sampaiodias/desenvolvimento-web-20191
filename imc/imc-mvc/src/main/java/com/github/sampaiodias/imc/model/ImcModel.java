package com.github.sampaiodias.imc.model;

public class ImcModel {
    public static String getImc(Float alturaCentimetros, Float pesoKilos) {
        double imc = pesoKilos / ((alturaCentimetros / 100) * (alturaCentimetros / 100));
        String resultado = String.format("%.2f",imc);
          if (imc < 18.5)
            resultado += " (Abaixo do Peso)";
          else if (imc < 24.9)
            resultado += " (Peso Normal)";
          else if (imc < 29.9)
            resultado += " (Sobrepeso)";
          else if (imc < 34.9)
            resultado += " (Sobrepeso)";
          else if (imc < 39.9)
            resultado += " (Sobrepeso)";
          else
            resultado += " (Sobrepeso)";

        return resultado;
    }
}
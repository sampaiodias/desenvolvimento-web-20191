<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IMC (JSP)</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>

  <body>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="panel-heading">
              <h3 class="panel-title">Indice de Massa Corporal</h3>
            </div>
            <div class="panel-body">
            <form>
                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="Altura (cm)" name="altura" type="number">
                    </div>
                    <div class="form-group">
                        <input class="form-control" placeholder="Peso (kg)" name="peso" type="number">
                    </div>
                    <button class="btn btn-sm btn-success">Calcular</a>
                </fieldset>
            </form>
        </div>
    </div>
    <!-- Scriptlet. Codigo Java no HTML. -->
    <%
      String alturaStr = request.getParameter("altura");
      String pesoStr = request.getParameter("peso");
      if (alturaStr != null && pesoStr != null) {
         float altura = Float.parseFloat(alturaStr);
         float peso = Float.parseFloat(pesoStr);
         double imc = peso / ((altura / 100) * (altura / 100));
         out.print(String.format("%.2f",imc));
      }
    %>
    <br>
  </body>

</html>

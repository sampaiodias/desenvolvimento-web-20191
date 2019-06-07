<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IMC (JSP + MVC)</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>

  <body>
    <br>
    <div class="modal-dialog" align="center">
        <div class="modal-content">
            <div class="panel-heading">
              <h2>Indice de Massa Corporal</h2>
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
    <br>
    <div class="panel-title" align="center">
      <h3>
        ${resultado}
      </h3>
      <br><br>
      <img src="https://i.imgur.com/uhnhOQb.jpg" alt="" />
    </div>
    <br>
  </body>

</html>

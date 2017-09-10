<%-- 
    Document   : pago
    Created on : 29-ago-2017, 13:46:18
    Author     : israelarjonavizcaino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>JSP Page</title>
        
    </head>
    <body>
        <div class="container">
            <form action="confirmacion.jsp" method="POST">
                <input type="hidden" name="total" value="">
                <div class="row justify-content-center">
                    <div class="col-6 text-center">
                        <h1>Información de Pago</h1>
                        <hr>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="row col-6">
                        <div class="col-12">
                            <div class="row">
                                <div class="form-group col-12">
                                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Nombre del Titular">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-10">
                                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="No. Tarjeta">
                                </div>
                                <div class="form-group col-2">
                                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="CVV">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-6">
                                    <select class="form-control" id="exampleFormControlSelect1">
                                        <option>Año Expiración</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>
                                <div class="form-group col-6">
                                    <select class="form-control" id="exampleFormControlSelect1">
                                        <option>Mes Expiración</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-6">
                        <div class="alert alert-info" role="alert">
                            <p class="text-right font-weight-bold">Total a Pagar $ 0.00</p>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-6 text-center">
                        <button class="btn btn-success btn-block">Confirmar Pago</button>
                    </div>
                </div>
            </form>
        </div>

    </body>
</html>

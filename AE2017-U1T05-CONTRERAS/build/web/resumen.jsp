<%-- 
    Document   : resumen
    Created on : 29-ago-2017, 13:44:47
    Author     : israelarjonavizcaino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>JSP Page</title>
        
        
        <%
            //Recibe todos los parametros
            int ncalc = 0;
            if(!request.getParameter("calc").equals("")){
                ncalc = Integer.parseInt(request.getParameter("calc"));
            }
            
            int ncomp = !request.getParameter("comp").equals("")?Integer.parseInt(request.getParameter("comp")):0;
            int nmoni = !request.getParameter("moni").equals("")?Integer.parseInt(request.getParameter("moni")):0;
            int ntecl = !request.getParameter("tecl").equals("")?Integer.parseInt(request.getParameter("tecl")):0;
            int nmous = !request.getParameter("mous").equals("")?Integer.parseInt(request.getParameter("mous")):0; 
                        
           int total = ncalc*50 + ncomp*5000 + nmoni*2000 * ntecl*100 + nmous*70; 

        %>
    </head>
    <body>
        <div class="container">
            <form action="pago.jsp" method="POST">
                <input type="hidden" name="total" value="<%=total%>">
                <div class="row justify-content-center">
                    <div class="col-6 text-center">
                        <h1>Resumen</h1>
                        <hr>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="row col-6">
                        <table class="table table-striped table-hover">
                            <thead class="thead-inverse">
                                <tr>
                                    <th>Clave</th>
                                    <th>Descripción</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Importe</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Calculadora</td>
                                    <td>
                                        <p class="text-right">$ 50.00</p>
                                    </td>
                                    <td>
                                        <p class="text-center">
                                            <span class="badge badge-info"> <%=ncalc%> </span>
                                        </p>
                                    </td>
                                    <td>
                                        <p class="text-right">
                                            <span class="badge badge-primary">$ <%=(ncalc*50)%>.00</span>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Computadora</td>
                                    <td>
                                        <p class="text-right">$ 5,000.00</p>
                                    </td>
                                    <td>
                                        <p class="text-center">
                                            <span class="badge badge-info"> <%=ncomp%> </span>
                                        </p>
                                    </td>
                                    <td>
                                        <p class="text-right">
                                            <span class="badge badge-primary">$ <%=(ncomp*5000)%>.00</span>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Monitor</td>
                                    <td>
                                        <p class="text-right">$ 2,000.00</p>
                                    </td>
                                    <td>
                                        <p class="text-center">
                                            <span class="badge badge-info"> <%=nmoni%> </span>
                                        </p>
                                    </td>
                                    <td>
                                        <p class="text-right">
                                            <span class="badge badge-primary">$ <%=(nmoni*2000)%>.00</span>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Teclado</td>
                                    <td>
                                        <p class="text-right">$ 100.00</p>
                                    </td>
                                    <td>
                                        <p class="text-center">
                                            <span class="badge badge-info"> <%=ntecl%></span>
                                        </p>
                                    </td>
                                    <td>
                                        <p class="text-right">
                                            <span class="badge badge-primary">$ <%=(ntecl*100)%>.00</span>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Mouse</td>
                                    <td>
                                        <p class="text-right">$ 70.00</p>
                                    </td>
                                    <td>
                                        <p class="text-center">
                                            <span class="badge badge-info"> <%=nmous%> </span>
                                        </p>
                                    </td>
                                    <td>
                                        <p class="text-right">
                                            <span class="badge badge-primary">$ <%=(nmous*70)%> .00</span>
                                        </p>
                                    </td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr class="bg-dark">
                                    <td colspan="4"><p class="text-right text-light font-weight-bold">Total</p></td>
                                    <td><p class="text-right text-light font-weight-bold">$<%=total%> .00</p></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-6 text-center">
                        <button type="submit" class="btn btn-success btn-block">Pagar</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>

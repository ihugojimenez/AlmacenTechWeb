<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AlmacenTech.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
   <!-- Header -->
    <a name="about"></a>
    <div class="intro-header">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>AlmacenTech</h1>
                        <h3>La solucion para el control de tu almacenamiento</h3>
                        <hr class="intro-divider"/>
                        <ul class="list-inline intro-social-buttons">
                            <li>
                                <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                            </li>
                            <li>
                                <a href="https://www.facebook.com/profile.php?id=100011881230696" class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> <span class="network-name">Facebook</span></a>
                            </li>
                            <li>
                                <a href="https://github.com/ihugojimenez" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.intro-header -->

    <!-- Page Content -->

	<a  name="services"></a>
    <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer"/>
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Control de flujo de entrada <br/>y salida de equipos</h2>
                    <p class="lead">Te brindamos una forma simple de controlar <%--<a target="_blank" href="http://join.deathtothestockphoto.com/">Death to the Stock Photo</a>--%> el flujo de los equipos dentro de tu compañia, accesible desde cualquier lugar en donde estes.</p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="img/ipad.png" alt=""/>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

   <%-- <div class="content-section-b">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                    <hr class="section-heading-spacer"/>
                    <div class="clearfix"></div>
                    <h2 class="section-heading">3D Device Mockups<br/>by PSDCovers</h2>
                    <p class="lead">Turn your 2D designs into high quality, 3D product shots in seconds using free Photoshop actions by <a target="_blank" href="http://www.psdcovers.com/">PSDCovers</a>! Visit their website to download some of their awesome, free photoshop actions!</p>
                </div>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                    <img class="img-responsive" src="img/dog.png" alt=""/>
                </div>
            </div>

        </div>
        

    </div>--%>
    <!-- /.content-section-b -->
    <%--class="col-lg-5 col-sm-6" class="col-lg-5 col-lg-offset-2 col-sm-6"--%>
    <div class="content-section-a">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                    <hr class="section-heading-spacer"/>
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Consulta tu almacen<br/>no importa desde que dispositivo</h2>
                    <p class="lead">Mantente actualizado del destino de tus equipos, cual es su disponibilidad, estado, costo, entre otras cosas.</p>
                </div>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                    <img class="img-responsive" src="img/phones.png" alt=""/>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->
    <a  name="contact"></a>
    <div class="banner">

        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contactanos</h2>
                    <h3 class="section-subheading">Dejanos saber cualquier inquietud.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox ID="NameTextBox" CssClass="form form-control" placeholder="Nombres *" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                   
                                    <asp:TextBox ID="CorreoTextBox" CssClass="form form-control" placeholder="Correo *" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                   
                                    <asp:TextBox ID="TelTextBox" CssClass="form form-control" placeholder="Celular *" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    
                                    <asp:TextBox ID="MsjTextBox" CssClass="form form-control" placeholder="Mensaje *" runat="server" Height="136px" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <%--<button type="submit" class="btn btn-xl">Enviar mensaje</button>--%>
                                <%--<asp:Button ID="SendButton" Width="280" CssClass="btn btn-info" runat="server" Text="Enviar" OnClick="SendButton_Click" />--%>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
        </div>
    </div>
        </div>
	
    <!-- /.banner -->
</asp:Content>

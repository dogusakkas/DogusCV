<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DogusCV.WebForm1" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>deneme1</title>

    <!-- Bootstrap core CSS -->
    <link href="Dosyalar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
    <link href="Dosyalar/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="Dosyalar/css/resume.min.css" rel="stylesheet">
</head>

<body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">Clarence Taylor</span>
            <span class="d-none d-lg-block">
                <asp:Repeater ID="Repeater7" runat="server">
                    <ItemTemplate>
                <%--<img class="img-fluid img-profile rounded-circle mx-auto mb-2" src='<%# Eval("Fotograf") %>' alt="">--%>
                    <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="Dosyalar/img/Fotograf.png" alt="">
                        </ItemTemplate>
                    </asp:Repeater>
            </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">Hakkında</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#experience">Deneyimler</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#education">Eğitimler</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#skills">Yetenekler</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#awards">Sertifikalar</a>
                    </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#interests">Hobiler</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid p-0">

        <%-- HAKKINDA --%>
        <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <div class="my-auto">
                        <h1 class="mb-0">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ad") %>'></asp:Label>
                            <span class="text-primary">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Soyad") %>'></asp:Label></span>
                        </h1>
                        <div class="subheading mb-5">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Adres") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Telefon") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="mailto:name@email.com">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Mail") %>'></asp:Label></a>
                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Hakkinda") %>'></asp:Label>
                        </p>
                        <div class="social-icons">
                            <a href="#">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a href="#">
                                <i class="fab fa-github"></i>
                            </a>
                            <a href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="#">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>



        <hr class="m-0">

        <%-- DENEYİMLER --%>
        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
            <h2 class="mb-5">Deneyimler</h2>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <div class="resume-content mr-auto">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Baslik") %>'></asp:Label></h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("AltBaslik") %>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Aciklama") %>'></asp:Label>
                                </p>
                            </div>
                            <div class="resume-date text-md-right">
                                <span class="text-primary">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label></span>
                            </div>
                        </div>
                    </div>
                    </ItemTemplate>
                </asp:Repeater>
        </section>

        <hr class="m-0">


        <%-- EĞİTİMLER --%>
        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
            <h2 class="mb-5">Eğitim</h2>
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
            <div class="my-auto">
                <div class="resume-item d-flex flex-column flex-md-row mb-5">
                    <div class="resume-content mr-auto">
                        <h3 class="mb-0">
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Baslik") %>'></asp:Label></h3>
                        <div class="subheading mb-3">
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("AltBaslik") %>'></asp:Label></div>
                        <div>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("Aciklama") %>'></asp:Label></div>
                        <p>
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("GNot") %>'></asp:Label></p>
                    </div>
                    <div class="resume-date text-md-right">
                        <span class="text-primary">
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label></span>
                    </div>
                </div>
            </div>
                    </ItemTemplate>
                </asp:Repeater>
        </section>

        <hr class="m-0">


        <%-- YETENEKLER --%>
        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
            <h2 class="mb-5">SERTİFİKALAR</h2>
            <asp:Repeater ID="Repeater6" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <div class="resume-content mr-auto">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Yetenek") %>'></asp:Label></h3>
                            </div>
                        </div>
                    </div>
                    </ItemTemplate>
                </asp:Repeater>
        </section>

        <hr class="m-0">

         <%-- SERTİFİKALAR --%>
        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="awards">
            <h2 class="mb-5">SERTİFİKALAR</h2>
            <asp:Repeater ID="Repeater5" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <div class="resume-content mr-auto">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Baslik") %>'></asp:Label></h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("AlinanKurum") %>'></asp:Label>
                                </div>
                            </div>
                            <div class="resume-date text-md-right">
                                <span class="text-primary">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label></span>
                            </div>
                        </div>
                    </div>
                    </ItemTemplate>
                </asp:Repeater>
        </section>

        <hr class="m-0">

        <%-- HOBİLER --%>
        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
            <asp:Repeater ID="Repeater4" runat="server">
                <ItemTemplate>
            <div class="my-auto">
                <h2 class="mb-5">Hobiler</h2>
                <p>
                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("Hobi") %>'></asp:Label></p>
                <p class="mb-0">
                </p>
            </div>
                    </ItemTemplate>
                </asp:Repeater>
        </section>

        

        

    </div>



    <!-- Bootstrap core JavaScript -->
    <script src="Dosyalar/vendor/jquery/jquery.min.js"></script>
    <script src="Dosyalar/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="Dosyalar/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="Dosyalar/js/resume.min.js"></script>
</body>

</html>

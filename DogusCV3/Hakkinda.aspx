<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkinda.aspx.cs" Inherits="DogusCV.Hakkinda" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">
        <div class ="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Adınız :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TabIndex="1"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Soyadınız :"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TabIndex="2"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Adres :"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TabIndex="3"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Mail :"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" BorderStyle="Groove" TabIndex="4"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Telefon :"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" BorderStyle="Groove" TabIndex="5">
                    </asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label6" runat="server" Text="Notunuz :"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" BorderStyle="Groove" Height="120px" TabIndex="6" TextMode="MultiLine"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label7" runat="server" Text="Fotoğraf :"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TabIndex="7"></asp:TextBox>
            </div>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass ="btn btn-success" OnClick="Button1_Click"/>




        </div>

    </form>


</asp:Content>

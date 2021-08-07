<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Deneyim_Ekle.aspx.cs" Inherits="DogusCV3.Admin_Deneyim_Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">
        <div class ="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Başlık :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TabIndex="1"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Alt Başlık :"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TabIndex="2"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Açıklama :"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TabIndex="3" Height="120px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Tarih :"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" BorderStyle="Groove" TabIndex="4"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass ="btn btn-success" OnClick="Button1_Click" />
        </div>
    </form>
</asp:Content>

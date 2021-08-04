<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Sertifika_Ekle.aspx.cs" Inherits="DogusCV.Admin_Sertifika_Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class ="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Başlık :"></asp:Label>
                <asp:TextBox ID="Txt_Baslik" runat="server" CssClass="form-control" TabIndex="1"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Alınan Kurum :"></asp:Label>
                <asp:TextBox ID="Txt_Alinan_Kurum" runat="server" CssClass="form-control" TabIndex="2"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Tarih :"></asp:Label>
                <asp:TextBox ID="Txt_Tarih" runat="server" CssClass="form-control" TabIndex="3"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass ="btn btn-success" OnClick="Button1_Click"/>
        </div>
    </form>

</asp:Content>

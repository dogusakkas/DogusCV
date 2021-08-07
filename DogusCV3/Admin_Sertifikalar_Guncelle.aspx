<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Sertifikalar_Guncelle.aspx.cs" Inherits="DogusCV3.Admin_Sertifikalar_Guncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class ="form-group">
            <div>
                <asp:Label ID="Label6" runat="server" Text="ID :"></asp:Label>
                <asp:TextBox ID="Txt_ID" runat="server" CssClass="form-control" TabIndex="1"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="Başlık :"></asp:Label>
                <asp:TextBox ID="Txt_Baslik" runat="server" CssClass="form-control" TabIndex="1"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Alinan Kurum :"></asp:Label>
                <asp:TextBox ID="Txt_Alinan_Kurum" runat="server" CssClass="form-control" TabIndex="2"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Tarih :"></asp:Label>
                <asp:TextBox ID="Txt_Tarih" runat="server" CssClass="form-control" TabIndex="3"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass ="btn btn-success" OnClick="Button1_Click"/>
        </div>
    </form>

</asp:Content>

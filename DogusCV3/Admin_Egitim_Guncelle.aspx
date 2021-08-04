<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Egitim_Guncelle.aspx.cs" Inherits="DogusCV.Admin_Egitim_Guncelle" %>
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
                <asp:Label ID="Label2" runat="server" Text="Alt Başlık :"></asp:Label>
                <asp:TextBox ID="Txt_Alt_Baslik" runat="server" CssClass="form-control" TabIndex="2"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Açıklama :"></asp:Label>
                <asp:TextBox ID="Txt_Aciklama" runat="server" CssClass="form-control" TabIndex="3" Height="120px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Genel Not Ortalaması :"></asp:Label>
                <asp:TextBox ID="Txt_GNOrt" runat="server" CssClass="form-control" TabIndex="3"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Tarih :"></asp:Label>
                <asp:TextBox ID="Txt_Tarih" runat="server" CssClass="form-control" BorderStyle="Groove" TabIndex="4"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass ="btn btn-success" OnClick="Button1_Click"/>
        </div>
    </form>

</asp:Content>

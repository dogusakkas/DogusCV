<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Egitim.aspx.cs" Inherits="DogusCV.Admin_Egitim.Admin_Egitim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Başlık</th>
            <th>Alt Başlık</th>
            <th>Açıklama</th>
            <th>Genel Not Ortalaması</th>
            <th>Tarih</th>
            <th>İşlemler</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Baslik") %></td>
                        <td><%# Eval("AltBaslik") %></td>
                        <td><%# Eval("Aciklama") %></td>
                        <td><%# Eval("GNot") %></td>
                        <td><%# Eval("Tarih") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "Admin_Egitim_Sil.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass ="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "Admin_Egitim_Guncelle.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass ="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
        <asp:HyperLink NavigateUrl="~/Admin_Egitim_Ekle.aspx" ID="HyperLink3" runat="server" CssClass ="btn btn-info" TabIndex="1">Eğitim Ekle</asp:HyperLink>
        </form>

</asp:Content>

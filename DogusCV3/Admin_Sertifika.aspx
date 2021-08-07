<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Sertifika.aspx.cs" Inherits="DogusCV3.Admin_Sertifika" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Başlık</th>
            <th>Alınan Kurum</th>
            <th>Tarih</th>
            <th>İşlemler</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Baslik") %></td>
                        <td><%# Eval("AlinanKurum") %></td>
                        <td><%# Eval("Tarih") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "Admin_Sertifika_Sil.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass ="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "Admin_Sertifikalar_Guncelle.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass ="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
        <asp:HyperLink NavigateUrl="~/Admin_Sertifika_Ekle.aspx" ID="HyperLink3" runat="server" CssClass ="btn btn-info" TabIndex="1">Sertifika Ekle</asp:HyperLink>
        </form>

</asp:Content>

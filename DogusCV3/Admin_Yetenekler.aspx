<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Yetenekler.aspx.cs" Inherits="DogusCV3.Admin_Yetenekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Yetenekler</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Yetenek") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "Admin_Yetenekler_Sil.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass ="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "Admin_Yetenekler_Guncelle.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass ="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
        <asp:HyperLink NavigateUrl="~/Admin_Yetenek_Ekle.aspx" ID="HyperLink3" runat="server" CssClass ="btn btn-info" TabIndex="1">Yetenek Ekle</asp:HyperLink>
        </form>

</asp:Content>

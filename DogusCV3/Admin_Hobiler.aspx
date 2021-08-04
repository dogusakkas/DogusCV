<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_Hobiler.aspx.cs" Inherits="DogusCV.Admin_Hobiler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Hobi</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Hobi") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "Admin_Hobiler_Sil.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass ="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "Admin_Hobiler_Guncelle.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass ="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
        <asp:HyperLink NavigateUrl="~/Admin_Hobiler_Ekle.aspx" ID="HyperLink3" runat="server" CssClass ="btn btn-info" TabIndex="1">Hobi Ekle</asp:HyperLink>
        </form>

</asp:Content>

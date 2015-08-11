<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>
    
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width: 900px; height: 100px; vertical-align: top">
        <tr>
            <td style="width: 600px; padding-left: 200px">
                <b style="padding-left: 40px">Name:</b>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Style="margin-left: 133px;"
                    Height="29px" Width="80px" />
            </td>
        </tr>
    </table>
</asp:Content>

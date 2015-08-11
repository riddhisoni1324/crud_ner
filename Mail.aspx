
<%@ Page Title="Mail Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Mail.aspx.cs" Inherits="Mail" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 512px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td style="width: 80px">
            To:
        </td>
        <td class="style1">
            <asp:TextBox ID="txtTo" runat="server" Width="509px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            Subject:
        </td>
        <td class="style1">
            <asp:TextBox ID="txtSubject" runat="server" Width="511px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td valign = "top">
            Body:
        </td>
        <td class="style1">
            <asp:TextBox ID="txtBody" runat="server" TextMode = "MultiLine" 
                Height = "150px" Width = "508px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            File Attachment:
        </td>
        <td class="style1">
            <asp:FileUpload ID="fuAttachment" runat="server" Width="509px" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            Gmail Email:
        </td>
        <td class="style1">
            <asp:TextBox ID="txtEmail" runat="server" Width="514px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            Gmail Password:
        </td>
        <td class="style1">
            <asp:TextBox ID="txtPassword" runat="server" TextMode = "Password" 
                Width="510px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td class="style1">
            <asp:Button ID="Button1" Text="Send" OnClick="SendEmail" runat="server" />
                <asp:Button ID="Button2" Text="Go To Home" OnClick="goHome" runat="server" />
        </td>
    </tr>
</table>
</asp:Content>

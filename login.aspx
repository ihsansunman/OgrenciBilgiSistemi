<%@ Page Title="Giriş Yap" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <div class="row">
        <div class="col-md-4">
            Kullanıcı Adı:
        </div>
            <div class="col-md-4">
                <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
            </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-4">
            Şifre:
        </div>
            <div class="col-md-4">
                <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </div>
    </div>
            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Giriş Yap" OnClick="Button1_Click"/>


    <div class="row">
        <div class="col-md-4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
            <div class="col-md-4">
                <br />
            </div>
    </div>
</asp:Content>

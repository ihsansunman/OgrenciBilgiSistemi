<%@ Page Title="Şifre Değiştir" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sifredegistirme.aspx.cs" Inherits="WebApplication1.sifredegistirme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br /> 
    <div class="row">
        <div class="col-md-4">
            Yeni Şifre:
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox2" Class="form-control" runat="server" TextMode="Password"></asp:TextBox>
        </div>
    </div> <br />
        <div class="row">
        <div class="col-md-4">
            Yeni Şifre Tekrar:
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox3" Class="form-control" runat="server" TextMode="Password"></asp:TextBox>
        </div>
    </div>
    <br /><br />
        <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
            <asp:Button ID="Button1" runat="server" Class="btn btn-danger" Text="Kaydet" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>

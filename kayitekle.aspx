<%@ Page Title="Kayıt Ekle" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kayitekle.aspx.cs" Inherits="WebApplication1.kayitekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <div class="row">
        <div class="col-md-4">
            Kullanıcı Adı:
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox1" Class="form-control" runat="server"></asp:TextBox>
        </div>
    </div> <br />
        <div class="row">
        <div class="col-md-4">
            Şifre:
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox2" Class="form-control" runat="server" TextMode="Password"></asp:TextBox>
        </div>
    </div> <br />
        <div class="row">
        <div class="col-md-4">
            Ad:
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox3" Class="form-control" runat="server"></asp:TextBox>
        </div>
    </div> <br />
        <div class="row">
        <div class="col-md-4">
            Soyad:
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox4" Class="form-control" runat="server"></asp:TextBox>
        </div>
    </div> <br />
     <div class="row">
        <div class="col-md-4">
            Bölüm:
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox5" Class="form-control" runat="server"></asp:TextBox>
        </div>
    </div> <br />
     <div class="row">
        <div class="col-md-4">
            Doğum Tarihi:
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox6" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>
        </div>
    </div> <br />
     <div class="row">
        <div class="col-md-4">
            Şehir:
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox7" Class="form-control" runat="server"></asp:TextBox>
        </div>
    </div> <br />
        <div class="row">
        <div class="col-md-4">
   
        </div>
        <div class="col-md-4">
            <asp:Button ID="Button1" runat="server" Class="btn btn-danger" Text="Kayıt Ekle" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>

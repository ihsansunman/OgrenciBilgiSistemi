<%@ Page Title="Kayıt Sil" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kayitsil.aspx.cs" Inherits="WebApplication1.kayitsil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı:"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox1" Class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
<br /><br />            
        </div>
        <div class="col-md-4">
            <br />
            <asp:Button ID="Button1" runat="server" Class="btn btn-danger" Text="Kayıt Sil" OnClick="Button1_Click1"/>
        </div>
    </div>


        
      </div>
    </div>
        </div>
</asp:Content>

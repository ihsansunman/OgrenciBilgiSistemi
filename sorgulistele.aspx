<%@ Page Title="Sorgu ile Listele" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sorgulistele.aspx.cs" Inherits="WebApplication1.sorgulistele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br />
   <div class="row">
        <div class="col-md-4">
            Sorgulama Türü:
        </div>
        <div class="col-md-4">
            <asp:DropDownList ID="DropDownList1"  class="form-control" runat="server">
                <asp:ListItem>Kullanıcı Adı</asp:ListItem>
                <asp:ListItem>Ad</asp:ListItem>
                <asp:ListItem>Soyad</asp:ListItem>
                <asp:ListItem>Bölüm</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div> <br />
        <div class="row">
        <div class="col-md-4">
            Değer Gir:
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <br />
         <div class="row">
        <div class="col-md-4">
      <br />
        </div>
        <div class="col-md-4">
            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Sorgula" OnClick="Button1_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [kad], [ad], [soyad], [bolum], [dtarihi], [sehir] FROM [kullanicilar]">
            </asp:SqlDataSource>
        </div>
    </div>
    <br />

    <div class="row" align="center">
        <asp:GridView ID="GridView1" runat="server" Class="table table-bordered" AllowPaging="True" AllowSorting="True" BackColor="White" ForeColor="Black" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="kad" Width="100%">
            <Columns>
                <asp:BoundField DataField="kad" HeaderText="Kullanıcı Adı" ReadOnly="True" SortExpression="kad" />
                <asp:BoundField DataField="ad" HeaderText="Adı" SortExpression="ad" />
                <asp:BoundField DataField="soyad" HeaderText="Soyadı" SortExpression="soyad" />
                <asp:BoundField DataField="bolum" HeaderText="Bölümü" SortExpression="bolum" />
                <asp:BoundField DataField="dtarihi" HeaderText="Doğum Tarihi" SortExpression="dtarihi" />
                <asp:BoundField DataField="sehir" HeaderText="Şehri" SortExpression="sehir" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#d9534f" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </div>
</asp:Content>

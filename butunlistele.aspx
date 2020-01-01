<%@ Page Title="Listele" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="butunlistele.aspx.cs" Inherits="WebApplication1.butunlistele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    </br></br>
    <asp:GridView ID="GridView1" class="table table-bordered" runat="server" CellPadding="10" ForeColor="#D9534F" GridLines="None" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#333333"  />
        <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#CCCC99" ForeColor="#d9534f" />
            <HeaderStyle BackColor="#d9534f" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    </asp:Content>

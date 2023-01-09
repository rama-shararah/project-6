<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="OrdersRequests.aspx.cs" Inherits="project6.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display: flex; justify-content: center; margin-top: 5%;">
        <div style="width: 95%;">
            <asp:GridView class="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_order" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="id_order" HeaderText="id_order" InsertVisible="False" ReadOnly="True" SortExpression="id_order" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="name_donation" HeaderText="name_donation" SortExpression="name_donation" />
                    <asp:TemplateField HeaderText="img_donation" SortExpression="img_donation">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img_donation") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# Eval("img_donation") %>' Width="50px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="name_category" HeaderText="name_category" SortExpression="name_category" />
                    <asp:HyperLinkField DataNavigateUrlFields="id_order" DataNavigateUrlFormatString="AcceptOrders.aspx?id_order={0}" Text="Accept" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT orders.id_order, AspNetUsers.UserName, name_donation ,img_donation,name_category  
FROM (((orders INNER JOIN AspNetUsers ON orders.id_user = AspNetUsers.Id)
INNER JOIN donation on orders.id_donation = donation.id_donation)
INNER JOIN category on orders.id_category = category.id_category)
where orders.Accept=0;"
        DeleteCommand="DELETE FROM [orders] WHERE [id_order] = @id_order">
        <DeleteParameters>
            <asp:Parameter Name="id_order" />
        </DeleteParameters>
    </asp:SqlDataSource>

</asp:Content>

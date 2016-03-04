<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
            font-weight: bold;
        }
        body {
            margin: 0 auto;
            width: 80%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="auto-style1">
            HÓA ĐƠN<br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Ma_Hoa_Don" DataSourceID="SqlDatahoadon" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Ma_Hoa_Don" HeaderText="Ma_Hoa_Don" ReadOnly="True" SortExpression="Ma_Hoa_Don" />
                <asp:BoundField DataField="Ma_Khach_Hang" HeaderText="Ma_Khach_Hang" SortExpression="Ma_Khach_Hang" />
                <asp:BoundField DataField="Ten_Khach_Hang" HeaderText="Ten_Khach_Hang" SortExpression="Ten_Khach_Hang" />
                <asp:BoundField DataField="Ngay_Tao_Hoa_Don" HeaderText="Ngay_Tao_Hoa_Don" SortExpression="Ngay_Tao_Hoa_Don" />
                <asp:BoundField DataField="Ma_San_Pham" HeaderText="Ma_San_Pham" SortExpression="Ma_San_Pham" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDatahoadon" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\QL_Ban_Hang.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Hoa_Don] WHERE [Ma_Hoa_Don] = @original_Ma_Hoa_Don AND [Ma_Khach_Hang] = @original_Ma_Khach_Hang AND [Ten_Khach_Hang] = @original_Ten_Khach_Hang AND [Ngay_Tao_Hoa_Don] = @original_Ngay_Tao_Hoa_Don AND [Ma_San_Pham] = @original_Ma_San_Pham" InsertCommand="INSERT INTO [Hoa_Don] ([Ma_Hoa_Don], [Ma_Khach_Hang], [Ten_Khach_Hang], [Ngay_Tao_Hoa_Don], [Ma_San_Pham]) VALUES (@Ma_Hoa_Don, @Ma_Khach_Hang, @Ten_Khach_Hang, @Ngay_Tao_Hoa_Don, @Ma_San_Pham)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Hoa_Don]" UpdateCommand="UPDATE [Hoa_Don] SET [Ma_Khach_Hang] = @Ma_Khach_Hang, [Ten_Khach_Hang] = @Ten_Khach_Hang, [Ngay_Tao_Hoa_Don] = @Ngay_Tao_Hoa_Don, [Ma_San_Pham] = @Ma_San_Pham WHERE [Ma_Hoa_Don] = @original_Ma_Hoa_Don AND [Ma_Khach_Hang] = @original_Ma_Khach_Hang AND [Ten_Khach_Hang] = @original_Ten_Khach_Hang AND [Ngay_Tao_Hoa_Don] = @original_Ngay_Tao_Hoa_Don AND [Ma_San_Pham] = @original_Ma_San_Pham">
            <DeleteParameters>
                <asp:Parameter Name="original_Ma_Hoa_Don" Type="String" />
                <asp:Parameter Name="original_Ma_Khach_Hang" Type="String" />
                <asp:Parameter Name="original_Ten_Khach_Hang" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Ngay_Tao_Hoa_Don" />
                <asp:Parameter Name="original_Ma_San_Pham" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_Hoa_Don" Type="String" />
                <asp:Parameter Name="Ma_Khach_Hang" Type="String" />
                <asp:Parameter Name="Ten_Khach_Hang" Type="String" />
                <asp:Parameter DbType="Date" Name="Ngay_Tao_Hoa_Don" />
                <asp:Parameter Name="Ma_San_Pham" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ma_Khach_Hang" Type="String" />
                <asp:Parameter Name="Ten_Khach_Hang" Type="String" />
                <asp:Parameter DbType="Date" Name="Ngay_Tao_Hoa_Don" />
                <asp:Parameter Name="Ma_San_Pham" Type="String" />
                <asp:Parameter Name="original_Ma_Hoa_Don" Type="String" />
                <asp:Parameter Name="original_Ma_Khach_Hang" Type="String" />
                <asp:Parameter Name="original_Ten_Khach_Hang" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Ngay_Tao_Hoa_Don" />
                <asp:Parameter Name="original_Ma_San_Pham" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_Hoa_Don" DataSourceID="SqlDatahoadon" DefaultMode="Insert">
            <EditItemTemplate>
                Ma_Hoa_Don:
                <asp:Label ID="Ma_Hoa_DonLabel1" runat="server" Text='<%# Eval("Ma_Hoa_Don") %>' />
                <br />
                Ma_Khach_Hang:
                <asp:TextBox ID="Ma_Khach_HangTextBox" runat="server" Text='<%# Bind("Ma_Khach_Hang") %>' />
                <br />
                Ten_Khach_Hang:
                <asp:TextBox ID="Ten_Khach_HangTextBox" runat="server" Text='<%# Bind("Ten_Khach_Hang") %>' />
                <br />
                Ngay_Tao_Hoa_Don:
                <asp:TextBox ID="Ngay_Tao_Hoa_DonTextBox" runat="server" Text='<%# Bind("Ngay_Tao_Hoa_Don") %>' />
                <br />
                Ma_San_Pham:
                <asp:TextBox ID="Ma_San_PhamTextBox" runat="server" Text='<%# Bind("Ma_San_Pham") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ma_Hoa_Don:
                <asp:TextBox ID="Ma_Hoa_DonTextBox" runat="server" Text='<%# Bind("Ma_Hoa_Don") %>' />
                <br />
                Ma_Khach_Hang:
                <asp:TextBox ID="Ma_Khach_HangTextBox" runat="server" Text='<%# Bind("Ma_Khach_Hang") %>' />
                <br />
                Ten_Khach_Hang:
                <asp:TextBox ID="Ten_Khach_HangTextBox" runat="server" Text='<%# Bind("Ten_Khach_Hang") %>' />
                <br />
                Ngay_Tao_Hoa_Don:
                <asp:TextBox ID="Ngay_Tao_Hoa_DonTextBox" runat="server" Text='<%# Bind("Ngay_Tao_Hoa_Don") %>' />
                <br />
                Ma_San_Pham:
                <asp:TextBox ID="Ma_San_PhamTextBox" runat="server" Text='<%# Bind("Ma_San_Pham") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_Hoa_Don:
                <asp:Label ID="Ma_Hoa_DonLabel" runat="server" Text='<%# Eval("Ma_Hoa_Don") %>' />
                <br />
                Ma_Khach_Hang:
                <asp:Label ID="Ma_Khach_HangLabel" runat="server" Text='<%# Bind("Ma_Khach_Hang") %>' />
                <br />
                Ten_Khach_Hang:
                <asp:Label ID="Ten_Khach_HangLabel" runat="server" Text='<%# Bind("Ten_Khach_Hang") %>' />
                <br />
                Ngay_Tao_Hoa_Don:
                <asp:Label ID="Ngay_Tao_Hoa_DonLabel" runat="server" Text='<%# Bind("Ngay_Tao_Hoa_Don") %>' />
                <br />
                Ma_San_Pham:
                <asp:Label ID="Ma_San_PhamLabel" runat="server" Text='<%# Bind("Ma_San_Pham") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />

    </div>
    </form>
</body>
</html>

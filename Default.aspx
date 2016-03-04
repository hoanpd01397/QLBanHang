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
            KHÁCH HÀNG<br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Ma_Khach_Hang" DataSourceID="SqlDatakh2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Ma_Khach_Hang" HeaderText="Ma_Khach_Hang" ReadOnly="True" SortExpression="Ma_Khach_Hang" />
                <asp:BoundField DataField="Ten_Khach_Hang" HeaderText="Ten_Khach_Hang" SortExpression="Ten_Khach_Hang" />
                <asp:BoundField DataField="So_Dien_Thoai" HeaderText="So_Dien_Thoai" SortExpression="So_Dien_Thoai" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
        <asp:SqlDataSource ID="SqlDatakh2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\QL_Ban_Hang.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [Ma_Khach_Hang] = @original_Ma_Khach_Hang AND [Ten_Khach_Hang] = @original_Ten_Khach_Hang AND [So_Dien_Thoai] = @original_So_Dien_Thoai AND [Email] = @original_Email" InsertCommand="INSERT INTO [Khach_Hang] ([Ma_Khach_Hang], [Ten_Khach_Hang], [So_Dien_Thoai], [Email]) VALUES (@Ma_Khach_Hang, @Ten_Khach_Hang, @So_Dien_Thoai, @Email)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Khach_Hang]" UpdateCommand="UPDATE [Khach_Hang] SET [Ten_Khach_Hang] = @Ten_Khach_Hang, [So_Dien_Thoai] = @So_Dien_Thoai, [Email] = @Email WHERE [Ma_Khach_Hang] = @original_Ma_Khach_Hang AND [Ten_Khach_Hang] = @original_Ten_Khach_Hang AND [So_Dien_Thoai] = @original_So_Dien_Thoai AND [Email] = @original_Email">
            <DeleteParameters>
                <asp:Parameter Name="original_Ma_Khach_Hang" Type="String" />
                <asp:Parameter Name="original_Ten_Khach_Hang" Type="String" />
                <asp:Parameter Name="original_So_Dien_Thoai" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_Khach_Hang" Type="String" />
                <asp:Parameter Name="Ten_Khach_Hang" Type="String" />
                <asp:Parameter Name="So_Dien_Thoai" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_Khach_Hang" Type="String" />
                <asp:Parameter Name="So_Dien_Thoai" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="original_Ma_Khach_Hang" Type="String" />
                <asp:Parameter Name="original_Ten_Khach_Hang" Type="String" />
                <asp:Parameter Name="original_So_Dien_Thoai" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_Khach_Hang" DataSourceID="SqlDatakh2" DefaultMode="Insert">
            <EditItemTemplate>
                Ma_Khach_Hang:
                <asp:Label ID="Ma_Khach_HangLabel1" runat="server" Text='<%# Eval("Ma_Khach_Hang") %>' />
                <br />
                Ten_Khach_Hang:
                <asp:TextBox ID="Ten_Khach_HangTextBox" runat="server" Text='<%# Bind("Ten_Khach_Hang") %>' />
                <br />
                So_Dien_Thoai:
                <asp:TextBox ID="So_Dien_ThoaiTextBox" runat="server" Text='<%# Bind("So_Dien_Thoai") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ma_Khach_Hang:
                <asp:TextBox ID="Ma_Khach_HangTextBox" runat="server" Text='<%# Bind("Ma_Khach_Hang") %>' />
                <br />
                Ten_Khach_Hang:
                <asp:TextBox ID="Ten_Khach_HangTextBox" runat="server" Text='<%# Bind("Ten_Khach_Hang") %>' />
                <br />
                So_Dien_Thoai:
                <asp:TextBox ID="So_Dien_ThoaiTextBox" runat="server" Text='<%# Bind("So_Dien_Thoai") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_Khach_Hang:
                <asp:Label ID="Ma_Khach_HangLabel" runat="server" Text='<%# Eval("Ma_Khach_Hang") %>' />
                <br />
                Ten_Khach_Hang:
                <asp:Label ID="Ten_Khach_HangLabel" runat="server" Text='<%# Bind("Ten_Khach_Hang") %>' />
                <br />
                So_Dien_Thoai:
                <asp:Label ID="So_Dien_ThoaiLabel" runat="server" Text='<%# Bind("So_Dien_Thoai") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
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

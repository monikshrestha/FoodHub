<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodHub.aspx.cs" Inherits="FoodHub.FoodHub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FoodHUB</title>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" href="~/Content/Site.css" />
    <link rel="stylesheet" href="~/Content/Main.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
            </Scripts>
        </asp:ScriptManager>

        <div class="row body">
            <div class="col-2">
                <div class="sidebar">
                    <div class="name">Food HUB</div>
                    <div class="sidebar-menu">
                        <nav>
                            <ul>
                                <li>
                                    <a href="https://localhost:44311/Home">Home</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44311/FoodHub">Foods</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44311/RestaurantHub">Restaurant</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44311/LoyaltyHub">Loyalty Points</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44311/DeliveryHub">Delivery</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44311/UserHub">Users</a>
                                </li>
                                 <li>
                                    <a href="https://localhost:44311/OrderHub">Customer Order Details</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44311/OrderActivity">Order Activity</a>
                                </li>
                                <li>
                                    <a href="https://localhost:44311/DishSearch">Dish Search</a>
                                </li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="col-10">
                <div class="mainbody">
                    <div class="topic-head">
                        <div class="topic-left">User</div>
                    </div>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM MONIK.CUSTOMER WHERE (CUSTOMER_ID = :PARAM1) AND (CUSTOMERNAME = :PARAM2) AND (CUSTOMERADDRESS = :PARAM3) AND (CUSTOMERPHONE = :PARAM4)" InsertCommand="INSERT INTO MONIK.CUSTOMER(CUSTOMER_ID, CUSTOMERNAME, CUSTOMERADDRESS, CUSTOMERPHONE) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CUSTOMER_ID, CUSTOMERNAME, CUSTOMERADDRESS, CUSTOMERPHONE FROM MONIK.CUSTOMER" UpdateCommand="UPDATE MONIK.CUSTOMER SET CUSTOMERNAME = :PARAM1, CUSTOMERADDRESS = :PARAM2, CUSTOMERPHONE = :PARAM3 WHERE (CUSTOMER_ID = :PARAM4) AND (CUSTOMERNAME = :PARAM5) AND (CUSTOMERADDRESS = :PARAM6) AND (CUSTOMERPHONE = :PARAM7)" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                        <DeleteParameters>
                            <asp:Parameter Name="original_CUSTOMER_ID" Type="Decimal" />
                            <asp:Parameter Name="original_CUSTOMERNAME" Type="String" />
                            <asp:Parameter Name="original_CUSTOMERADDRESS" Type="String" />
                            <asp:Parameter Name="original_CUSTOMERPHONE" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CUSTOMER_ID" Type="Decimal" />
                            <asp:Parameter Name="CUSTOMERNAME" Type="String" />
                            <asp:Parameter Name="CUSTOMERADDRESS" Type="String" />
                            <asp:Parameter Name="CUSTOMERPHONE" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CUSTOMERNAME" Type="String" />
                            <asp:Parameter Name="CUSTOMERADDRESS" Type="String" />
                            <asp:Parameter Name="CUSTOMERPHONE" Type="String" />
                            <asp:Parameter Name="original_CUSTOMER_ID" Type="Decimal" />
                            <asp:Parameter Name="original_CUSTOMERNAME" Type="String" />
                            <asp:Parameter Name="original_CUSTOMERADDRESS" Type="String" />
                            <asp:Parameter Name="original_CUSTOMERPHONE" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CssClass="table" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource1" AllowPaging="True">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" ReadOnly="True" SortExpression="CUSTOMER_ID" />
                            <asp:BoundField DataField="CUSTOMERNAME" HeaderText="CUSTOMERNAME" SortExpression="CUSTOMERNAME" />
                            <asp:BoundField DataField="CUSTOMERADDRESS" HeaderText="CUSTOMERADDRESS" SortExpression="CUSTOMERADDRESS" />
                            <asp:BoundField DataField="CUSTOMERPHONE" HeaderText="CUSTOMERPHONE" SortExpression="CUSTOMERPHONE" />
                        </Columns>
                    </asp:GridView>
                    <asp:FormView ID="FormView2" runat="server" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="122px" Width="202px">
                        <EditItemTemplate>
                            CUSTOMER_ID:
                            <asp:Label ID="CUSTOMER_IDLabel1" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
                            <br />
                            CUSTOMERNAME:
                            <asp:TextBox ID="CUSTOMERNAMETextBox" runat="server" Text='<%# Bind("CUSTOMERNAME") %>' />
                            <br />
                            CUSTOMERADDRESS:
                            <asp:TextBox ID="CUSTOMERADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMERADDRESS") %>' />
                            <br />
                            CUSTOMERPHONE:
                            <asp:TextBox ID="CUSTOMERPHONETextBox" runat="server" Text='<%# Bind("CUSTOMERPHONE") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            CUSTOMER_ID:
                            <asp:TextBox ID="CUSTOMER_IDTextBox" runat="server" Text='<%# Bind("CUSTOMER_ID") %>' />
                            <br />
                            CUSTOMERNAME:
                            <asp:TextBox ID="CUSTOMERNAMETextBox" runat="server" Text='<%# Bind("CUSTOMERNAME") %>' />
                            <br />
                            CUSTOMERADDRESS:
                            <asp:TextBox ID="CUSTOMERADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMERADDRESS") %>' />
                            <br />
                            CUSTOMERPHONE:
                            <asp:TextBox ID="CUSTOMERPHONETextBox" runat="server" Text='<%# Bind("CUSTOMERPHONE") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            CUSTOMER_ID:
                            <asp:Label ID="CUSTOMER_IDLabel" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
                            <br />
                            CUSTOMERNAME:
                            <asp:Label ID="CUSTOMERNAMELabel" runat="server" Text='<%# Bind("CUSTOMERNAME") %>' />
                            <br />
                            CUSTOMERADDRESS:
                            <asp:Label ID="CUSTOMERADDRESSLabel" runat="server" Text='<%# Bind("CUSTOMERADDRESS") %>' />
                            <br />
                            CUSTOMERPHONE:
                            <asp:Label ID="CUSTOMERPHONELabel" runat="server" Text='<%# Bind("CUSTOMERPHONE") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                </div>

            </div>
        </div>
    </form>
</body>
</html>

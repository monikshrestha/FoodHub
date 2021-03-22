<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeliveryHub.aspx.cs" Inherits="FoodHub.DeliveryHub" %>

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
                        <div class="topic-left">Delivery</div>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM MONIK.DELIVERY_ADDRESS WHERE (ADDRESS_ID = :PARAM1) AND (DELIVERY_POINT = :PARAM2) AND (ADD_LONGITUDE = :PARAM3) AND (ADD_LATITUDE = :PARAM4)" InsertCommand="INSERT INTO MONIK.DELIVERY_ADDRESS(ADDRESS_ID, DELIVERY_POINT, ADD_LONGITUDE, ADD_LATITUDE) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ADDRESS_ID, DELIVERY_POINT, ADD_LONGITUDE, ADD_LATITUDE FROM MONIK.DELIVERY_ADDRESS" UpdateCommand="UPDATE MONIK.DELIVERY_ADDRESS SET DELIVERY_POINT = :PARAM1, ADD_LONGITUDE = :PARAM2, ADD_LATITUDE = :PARAM3 WHERE (ADDRESS_ID = :PARAM4) AND (DELIVERY_POINT = :PARAM5) AND (ADD_LONGITUDE = :PARAM6) AND (ADD_LATITUDE = :PARAM7)">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ADDRESS_ID" Type="Decimal" />
                            <asp:Parameter Name="original_DELIVERY_POINT" Type="String" />
                            <asp:Parameter Name="original_ADD_LONGITUDE" Type="Decimal" />
                            <asp:Parameter Name="original_ADD_LATITUDE" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
                            <asp:Parameter Name="DELIVERY_POINT" Type="String" />
                            <asp:Parameter Name="ADD_LONGITUDE" Type="Decimal" />
                            <asp:Parameter Name="ADD_LATITUDE" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="DELIVERY_POINT" Type="String" />
                            <asp:Parameter Name="ADD_LONGITUDE" Type="Decimal" />
                            <asp:Parameter Name="ADD_LATITUDE" Type="Decimal" />
                            <asp:Parameter Name="original_ADDRESS_ID" Type="Decimal" />
                            <asp:Parameter Name="original_DELIVERY_POINT" Type="String" />
                            <asp:Parameter Name="original_ADD_LONGITUDE" Type="Decimal" />
                            <asp:Parameter Name="original_ADD_LATITUDE" Type="Decimal" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
                            <asp:BoundField DataField="DELIVERY_POINT" HeaderText="DELIVERY_POINT" SortExpression="DELIVERY_POINT" />
                            <asp:BoundField DataField="ADD_LONGITUDE" HeaderText="ADD_LONGITUDE" SortExpression="ADD_LONGITUDE" />
                            <asp:BoundField DataField="ADD_LATITUDE" HeaderText="ADD_LATITUDE" SortExpression="ADD_LATITUDE" />
                        </Columns>
                    </asp:GridView>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="214px" OnPageIndexChanging="FormView1_PageIndexChanging">
                        <EditItemTemplate>
                            ADDRESS_ID:
                            <asp:Label ID="ADDRESS_IDLabel1" runat="server" Text='<%# Eval("ADDRESS_ID") %>' />
                            <br />
                            DELIVERY_POINT:
                            <asp:TextBox ID="DELIVERY_POINTTextBox" runat="server" Text='<%# Bind("DELIVERY_POINT") %>' />
                            <br />
                            ADD_LONGITUDE:
                            <asp:TextBox ID="ADD_LONGITUDETextBox" runat="server" Text='<%# Bind("ADD_LONGITUDE") %>' />
                            <br />
                            ADD_LATITUDE:
                            <asp:TextBox ID="ADD_LATITUDETextBox" runat="server" Text='<%# Bind("ADD_LATITUDE") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            ADDRESS_ID:
                            <asp:TextBox ID="ADDRESS_IDTextBox" runat="server" Text='<%# Bind("ADDRESS_ID") %>' />
                            <br />
                            DELIVERY_POINT:
                            <asp:TextBox ID="DELIVERY_POINTTextBox" runat="server" Text='<%# Bind("DELIVERY_POINT") %>' />
                            <br />
                            ADD_LONGITUDE:
                            <asp:TextBox ID="ADD_LONGITUDETextBox" runat="server" Text='<%# Bind("ADD_LONGITUDE") %>' />
                            <br />
                            ADD_LATITUDE:
                            <asp:TextBox ID="ADD_LATITUDETextBox" runat="server" Text='<%# Bind("ADD_LATITUDE") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            ADDRESS_ID:
                            <asp:Label ID="ADDRESS_IDLabel" runat="server" Text='<%# Eval("ADDRESS_ID") %>' />
                            <br />
                            DELIVERY_POINT:
                            <asp:Label ID="DELIVERY_POINTLabel" runat="server" Text='<%# Bind("DELIVERY_POINT") %>' />
                            <br />
                            ADD_LONGITUDE:
                            <asp:Label ID="ADD_LONGITUDELabel" runat="server" Text='<%# Bind("ADD_LONGITUDE") %>' />
                            <br />
                            ADD_LATITUDE:
                            <asp:Label ID="ADD_LATITUDELabel" runat="server" Text='<%# Bind("ADD_LATITUDE") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                </div>

            </div>
        </div>
        <div>
        </div>
    </form>
</body>
</html>

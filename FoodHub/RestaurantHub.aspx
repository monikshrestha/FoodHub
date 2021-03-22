<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestaurantHub.aspx.cs" Inherits="FoodHub.RestaurantHub" %>

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
                        <div class="topic-left">Restaurants</div>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT RESTAURANT_ID, RESTAURANT_NAME, RESTAURANT_LOC FROM MONIK.RESTAURANT" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM MONIK.RESTAURANT WHERE (RESTAURANT_ID = :PARAM1) AND (RESTAURANT_NAME = :PARAM2) AND (RESTAURANT_LOC = :PARAM3)" InsertCommand="INSERT INTO MONIK.RESTAURANT(RESTAURANT_ID, RESTAURANT_NAME, RESTAURANT_LOC) VALUES (:PARAM1, :PARAM2, :PARAM3)" UpdateCommand="UPDATE MONIK.RESTAURANT SET RESTAURANT_NAME = :PARAM1, RESTAURANT_LOC = :PARAM2 WHERE (RESTAURANT_ID = :PARAM3) AND (RESTAURANT_NAME = :PARAM4) AND (RESTAURANT_LOC = :PARAM5)">
                        <DeleteParameters>
                            <asp:Parameter Name="original_RESTAURANT_ID" Type="Decimal" />
                            <asp:Parameter Name="original_RESTAURANT_NAME" Type="String" />
                            <asp:Parameter Name="original_RESTAURANT_LOC" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="RESTAURANT_ID" Type="Decimal" />
                            <asp:Parameter Name="RESTAURANT_NAME" Type="String" />
                            <asp:Parameter Name="RESTAURANT_LOC" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="RESTAURANT_NAME" Type="String" />
                            <asp:Parameter Name="RESTAURANT_LOC" Type="String" />
                            <asp:Parameter Name="original_RESTAURANT_ID" Type="Decimal" />
                            <asp:Parameter Name="original_RESTAURANT_NAME" Type="String" />
                            <asp:Parameter Name="original_RESTAURANT_LOC" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RESTAURANT_ID" DataSourceID="SqlDataSource1" CssClass="table">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT_ID" ReadOnly="True" SortExpression="RESTAURANT_ID" />
                            <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT_NAME" SortExpression="RESTAURANT_NAME" />
                            <asp:BoundField DataField="RESTAURANT_LOC" HeaderText="RESTAURANT_LOC" SortExpression="RESTAURANT_LOC" />
                        </Columns>
                    </asp:GridView>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="RESTAURANT_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging" Width="221px">
                        <EditItemTemplate>
                            RESTAURANT_ID:
                            <asp:Label ID="RESTAURANT_IDLabel1" runat="server" Text='<%# Eval("RESTAURANT_ID") %>' />
                            <br />
                            RESTAURANT_NAME:
                            <asp:TextBox ID="RESTAURANT_NAMETextBox" runat="server" Text='<%# Bind("RESTAURANT_NAME") %>' />
                            <br />
                            RESTAURANT_LOC:
                            <asp:TextBox ID="RESTAURANT_LOCTextBox" runat="server" Text='<%# Bind("RESTAURANT_LOC") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            RESTAURANT_ID:
                            <asp:TextBox ID="RESTAURANT_IDTextBox" runat="server" Text='<%# Bind("RESTAURANT_ID") %>' />
                            <br />
                            RESTAURANT_NAME:
                            <asp:TextBox ID="RESTAURANT_NAMETextBox" runat="server" Text='<%# Bind("RESTAURANT_NAME") %>' />
                            <br />
                            RESTAURANT_LOC:
                            <asp:TextBox ID="RESTAURANT_LOCTextBox" runat="server" Text='<%# Bind("RESTAURANT_LOC") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            RESTAURANT_ID:
                            <asp:Label ID="RESTAURANT_IDLabel" runat="server" Text='<%# Eval("RESTAURANT_ID") %>' />
                            <br />
                            RESTAURANT_NAME:
                            <asp:Label ID="RESTAURANT_NAMELabel" runat="server" Text='<%# Bind("RESTAURANT_NAME") %>' />
                            <br />
                            RESTAURANT_LOC:
                            <asp:Label ID="RESTAURANT_LOCLabel" runat="server" Text='<%# Bind("RESTAURANT_LOC") %>' />
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

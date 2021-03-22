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
                        <div class="topic-left">Customer Order Details</div>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT
    g.sn,
    g.dishorderunit,
    dish.dish_name,
    dish.dish_rate,
    h.delivery_point,
    f.customername,
    i.order_amt,
    i.&quot;Order_date/time&quot;,
    i.order_status
FROM
    dish_order        g,
    customer          f,
    &quot;Order&quot;           i,
    delivery_address  h,
    dish
WHERE
        f.customer_id = g.customer_customer_id
    AND h.address_id = i.delivery_address_address_id"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="SN" HeaderText="SN" SortExpression="SN" />
                            <asp:BoundField DataField="DISHORDERUNIT" HeaderText="DISHORDERUNIT" SortExpression="DISHORDERUNIT" />
                            <asp:BoundField DataField="DISH_NAME" HeaderText="DISH_NAME" SortExpression="DISH_NAME" />
                            <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
                            <asp:BoundField DataField="DELIVERY_POINT" HeaderText="DELIVERY_POINT" SortExpression="DELIVERY_POINT" />
                            <asp:BoundField DataField="CUSTOMERNAME" HeaderText="CUSTOMERNAME" SortExpression="CUSTOMERNAME" />
                            <asp:BoundField DataField="ORDER_AMT" HeaderText="ORDER_AMT" SortExpression="ORDER_AMT" />
                            <asp:BoundField DataField="Order_date/time" HeaderText="Order_date/time" SortExpression="Order_date/time" />
                            <asp:BoundField DataField="ORDER_STATUS" HeaderText="ORDER_STATUS" SortExpression="ORDER_STATUS" />
                        </Columns>
                    </asp:GridView>

                </div>
                
            </div>
        </div>
    </form>
</body>
</html>

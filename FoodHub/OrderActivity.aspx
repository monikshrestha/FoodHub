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
                        <div class="topic-left">Order Activity</div>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT
    n.dish_name,
    n.dish_rate,
    m.dishcode,
    p.restaurant_id,
    q.restaurant_restaurant_id,
    l.customer_id,
    o.dish_dish_id AS dish_dish_id1,
    m.dishorderunit
FROM
    dish_order       m,
    customer         l,
    restaurant_dish  o,
    dish             n,
    restaurant       p,
    ordered_dish     q
WHERE
        l.customer_id = m.customer_customer_id
    AND n.dish_id = o.dish_dish_id
    AND p.restaurant_id = o.restaurant_restaurant_id
    AND n.dish_id = q.dish_dish_id
    AND m.dish_id = q.dish_order_dish_id
    AND p.restaurant_id = q.restaurant_restaurant_id"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="DISH_NAME" HeaderText="DISH_NAME" SortExpression="DISH_NAME" />
                            <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
                            <asp:BoundField DataField="DISHCODE" HeaderText="DISHCODE" SortExpression="DISHCODE" />
                            <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT_ID" SortExpression="RESTAURANT_ID" />
                            <asp:BoundField DataField="RESTAURANT_RESTAURANT_ID" HeaderText="RESTAURANT_RESTAURANT_ID" SortExpression="RESTAURANT_RESTAURANT_ID" />
                            <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" SortExpression="CUSTOMER_ID" />
                            <asp:BoundField DataField="DISH_DISH_ID1" HeaderText="DISH_DISH_ID1" SortExpression="DISH_DISH_ID1" />
                            <asp:BoundField DataField="DISHORDERUNIT" HeaderText="DISHORDERUNIT" SortExpression="DISHORDERUNIT" />
                        </Columns>
                    </asp:GridView>
                </div>

            </div>
        </div>
    </form>
</body>
</html>

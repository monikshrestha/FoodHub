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
                        <div class="topic-left">Search your dish</div>
                        <div class="topic-right">
                            <div class="search">
                                <input
                                    class="form-control"
                                    id="myInput"
                                    type="text"
                                    placeholder="Search Dish" />

                            </div>
                        </div>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT b.dish_dish_id,a.restaurant_id,a.restaurant_name,a.restaurant_loc,c.dish_code,c.dish_rate,c.dish_localname FROM restaurant_dish b, restaurant a,dish c WHERE a.restaurant_id = b.restaurant_restaurant_id AND c.dish_id = b.dish_dish_id"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="DISH_DISH_ID" HeaderText="DISH_DISH_ID" SortExpression="DISH_DISH_ID" />
                            <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT_ID" SortExpression="RESTAURANT_ID" />
                            <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT_NAME" SortExpression="RESTAURANT_NAME" />
                            <asp:BoundField DataField="RESTAURANT_LOC" HeaderText="RESTAURANT_LOC" SortExpression="RESTAURANT_LOC" />
                            <asp:BoundField DataField="DISH_CODE" HeaderText="DISH_CODE" SortExpression="DISH_CODE" />
                            <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
                            <asp:BoundField DataField="DISH_LOCALNAME" HeaderText="DISH_LOCALNAME" SortExpression="DISH_LOCALNAME" />
                        </Columns>
                    </asp:GridView>
       
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>

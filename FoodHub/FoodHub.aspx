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
                        <div class="topic-left">Food Menu</div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM MONIK.DISH WHERE (DISH_ID = :PARAM1) AND (DISH_CODE = :PARAM2) AND (DISH_NAME = :PARAM3) AND (DISH_RATE = :PARAM4) AND (DISH_LOCALNAME = :PARAM5) AND (DISH_AVAILABILITY = :PARAM6)" InsertCommand="INSERT INTO MONIK.DISH(DISH_ID, DISH_CODE, DISH_NAME, DISH_RATE, DISH_LOCALNAME, DISH_AVAILABILITY) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4, :PARAM5, :PARAM6)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISH_ID, DISH_CODE, DISH_NAME, DISH_RATE, DISH_LOCALNAME, DISH_AVAILABILITY FROM MONIK.DISH" UpdateCommand="UPDATE MONIK.DISH SET DISH_CODE = :PARAM1, DISH_NAME = :PARAM2, DISH_RATE = :PARAM3, DISH_LOCALNAME = :PARAM4, DISH_AVAILABILITY = :PARAM5 WHERE (DISH_ID = :PARAM6) AND (DISH_CODE = :PARAM7) AND (DISH_NAME = :PARAM8) AND (DISH_RATE = :PARAM9) AND (DISH_LOCALNAME = :PARAM10) AND (DISH_AVAILABILITY = :PARAM11)">
                            <DeleteParameters>
                                <asp:Parameter Name="original_DISH_ID" Type="Decimal" />
                                <asp:Parameter Name="original_DISH_CODE" Type="String" />
                                <asp:Parameter Name="original_DISH_NAME" Type="String" />
                                <asp:Parameter Name="original_DISH_RATE" Type="Decimal" />
                                <asp:Parameter Name="original_DISH_LOCALNAME" Type="String" />
                                <asp:Parameter Name="original_DISH_AVAILABILITY" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="DISH_ID" Type="Decimal" />
                                <asp:Parameter Name="DISH_CODE" Type="String" />
                                <asp:Parameter Name="DISH_NAME" Type="String" />
                                <asp:Parameter Name="DISH_RATE" Type="Decimal" />
                                <asp:Parameter Name="DISH_LOCALNAME" Type="String" />
                                <asp:Parameter Name="DISH_AVAILABILITY" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="DISH_CODE" Type="String" />
                                <asp:Parameter Name="DISH_NAME" Type="String" />
                                <asp:Parameter Name="DISH_RATE" Type="Decimal" />
                                <asp:Parameter Name="DISH_LOCALNAME" Type="String" />
                                <asp:Parameter Name="DISH_AVAILABILITY" Type="String" />
                                <asp:Parameter Name="original_DISH_ID" Type="Decimal" />
                                <asp:Parameter Name="original_DISH_CODE" Type="String" />
                                <asp:Parameter Name="original_DISH_NAME" Type="String" />
                                <asp:Parameter Name="original_DISH_RATE" Type="Decimal" />
                                <asp:Parameter Name="original_DISH_LOCALNAME" Type="String" />
                                <asp:Parameter Name="original_DISH_AVAILABILITY" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table" DataKeyNames="DISH_ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="DISH_ID" HeaderText="DISH_ID" ReadOnly="True" SortExpression="DISH_ID" />
                                <asp:BoundField DataField="DISH_CODE" HeaderText="DISH_CODE" SortExpression="DISH_CODE" />
                                <asp:BoundField DataField="DISH_NAME" HeaderText="DISH_NAME" SortExpression="DISH_NAME" />
                                <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
                                <asp:BoundField DataField="DISH_LOCALNAME" HeaderText="DISH_LOCALNAME" SortExpression="DISH_LOCALNAME" />
                                <asp:BoundField DataField="DISH_AVAILABILITY" HeaderText="DISH_AVAILABILITY" SortExpression="DISH_AVAILABILITY" />
                            </Columns>
                        </asp:GridView>
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="DISH_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="190px">
                            <EditItemTemplate>
                                DISH_ID:
                                <asp:Label ID="DISH_IDLabel1" runat="server" Text='<%# Eval("DISH_ID") %>' />
                                <br />
                                DISH_CODE:
                                <asp:TextBox ID="DISH_CODETextBox" runat="server" Text='<%# Bind("DISH_CODE") %>' />
                                <br />
                                DISH_NAME:
                                <asp:TextBox ID="DISH_NAMETextBox" runat="server" Text='<%# Bind("DISH_NAME") %>' />
                                <br />
                                DISH_RATE:
                                <asp:TextBox ID="DISH_RATETextBox" runat="server" Text='<%# Bind("DISH_RATE") %>' />
                                <br />
                                DISH_LOCALNAME:
                                <asp:TextBox ID="DISH_LOCALNAMETextBox" runat="server" Text='<%# Bind("DISH_LOCALNAME") %>' />
                                <br />
                                DISH_AVAILABILITY:
                                <asp:TextBox ID="DISH_AVAILABILITYTextBox" runat="server" Text='<%# Bind("DISH_AVAILABILITY") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                DISH_ID:
                                <asp:TextBox ID="DISH_IDTextBox" runat="server" Text='<%# Bind("DISH_ID") %>' />
                                <br />
                                DISH_CODE:
                                <asp:TextBox ID="DISH_CODETextBox" runat="server" Text='<%# Bind("DISH_CODE") %>' />
                                <br />
                                DISH_NAME:
                                <asp:TextBox ID="DISH_NAMETextBox" runat="server" Text='<%# Bind("DISH_NAME") %>' />
                                <br />
                                DISH_RATE:
                                <asp:TextBox ID="DISH_RATETextBox" runat="server" Text='<%# Bind("DISH_RATE") %>' />
                                <br />
                                DISH_LOCALNAME:
                                <asp:TextBox ID="DISH_LOCALNAMETextBox" runat="server" Text='<%# Bind("DISH_LOCALNAME") %>' />
                                <br />
                                DISH_AVAILABILITY:
                                <asp:TextBox ID="DISH_AVAILABILITYTextBox" runat="server" Text='<%# Bind("DISH_AVAILABILITY") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                DISH_ID:
                                <asp:Label ID="DISH_IDLabel" runat="server" Text='<%# Eval("DISH_ID") %>' />
                                <br />
                                DISH_CODE:
                                <asp:Label ID="DISH_CODELabel" runat="server" Text='<%# Bind("DISH_CODE") %>' />
                                <br />
                                DISH_NAME:
                                <asp:Label ID="DISH_NAMELabel" runat="server" Text='<%# Bind("DISH_NAME") %>' />
                                <br />
                                DISH_RATE:
                                <asp:Label ID="DISH_RATELabel" runat="server" Text='<%# Bind("DISH_RATE") %>' />
                                <br />
                                DISH_LOCALNAME:
                                <asp:Label ID="DISH_LOCALNAMELabel" runat="server" Text='<%# Bind("DISH_LOCALNAME") %>' />
                                <br />
                                DISH_AVAILABILITY:
                                <asp:Label ID="DISH_AVAILABILITYLabel" runat="server" Text='<%# Bind("DISH_AVAILABILITY") %>' />
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

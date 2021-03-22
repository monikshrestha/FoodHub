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
                        <div class="topic-left">Loytalty Points</div>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM MONIK.LOYALTY_POINT WHERE (LOYALTY_ID = :PARAM1) AND (START_DATE = :PARAM2) AND (END_DATE = :PARAM3) AND (TOTALLOYALTY = :PARAM4)" InsertCommand="INSERT INTO MONIK.LOYALTY_POINT(LOYALTY_ID, START_DATE, END_DATE, TOTALLOYALTY) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT LOYALTY_ID, START_DATE, END_DATE, TOTALLOYALTY FROM MONIK.LOYALTY_POINT" UpdateCommand="UPDATE MONIK.LOYALTY_POINT SET START_DATE = :PARAM1, END_DATE = :PARAM2, TOTALLOYALTY = :PARAM3 WHERE (LOYALTY_ID = :PARAM4) AND (START_DATE = :PARAM5) AND (END_DATE = :PARAM6) AND (TOTALLOYALTY = :PARAM7)">
                        <DeleteParameters>
                            <asp:Parameter Name="original_LOYALTY_ID" Type="Decimal" />
                            <asp:Parameter Name="original_START_DATE" Type="DateTime" />
                            <asp:Parameter Name="original_END_DATE" Type="DateTime" />
                            <asp:Parameter Name="original_TOTALLOYALTY" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="LOYALTY_ID" Type="Decimal" />
                            <asp:Parameter Name="START_DATE" Type="DateTime" />
                            <asp:Parameter Name="END_DATE" Type="DateTime" />
                            <asp:Parameter Name="TOTALLOYALTY" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="START_DATE" Type="DateTime" />
                            <asp:Parameter Name="END_DATE" Type="DateTime" />
                            <asp:Parameter Name="TOTALLOYALTY" Type="Decimal" />
                            <asp:Parameter Name="original_LOYALTY_ID" Type="Decimal" />
                            <asp:Parameter Name="original_START_DATE" Type="DateTime" />
                            <asp:Parameter Name="original_END_DATE" Type="DateTime" />
                            <asp:Parameter Name="original_TOTALLOYALTY" Type="Decimal" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LOYALTY_ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CssClass="table">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="LOYALTY_ID" HeaderText="LOYALTY_ID" ReadOnly="True" SortExpression="LOYALTY_ID" />
                            <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                            <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
                            <asp:BoundField DataField="TOTALLOYALTY" HeaderText="TOTALLOYALTY" SortExpression="TOTALLOYALTY" />
                        </Columns>
                    </asp:GridView>
                    
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="LOYALTY_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging1" Width="165px">
                        <EditItemTemplate>
                            LOYALTY_ID:
                            <asp:Label ID="LOYALTY_IDLabel1" runat="server" Text='<%# Eval("LOYALTY_ID") %>' />
                            <br />
                            START_DATE:
                            <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                            <br />
                            END_DATE:
                            <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                            <br />
                            TOTALLOYALTY:
                            <asp:TextBox ID="TOTALLOYALTYTextBox" runat="server" Text='<%# Bind("TOTALLOYALTY") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            LOYALTY_ID:
                            <asp:TextBox ID="LOYALTY_IDTextBox" runat="server" Text='<%# Bind("LOYALTY_ID") %>' />
                            <br />
                            START_DATE:
                            <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                            <br />
                            END_DATE:
                            <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                            <br />
                            TOTALLOYALTY:
                            <asp:TextBox ID="TOTALLOYALTYTextBox" runat="server" Text='<%# Bind("TOTALLOYALTY") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            LOYALTY_ID:
                            <asp:Label ID="LOYALTY_IDLabel" runat="server" Text='<%# Eval("LOYALTY_ID") %>' />
                            <br />
                            START_DATE:
                            <asp:Label ID="START_DATELabel" runat="server" Text='<%# Bind("START_DATE") %>' />
                            <br />
                            END_DATE:
                            <asp:Label ID="END_DATELabel" runat="server" Text='<%# Bind("END_DATE") %>' />
                            <br />
                            TOTALLOYALTY:
                            <asp:Label ID="TOTALLOYALTYLabel" runat="server" Text='<%# Bind("TOTALLOYALTY") %>' />
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

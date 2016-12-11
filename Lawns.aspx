﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lawns.aspx.cs" Inherits="Lawns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="searchfilterL">
            <div id="search-areaL">All Areas &emsp; &emsp; &emsp; &emsp; &emsp; ▼</div>
            <div id="drop-search-areaL">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server" ID="SearchArea"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Areas</li>
                </ul>
                <h4 style="padding-top: 10px; padding-left: 5px;">Popular Areas</h4>
            </div>
            <div id="search-capacityL">All Capacities &emsp; &emsp; &emsp; &emsp; ▼</div>
            <div id="drop-search-capactiyL">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Capacities</li>
                </ul>
            </div>
            <div id="search-buttonL">
                <asp:Button runat="server" Text="Search" Style="height: 50px; line-height: 30px; border-radius: 0px;" CssClass="button" />
            </div>
        </div>
        <div id="datagrid">

            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

                <ItemTemplate>
                    <table style="border: groove 1px; background-color: orange; width: 100%">
                        <tr>
                            <td style="width: 220px">
                                <asp:Image ID="Imag" ImageUrl='<%# Eval("Uimg") %>' runat="server" Width="400px" />

                            </td>

                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <b>Name: </b>
                                        </td>
                                        <td>
                                            <asp:Label ID="Name" Text='<%# Eval("LawnName") %>' runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Capacity:  </b>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label3" Text='<%# Eval("SeatingCapacity") %>' runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Address : </b>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label122" Text='<%# Eval("Address") %>' runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button Visible="True" runat="server" Text="Details"></asp:Button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>

                <SeparatorTemplate>

                    <asp:Image runat="server" ID="immm" ImageUrl="~/,65c8c7ad-4a42-4c9f-9557-94586baacfb2newImage.png" />

                </SeparatorTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="mainPageContainer">
        <div id="ajaxBanner">
            <asp:ScriptManager ID="ScriptManager1" runat="server" AjaxFrameworkMode="Enabled">
            </asp:ScriptManager>
            <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="pageMultiView">
            </asp:Timer>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger controlid="Timer1" eventname="Tick" />
                </Triggers>
                <ContentTemplate>
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                        <div class="scrollpage" style='background-image: url(Image/banner/Turkish-Stuffed-Grape-Leaves.jpg);'>
                        <div class="caption"><h1>Savory Salads</h1><p><ul><li>Tabouleh</li><li>Fattoush</li><li>Lentil Salad</li><li>Spinach Salad</li><li>Salat A</li></ul>
                            <p>
                            </p>
                            <p>
                            </p>
                            <p>
                            </p>
                            <p>
                            </p>
                            <p>
                            </p>
                            </p></div>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="scrollpage" style='background-image: url(Image/banner/Hummus2.jpg);'>
                            <div class="caption"><h1>Entrees</h1><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lacus turpis, ultrices sed pellentesque in, imperdiet non risus. Donec dignissim vehicula nisi sed faucibus. Donec pretium, magna ut tempor ultrices, justo felis sagittis erat, id sollicitudin est ante eu lectus. Fusce vehicula suscipit tortor, vel ornare est ultricies et.</p></div>
                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <div class="scrollpage" style='background-image: url(Image/banner/layered-saffron-rice.jpg);'>
                            <div class="caption"><h1>Coupons</h1><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p></div>
                        </div>
                    </asp:View>
                    <hr />
                </asp:MultiView></ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div id="announcements">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AlJebalConnectionString4 %>" 
                SelectCommand="SELECT * FROM [Announcements] ORDER BY [annPostDate] DESC"></asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="annID" 
                DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <div class="announcement alt">
                        <div class="head">
                        <asp:Label ID="annTitleLabel" runat="server" Text='<%# Eval("annTitle") %>' />
                        -
                        <asp:Label ID="annPostDateLabel" class="left" runat="server" 
                            Text='<%# Eval("annPostDate", "{0:MM/dd/yy h:mm tt}") %>' />
                        </div>
                        <p class="post">
                        <asp:Label ID="annContentLabel" runat="server" 
                            Text='<%# Eval("annContent") %>' />
                        <%# Eval("annImage").ToString()!="" ? "<hr />"+Eval("annImage") : "" %>
                        <br/>
                        <asp:Label ID="annAuthNameLabel" class="author" runat="server" 
                            Text='<%# "- "+Eval("annAuthName") %>' />
                        </p>
                        <%# Eval("annDate").ToString() != "" ? "<div class=\"date\">" + "<h3 class=\"month\">" + Eval("annDate", "{0:MMMM}") + "</h3>" + "<span class=\"day\">"+Eval("annDate", "{0:ddd dd}") +"</span>"+ "</div>" : ""%>
                    </div>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <div class="announcement">
                        <div class="head">
                        <asp:Label ID="annTitleLabel" runat="server" Text='<%# Eval("annTitle") %>' />
                        -
                        <asp:Label ID="annPostDateLabel" class="left" runat="server" 
                            Text='<%# Eval("annPostDate", "{0:MM/dd/yy h:mm tt}") %>' />
                        </div>
                        <p class="post">
                        <asp:Label ID="annContentLabel" runat="server" 
                            Text='<%# Eval("annContent") %>' />
                         <%# Eval("annImage").ToString()!="" ? "<hr />"+Eval("annImage") : "" %>
                        <br/>
                        <asp:Label ID="annAuthNameLabel" class="author" runat="server" 
                            Text='<%# "- "+Eval("annAuthName") %>' />
                        </p>
                        <%# Eval("annDate").ToString() != "" ? "<div class=\"date\">" + "<h3 class=\"month\">" + Eval("annDate", "{0:MMMM}") + "</h3>" + "<span class=\"day\">"+Eval("annDate", "{0:ddd dd}") +"</span>"+ "</div>" : ""%>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <div ID="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>


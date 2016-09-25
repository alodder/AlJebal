<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="survay.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Survey</h2>
    <table style="width: 100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Font-Underline="True" 
                    Text="Survay 1"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="Small" 
                    Text="Thank you for taking time to practice in our survey. Your opinion important Please, take your time ..."></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Age" runat="server" Text="How old are you? "></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:RadioButtonList ID="AgeRadioButtonList1" runat="server" Width="181px">
                    <asp:ListItem Value="5">15 or under</asp:ListItem>
                    <asp:ListItem Value="18">16-20</asp:ListItem>
                    <asp:ListItem Value="23">21-24</asp:ListItem>
                    <asp:ListItem Value="27">25-30</asp:ListItem>
                    <asp:ListItem Value="33">31-35</asp:ListItem>
                    <asp:ListItem Value="36">36-over</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="realtion" runat="server" Text="What it is your relation state?"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:RadioButtonList ID="realtionRadioButtonList2" runat="server">
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>In a relationship</asp:ListItem>
                    <asp:ListItem>Divorced or legally separated</asp:ListItem>
                    <asp:ListItem>Single </asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="decision" runat="server" 
                    Text="Are you the one how take decisions on your household?"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:RadioButtonList ID="decisionRadioButtonList3" runat="server">
                    <asp:ListItem Value="Yes">Yes, most of the time</asp:ListItem>
                    <asp:ListItem Value="SomeTime">Some time</asp:ListItem>
                    <asp:ListItem Value="No">No.</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Numpeople" runat="server" 
                    Text="How many people live in your household?"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="NumpeopleTextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Bedroom" runat="server" 
                    Text="How many bedrooms are there in your house? "></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="BedroomTextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="TimeOut" runat="server" 
                    Text="How many times you go out for to eat in a restaurant in month?"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TimeOutTextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="why" runat="server" 
                    
                    Text="Why do you go out for dinner or a lunch? choose the most one able to you."></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:RadioButtonList ID="WhyRadioButtonList1" runat="server">
                    <asp:ListItem Value="NO time to cook">I don&#39;t have time to Cook at home.</asp:ListItem>
                    <asp:ListItem Value="Try new food">I like to try different style of food</asp:ListItem>
                    <asp:ListItem Value=" In a trip.">I eat out when I’m in a trip.</asp:ListItem>
                    <asp:ListItem Value="friend ">I like to go out to eat with friend </asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="have_u" runat="server" 
                    Text="Have you ever tried Middleeastren food before?"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:RadioButtonList ID="have_uRadioButtonList1" runat="server" 
                    AutoPostBack="True" 
                    onselectedindexchanged="have_uRadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="Yes">Yes.</asp:ListItem>
                    <asp:ListItem Value="No">No.</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="What_kind" runat="server" 
                    Text="What kind of Middleeastren food  style have you tried?" 
                    EnableViewState="False" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:CheckBox ID="LebaneseCheckBox1" runat="server" Text="Lebanese" 
                    Visible="False" />
                <asp:CheckBox ID="Moroccanbox" runat="server" Text="Moroccan" Visible="False" />
                <asp:CheckBox ID="PersianCheckBox1" runat="server" Text="Persian" 
                    Visible="False" />
                <asp:CheckBox ID="GulfCheckBox1" runat="server" Text="Gulf" Visible="False" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Like_the_most" runat="server" 
                    Text="What kind of Middle eastren food do you like the most?" 
                    EnableViewState="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:RadioButtonList ID="Like_the_mostRadioButtonList1" runat="server" 
                    EnableViewState="False">
                    <asp:ListItem>lebanese</asp:ListItem>
                    <asp:ListItem>Morroccan</asp:ListItem>
                    <asp:ListItem>Persian</asp:ListItem>
                    <asp:ListItem>gulf</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="enjoy" runat="server" 
                    Text="What other type of food do you enjoy?"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:CheckBox ID="indianCheckBox1" runat="server" Text="indian" />
                <asp:CheckBox ID="italianbox" runat="server" Text="italian" />
                <asp:CheckBox ID="mexicanCheckBox1" runat="server" Text="mexican" />
                <asp:CheckBox ID="chineseCheckBox1" runat="server" Text="chinese" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="spicy" runat="server" Text="How spicy you like your food to be?"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="spicyDropDownList1" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>not spicy</asp:ListItem>
                    <asp:ListItem>Some what mileald spicy</asp:ListItem>
                    <asp:ListItem>spicy</asp:ListItem>
                    <asp:ListItem Value="Very">Very spicy</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="online" runat="server" Text="How often do order food online?"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:RadioButtonList ID="onlineRadioButtonList1" runat="server">
                    <asp:ListItem Value="0">Never</asp:ListItem>
                    <asp:ListItem Value="4 months">one time every 4 months</asp:ListItem>
                    <asp:ListItem>Few time a month</asp:ListItem>
                    <asp:ListItem>Few time a week</asp:ListItem>
                    <asp:ListItem>every day</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="cted" runat="server" Text="Do you want to be connected by us?"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Namee" runat="server" Text="Your Name" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style1">
                <asp:TextBox ID="Yourname" runat="server" 
                    Visible="False"></asp:TextBox>
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Phone" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="PhoneNum" runat="server" 
                    Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="email" runat="server" Text="email" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="youremail" runat="server" 
                    Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:AlJebalConnectionStringRvView %>" 
                    DeleteCommand="DELETE FROM [survey1] WHERE [Sumber] = @original_Sumber AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([What_it_is_your_relation_state] = @original_What_it_is_your_relation_state) OR ([What_it_is_your_relation_state] IS NULL AND @original_What_it_is_your_relation_state IS NULL)) AND (([Are_you_the_one_how_take_decisions_on_your_household] = @original_Are_you_the_one_how_take_decisions_on_your_household) OR ([Are_you_the_one_how_take_decisions_on_your_household] IS NULL AND @original_Are_you_the_one_how_take_decisions_on_your_household IS NULL)) AND (([How_many_people_live_in_your_household] = @original_How_many_people_live_in_your_household) OR ([How_many_people_live_in_your_household] IS NULL AND @original_How_many_people_live_in_your_household IS NULL)) AND (([NumberOFBedrooms] = @original_NumberOFBedrooms) OR ([NumberOFBedrooms] IS NULL AND @original_NumberOFBedrooms IS NULL)) AND (([How_many_times_you_goout_eat_restaurant_in_month] = @original_How_many_times_you_goout_eat_restaurant_in_month) OR ([How_many_times_you_goout_eat_restaurant_in_month] IS NULL AND @original_How_many_times_you_goout_eat_restaurant_in_month IS NULL)) AND (([Why_do_you_goout_for_dinner_lunch] = @original_Why_do_you_goout_for_dinner_lunch) OR ([Why_do_you_goout_for_dinner_lunch] IS NULL AND @original_Why_do_you_goout_for_dinner_lunch IS NULL)) AND (([Have_you_ever_tried_Middleeastren_food_before] = @original_Have_you_ever_tried_Middleeastren_food_before) OR ([Have_you_ever_tried_Middleeastren_food_before] IS NULL AND @original_Have_you_ever_tried_Middleeastren_food_before IS NULL)) AND (([Gulf] = @original_Gulf) OR ([Gulf] IS NULL AND @original_Gulf IS NULL)) AND (([Persian] = @original_Persian) OR ([Persian] IS NULL AND @original_Persian IS NULL)) AND (([Moroccan] = @original_Moroccan) OR ([Moroccan] IS NULL AND @original_Moroccan IS NULL)) AND (([Lebanese] = @original_Lebanese) OR ([Lebanese] IS NULL AND @original_Lebanese IS NULL)) AND (([What_kind_of_Middleeastren_food_you_liked_the_most] = @original_What_kind_of_Middleeastren_food_you_liked_the_most) OR ([What_kind_of_Middleeastren_food_you_liked_the_most] IS NULL AND @original_What_kind_of_Middleeastren_food_you_liked_the_most IS NULL)) AND (([chinese] = @original_chinese) OR ([chinese] IS NULL AND @original_chinese IS NULL)) AND (([mexican] = @original_mexican) OR ([mexican] IS NULL AND @original_mexican IS NULL)) AND (([italian] = @original_italian) OR ([italian] IS NULL AND @original_italian IS NULL)) AND (([indian] = @original_indian) OR ([indian] IS NULL AND @original_indian IS NULL)) AND (([How_spicy_you_like_your_food_to] = @original_How_spicy_you_like_your_food_to) OR ([How_spicy_you_like_your_food_to] IS NULL AND @original_How_spicy_you_like_your_food_to IS NULL)) AND (([How_often_do_order_food_online] = @original_How_often_do_order_food_online) OR ([How_often_do_order_food_online] IS NULL AND @original_How_often_do_order_food_online IS NULL)) AND (([Do_you_want_to_be_connected_by_us] = @original_Do_you_want_to_be_connected_by_us) OR ([Do_you_want_to_be_connected_by_us] IS NULL AND @original_Do_you_want_to_be_connected_by_us IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))" 
                    InsertCommand="INSERT INTO [survey1] ([Age], [What_it_is_your_relation_state], [Are_you_the_one_how_take_decisions_on_your_household], [How_many_people_live_in_your_household], [NumberOFBedrooms], [How_many_times_you_goout_eat_restaurant_in_month], [Why_do_you_goout_for_dinner_lunch], [Have_you_ever_tried_Middleeastren_food_before], [Gulf], [Persian], [Moroccan], [Lebanese], [What_kind_of_Middleeastren_food_you_liked_the_most], [chinese], [mexican], [italian], [indian], [How_spicy_you_like_your_food_to], [How_often_do_order_food_online], [Do_you_want_to_be_connected_by_us], [Name], [Phone], [Email]) VALUES (@Age, @What_it_is_your_relation_state, @Are_you_the_one_how_take_decisions_on_your_household, @How_many_people_live_in_your_household, @NumberOFBedrooms, @How_many_times_you_goout_eat_restaurant_in_month, @Why_do_you_goout_for_dinner_lunch, @Have_you_ever_tried_Middleeastren_food_before, @Gulf, @Persian, @Moroccan, @Lebanese, @What_kind_of_Middleeastren_food_you_liked_the_most, @chinese, @mexican, @italian, @indian, @How_spicy_you_like_your_food_to, @How_often_do_order_food_online, @Do_you_want_to_be_connected_by_us, @Name, @Phone, @Email)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [survey1]" 
                    UpdateCommand="UPDATE [survey1] SET [Age] = @Age, [What_it_is_your_relation_state] = @What_it_is_your_relation_state, [Are_you_the_one_how_take_decisions_on_your_household] = @Are_you_the_one_how_take_decisions_on_your_household, [How_many_people_live_in_your_household] = @How_many_people_live_in_your_household, [NumberOFBedrooms] = @NumberOFBedrooms, [How_many_times_you_goout_eat_restaurant_in_month] = @How_many_times_you_goout_eat_restaurant_in_month, [Why_do_you_goout_for_dinner_lunch] = @Why_do_you_goout_for_dinner_lunch, [Have_you_ever_tried_Middleeastren_food_before] = @Have_you_ever_tried_Middleeastren_food_before, [Gulf] = @Gulf, [Persian] = @Persian, [Moroccan] = @Moroccan, [Lebanese] = @Lebanese, [What_kind_of_Middleeastren_food_you_liked_the_most] = @What_kind_of_Middleeastren_food_you_liked_the_most, [chinese] = @chinese, [mexican] = @mexican, [italian] = @italian, [indian] = @indian, [How_spicy_you_like_your_food_to] = @How_spicy_you_like_your_food_to, [How_often_do_order_food_online] = @How_often_do_order_food_online, [Do_you_want_to_be_connected_by_us] = @Do_you_want_to_be_connected_by_us, [Name] = @Name, [Phone] = @Phone, [Email] = @Email WHERE [Sumber] = @original_Sumber AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([What_it_is_your_relation_state] = @original_What_it_is_your_relation_state) OR ([What_it_is_your_relation_state] IS NULL AND @original_What_it_is_your_relation_state IS NULL)) AND (([Are_you_the_one_how_take_decisions_on_your_household] = @original_Are_you_the_one_how_take_decisions_on_your_household) OR ([Are_you_the_one_how_take_decisions_on_your_household] IS NULL AND @original_Are_you_the_one_how_take_decisions_on_your_household IS NULL)) AND (([How_many_people_live_in_your_household] = @original_How_many_people_live_in_your_household) OR ([How_many_people_live_in_your_household] IS NULL AND @original_How_many_people_live_in_your_household IS NULL)) AND (([NumberOFBedrooms] = @original_NumberOFBedrooms) OR ([NumberOFBedrooms] IS NULL AND @original_NumberOFBedrooms IS NULL)) AND (([How_many_times_you_goout_eat_restaurant_in_month] = @original_How_many_times_you_goout_eat_restaurant_in_month) OR ([How_many_times_you_goout_eat_restaurant_in_month] IS NULL AND @original_How_many_times_you_goout_eat_restaurant_in_month IS NULL)) AND (([Why_do_you_goout_for_dinner_lunch] = @original_Why_do_you_goout_for_dinner_lunch) OR ([Why_do_you_goout_for_dinner_lunch] IS NULL AND @original_Why_do_you_goout_for_dinner_lunch IS NULL)) AND (([Have_you_ever_tried_Middleeastren_food_before] = @original_Have_you_ever_tried_Middleeastren_food_before) OR ([Have_you_ever_tried_Middleeastren_food_before] IS NULL AND @original_Have_you_ever_tried_Middleeastren_food_before IS NULL)) AND (([Gulf] = @original_Gulf) OR ([Gulf] IS NULL AND @original_Gulf IS NULL)) AND (([Persian] = @original_Persian) OR ([Persian] IS NULL AND @original_Persian IS NULL)) AND (([Moroccan] = @original_Moroccan) OR ([Moroccan] IS NULL AND @original_Moroccan IS NULL)) AND (([Lebanese] = @original_Lebanese) OR ([Lebanese] IS NULL AND @original_Lebanese IS NULL)) AND (([What_kind_of_Middleeastren_food_you_liked_the_most] = @original_What_kind_of_Middleeastren_food_you_liked_the_most) OR ([What_kind_of_Middleeastren_food_you_liked_the_most] IS NULL AND @original_What_kind_of_Middleeastren_food_you_liked_the_most IS NULL)) AND (([chinese] = @original_chinese) OR ([chinese] IS NULL AND @original_chinese IS NULL)) AND (([mexican] = @original_mexican) OR ([mexican] IS NULL AND @original_mexican IS NULL)) AND (([italian] = @original_italian) OR ([italian] IS NULL AND @original_italian IS NULL)) AND (([indian] = @original_indian) OR ([indian] IS NULL AND @original_indian IS NULL)) AND (([How_spicy_you_like_your_food_to] = @original_How_spicy_you_like_your_food_to) OR ([How_spicy_you_like_your_food_to] IS NULL AND @original_How_spicy_you_like_your_food_to IS NULL)) AND (([How_often_do_order_food_online] = @original_How_often_do_order_food_online) OR ([How_often_do_order_food_online] IS NULL AND @original_How_often_do_order_food_online IS NULL)) AND (([Do_you_want_to_be_connected_by_us] = @original_Do_you_want_to_be_connected_by_us) OR ([Do_you_want_to_be_connected_by_us] IS NULL AND @original_Do_you_want_to_be_connected_by_us IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Sumber" Type="Int32" />
                        <asp:Parameter Name="original_Age" Type="String" />
                        <asp:Parameter Name="original_What_it_is_your_relation_state" Type="String" />
                        <asp:Parameter Name="original_Are_you_the_one_how_take_decisions_on_your_household" 
                            Type="String" />
                        <asp:Parameter Name="original_How_many_people_live_in_your_household" 
                            Type="String" />
                        <asp:Parameter Name="original_NumberOFBedrooms" Type="String" />
                        <asp:Parameter Name="original_How_many_times_you_goout_eat_restaurant_in_month" 
                            Type="String" />
                        <asp:Parameter Name="original_Why_do_you_goout_for_dinner_lunch" 
                            Type="String" />
                        <asp:Parameter Name="original_Have_you_ever_tried_Middleeastren_food_before" 
                            Type="String" />
                        <asp:Parameter Name="original_Gulf" Type="String" />
                        <asp:Parameter Name="original_Persian" Type="String" />
                        <asp:Parameter Name="original_Moroccan" Type="String" />
                        <asp:Parameter Name="original_Lebanese" Type="String" />
                        <asp:Parameter Name="original_What_kind_of_Middleeastren_food_you_liked_the_most" 
                            Type="String" />
                        <asp:Parameter Name="original_chinese" Type="String" />
                        <asp:Parameter Name="original_mexican" Type="String" />
                        <asp:Parameter Name="original_italian" Type="String" />
                        <asp:Parameter Name="original_indian" Type="String" />
                        <asp:Parameter Name="original_How_spicy_you_like_your_food_to" Type="String" />
                        <asp:Parameter Name="original_How_often_do_order_food_online" Type="String" />
                        <asp:Parameter Name="original_Do_you_want_to_be_connected_by_us" 
                            Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="AgeRadioButtonList1" Name="Age" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="realtionRadioButtonList2" 
                            Name="What_it_is_your_relation_state" PropertyName="SelectedValue" 
                            Type="String" />
                        <asp:ControlParameter ControlID="decisionRadioButtonList3" 
                            Name="Are_you_the_one_how_take_decisions_on_your_household" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="NumpeopleTextBox1" 
                            Name="How_many_people_live_in_your_household" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="BedroomTextBox1" Name="NumberOFBedrooms" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TimeOutTextBox1" 
                            Name="How_many_times_you_goout_eat_restaurant_in_month" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="WhyRadioButtonList1" 
                            Name="Why_do_you_goout_for_dinner_lunch" PropertyName="SelectedValue" 
                            Type="String" />
                        <asp:ControlParameter ControlID="have_uRadioButtonList1" 
                            Name="Have_you_ever_tried_Middleeastren_food_before" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="GulfCheckBox1" Name="Gulf" 
                            PropertyName="Checked" Type="String" />
                        <asp:ControlParameter ControlID="PersianCheckBox1" Name="Persian" 
                            PropertyName="Checked" Type="String" />
                        <asp:ControlParameter ControlID="Moroccanbox" Name="Moroccan" 
                            PropertyName="Checked" Type="String" />
                        <asp:ControlParameter ControlID="LebaneseCheckBox1" Name="Lebanese" 
                            PropertyName="Checked" Type="String" />
                        <asp:ControlParameter ControlID="Like_the_mostRadioButtonList1" 
                            Name="What_kind_of_Middleeastren_food_you_liked_the_most" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="chineseCheckBox1" Name="chinese" 
                            PropertyName="Checked" Type="String" />
                        <asp:ControlParameter ControlID="chineseCheckBox1" Name="mexican" 
                            PropertyName="Checked" Type="String" />
                        <asp:ControlParameter ControlID="italianbox" Name="italian" 
                            PropertyName="Checked" Type="String" />
                        <asp:ControlParameter ControlID="indianCheckBox1" Name="indian" 
                            PropertyName="Checked" Type="String" />
                        <asp:ControlParameter ControlID="spicyDropDownList1" 
                            Name="How_spicy_you_like_your_food_to" PropertyName="SelectedValue" 
                            Type="String" />
                        <asp:ControlParameter ControlID="onlineRadioButtonList1" 
                            Name="How_often_do_order_food_online" PropertyName="SelectedValue" 
                            Type="String" />
                        <asp:ControlParameter ControlID="RadioButtonList1" 
                            Name="Do_you_want_to_be_connected_by_us" PropertyName="SelectedValue" 
                            Type="String" />
                        <asp:ControlParameter ControlID="Yourname" Name="Name" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="PhoneNum" Name="Phone" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="youremail" Name="Email" PropertyName="Text" 
                            Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Age" Type="String" />
                        <asp:Parameter Name="What_it_is_your_relation_state" Type="String" />
                        <asp:Parameter Name="Are_you_the_one_how_take_decisions_on_your_household" 
                            Type="String" />
                        <asp:Parameter Name="How_many_people_live_in_your_household" Type="String" />
                        <asp:Parameter Name="NumberOFBedrooms" Type="String" />
                        <asp:Parameter Name="How_many_times_you_goout_eat_restaurant_in_month" 
                            Type="String" />
                        <asp:Parameter Name="Why_do_you_goout_for_dinner_lunch" Type="String" />
                        <asp:Parameter Name="Have_you_ever_tried_Middleeastren_food_before" 
                            Type="String" />
                        <asp:Parameter Name="Gulf" Type="String" />
                        <asp:Parameter Name="Persian" Type="String" />
                        <asp:Parameter Name="Moroccan" Type="String" />
                        <asp:Parameter Name="Lebanese" Type="String" />
                        <asp:Parameter Name="What_kind_of_Middleeastren_food_you_liked_the_most" 
                            Type="String" />
                        <asp:Parameter Name="chinese" Type="String" />
                        <asp:Parameter Name="mexican" Type="String" />
                        <asp:Parameter Name="italian" Type="String" />
                        <asp:Parameter Name="indian" Type="String" />
                        <asp:Parameter Name="How_spicy_you_like_your_food_to" Type="String" />
                        <asp:Parameter Name="How_often_do_order_food_online" Type="String" />
                        <asp:Parameter Name="Do_you_want_to_be_connected_by_us" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="original_Sumber" Type="Int32" />
                        <asp:Parameter Name="original_Age" Type="String" />
                        <asp:Parameter Name="original_What_it_is_your_relation_state" Type="String" />
                        <asp:Parameter Name="original_Are_you_the_one_how_take_decisions_on_your_household" 
                            Type="String" />
                        <asp:Parameter Name="original_How_many_people_live_in_your_household" 
                            Type="String" />
                        <asp:Parameter Name="original_NumberOFBedrooms" Type="String" />
                        <asp:Parameter Name="original_How_many_times_you_goout_eat_restaurant_in_month" 
                            Type="String" />
                        <asp:Parameter Name="original_Why_do_you_goout_for_dinner_lunch" 
                            Type="String" />
                        <asp:Parameter Name="original_Have_you_ever_tried_Middleeastren_food_before" 
                            Type="String" />
                        <asp:Parameter Name="original_Gulf" Type="String" />
                        <asp:Parameter Name="original_Persian" Type="String" />
                        <asp:Parameter Name="original_Moroccan" Type="String" />
                        <asp:Parameter Name="original_Lebanese" Type="String" />
                        <asp:Parameter Name="original_What_kind_of_Middleeastren_food_you_liked_the_most" 
                            Type="String" />
                        <asp:Parameter Name="original_chinese" Type="String" />
                        <asp:Parameter Name="original_mexican" Type="String" />
                        <asp:Parameter Name="original_italian" Type="String" />
                        <asp:Parameter Name="original_indian" Type="String" />
                        <asp:Parameter Name="original_How_spicy_you_like_your_food_to" Type="String" />
                        <asp:Parameter Name="original_How_often_do_order_food_online" Type="String" />
                        <asp:Parameter Name="original_Do_you_want_to_be_connected_by_us" 
                            Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="zipcode" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="ZipTextBox1" runat="server" AutoPostBack="True" 
                    ontextchanged="ZipTextBox1_TextChanged" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="City" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="city" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="State" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="statbox" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="bteenter" runat="server" onclick="bteenter_Click" 
                    Text="Enter" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


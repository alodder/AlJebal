<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menuLayout.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<h1>Order</h1>
        <div id="menus">
        	<h2>Menu:</h2>
            <ul class="menu">
                <li class="menuitem">
                	<img src="App_Themes/Theme1/images/250/plate-1.png" />
                    <div>
                    	<h3>Plate</h3>
                        <p>This is an empty plate</p>$10.00
                    </div>
                    <button>Order</button>
                </li><hr />
                <li class="menuitem">
                	<img src="App_Themes/Theme1/images/250/plate-2.png" />
                    <div>
                    	<h3>Baked Lamb</h3>
                        <p>We start by choosing a young sheep from our farm in Dayton, Oregon. The lamb is then cut into small pieces and marinated overnight with our special mix of spices. Baked to perfection, just the story-tale ending for any sheep.</p>$11.99
                    </div>
                    <button>Order</button>
                </li><hr />
                <li class="menuitem">
                	<img src="App_Themes/Theme1/images/250/plate-1.png" />
                    <div>
                    	<h3>Plate</h3>
                        <p>This is an empty plate</p>$10.00
                    </div>
                    <button>Order</button>
                </li><hr />
                <li class="menuitem">
                	<img src="App_Themes/Theme1/images/250/plate-2.png" />
                    <div>
                    	<h3>Baked Lamb</h3>
                        <p>We start by choosing a young sheep from our farm in Dayton, Oregon. The lamb is then cut into small pieces and marinated overnight with our special mix of spices. Baked to perfection, just the story-tale ending for any sheep.</p>$11.99
                    </div>
                    <button>Order</button>
                </li>
            </ul>
         </div>
         <div id="order">
         	<h2>Your Order:</h2>
            <div class="menuitem">
                <img src="App_Themes/Theme1/images/100/plate-1.png" />
                <div>
                    <p>Plate $10.00</p>
                </div>
            </div>
            <br />
            <div class="menuitem">
                <img src="App_Themes/Theme1/images/100/plate-2.png" />
                <div>
                    <p>Baked Lamb $11.99<p>
                </div>
            </div>
            <h3>Total: $21.99</h3>
         </div>
</asp:Content>


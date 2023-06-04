<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="Admin_AdminPage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .MainContainer
        {
            height:100%;
            background-color:red;
        }
        .date{
            margin-left:5px;
        }
        h1{
             margin-left:5px;
        }
        .topSection
        {
display:flex;
            flex-wrap:nowrap;
            align-items:center;
            justify-content:space-between;
            margin-bottom:50px;
        }
        .MessageHead
        {
            font-size:20px;
            width:200px;
            font-weight:bolder;
            color:blue;
        }
        .MsgTable
        {
            background-color:white;
            width:280px;
        }
        .MsgBody
        {
 padding:20px;
 height:auto;

        }
        .bottomSection{
            display:flex;
            flex-wrap:nowrap;
            margin-left:20px;

        }
        .mainItem
        {
            margin-top:20px;
            margin-left:20px;
        }
        .SalesAnalysis{
            display:flex;
            flex-wrap:nowrap;
            align-items:center;
            justify-content:space-between;
            width:60%;
        }
        section
        {
            width:25%;
        }
        .TotalStock
        {
            display:flex;
            flex-direction:column;
            margin-top:1rem;
            background-color:white;
            padding:20px;
            width:200px;
            height:200px;
            border:2px solid double;
            border-radius:20px;
            box-shadow: 0px 5px 20px rgba(0,0,0,0.1);
        }
            .TotalStock:hover {
                box-shadow:none;
                transform:scale(1.2, 1.2);
                opacity:0.5;
                 transition:all 300ms ease;
            }
            .TotalStock span
            {  
                 line-height:50px;
                width:50px; 
                border-radius:50%;
                color:white;
                background-color:darkgreen;
                font-size:2rem;
            }
            .TotalStock span i{
                
               
                
                
            }
            .itemCenter{
                display:flex;
                align-items:center;
                justify-content:space-between;
                width:170px;
                height:150px;
               
               
            }
            .itemCenter .progress{
                position:relative;
                 
            }
                .itemCenter .progress svg {
                   
                    height:85px;
                    width:85px;
                }
                .itemCenter .progress circle{
                    fill:none;
                    stroke:green;
                    stroke-width:12;
                    stroke-linecap:round;
                    transform:translate(5px, 5px);
                    animation-name:circleRotate;
  animation-duration: 20s;
  animation-iteration-count:10;
                   /* stroke-dasharray:110;
                    stroke-dashoffset:92;*/
                }
                @keyframes circleRotate {
   0%   {stroke:red;}
  25%  {stroke:blue;}
  50%  {stroke:orangered;}
  100% {stroke:darkblue;}
}
                .num{
                    position:absolute;
                    top:35%;
                    right:35%;
                    font-size:23px;
                    font-weight:900;
                    color:ActiveCaption;
                }
        p
        {
            z-index:10;
        }
        /****Analytics*****/
        .salesAnalytics
        {
            margin-left:50px;
        }
        .ChartClassTwo {
            display:none;
        }
        .AnalyticsTemplates{
            margin-top:5px;
        }
        .TemplatesItems
        {
            position:relative;
            display:flex;
            align-items:center;
            justify-content:space-between;
            height:50px;
            width:300px;
            padding:30px 15px;
            border-radius:5px;
            margin-bottom:10px;
            background-color:white;
            box-shadow: 0px 5px 20px rgba(0,0,0,0.1);
        }
        .TemplatesItems i{
            
            color:white;
        }
         .TemplatesItems span{
            border-radius:50%;
            cursor:pointer;   
            background-color:green;
            line-height:2.5rem;
            height:2.5rem;
            width:2.5rem;
            text-align:center;
            font-size:1.0rem
         }
         .TemplatesItems span:hover
         {
             background-color:red;
         }
       
          @media (min-width:320px) and (max-width: 600px)  {
               h1{
             font-size:15px;
        }
               .SalesAnalysis {
            display:flex;
            flex-wrap:wrap;
            width: 100%;
        }
        .topSection {
            display:flex;
            flex-wrap:wrap;
            width: 100%;
        }
        .TotalStock
        {
            width:300px;
            height:150px;
            display:flex;
            flex-wrap:nowrap;
        }
        .TotalStock span {
            width:50px;
        }
       
        .itemCenter
        {
            width:250px;
            height:50px;
            display:flex;
            flex-wrap:nowrap;
        }
        .subTotalStock
        {
            display:flex;
            align-items:center;
            justify-content:space-around;
            width:150px;

        }
        .progress{
           margin-left:15px;
        }
      
      section
      {
          margin-left:20px;
          margin-top:20px;
          display:flex;
         
          flex-wrap:wrap;
      }
      
      .MessageHead p
      {
          width:200px;
      }
      .MsgTable
        {
            width:340px;
        }
      .bottomSection
      {
          display:flex;
          flex-wrap:wrap;
      }
       .salesAnalytics
        {
            margin-left:20px;
            margin-top:20px;
        }
       .ChartClassTwo
       {
           display:block;
       }
            .ChartClass {
                display: none;
            }
    }
           @media (min-width:768px) and (max-width: 1200px) {
           .topSection
        {
            display:flex;
            flex-wrap:wrap;
        }
           .SalesAnalysis {
            display:flex;
            flex-wrap:wrap;
            width: 90%;
            overflow-x:hidden;
        }
           .TotalStock
        {
            width:270px;
            height:150px;
             padding:10px;
        }
            .itemCenter
        {
            width:250px;
            height:60px;
            display:flex;
            flex-wrap:nowrap;
        }
           section
           {
               margin-left:20px;
               margin-top:20px;
           }
           .bottomSection
           {
               width: 90%;
               display:flex;
               flex-wrap:wrap;
               overflow-x:hidden;
           }
            .salesAnalytics {
                margin-left:20px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titlePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="adminPlaceHolder" Runat="Server">
    
        <h1>DashBoard</h1>
        <div class="date">
            Date: <%:DateTime.Now%>
        </div>
        <div class="topSection">
            <main class="mainItem">
        <div class="SalesAnalysis">
            <div class="TotalStock">
               <span><i class="fa fa-info-circle fa-lg"></i></span>
                 <div class="itemCenter">
                <div class="subTotalStock">
                    <h4>Total Views</h4>
                    <h1>2000</h1>
                </div>
                <div class="progress">
                    <svg>
                        <circle cx='38' cy='38' r='36'></circle>
                    </svg>
                     <div class="num">
                    <p>%</p>
                </div>
                </div>
               </div>
               <small class="mutedText">Lastest Updates</small>
            </div>
            <div class="TotalStock">
                <span><i class="fa fa-info-circle fa-lg"></i></span>
                 <div class="itemCenter">
                <div class="subTotalStock">
                    <h4>Total Stock</h4>
                    <h1>12000</h1>
                </div>
                <div class="progress">
                    <svg>
                        <circle cx='38' cy='38' r='36'></circle>
                    </svg>
                     <div class="num">
                    <p>%</p>
                </div>
                </div>
               </div>
                <small class="mutedText">Lastest Updates</small>
            </div>
            <div class="TotalStock">
                <span><i class="fa fa-info-circle fa-lg"></i></span>
                <div class="itemCenter">
                <div class="subTotalStock">
                    <h4>Total Sales Today</h4>
                    <h1>20</h1>
                </div>
                <div class="progress">
                    <svg>
                        <circle cx='38' cy='38' r='36'></circle>
                    </svg>
                     <div class="num">
                    <p>%</p>
                </div>
                </div>
                    </div>
               
                <small class="mutedText">Lastest Updates</small>
            </div>
            <div class="TotalStock">
                <span><i class="fa fa-info-circle fa-lg"></i></span>
                 <div class="itemCenter">
                <div class="subTotalStock">
                    <h4>Total WeekLy Sales</h4>
                    <h1>50</h1>
                </div>
                <div class="progress">
                    <svg>
                        <circle cx='38' cy='38' r='36'></circle>
                    </svg>
                    <div class="num">
                    <p>%</p>
                </div>
                </div>
                </div>
                <small class="mutedText">Lastest Updates</small>
            </div>
        </div>
    </main>
    
    <section>
        <div class="MessageHead">
        <p>Customer Messages</p>
           </div>
        <div class="subSection">
<asp:DataList ID="list" runat="server" ShowFooter="true" CssClass="MsgTable">
<ItemStyle CssClass="ReviewTable" />
<ItemTemplate>
    <div class="MsgBody">
<p>
Messages by:<strong>
    <br />
 <span style="color:brown"><i class="fa fa-user fa-lg"></i></span><%# Eval("Name") %></strong> </p>
    <br />
   <p>Email: <%# Eval("Email") %></P
    <br />
    <p>Phone No: <%# Eval("PhoneNo") %></p>

<br />
<p>Message:<i>
<%# Eval("Message") %></i>
</p>
    <%# String.Format("{0:D}", Eval("MsgDate")) %>
        </div>
</ItemTemplate>
<FooterTemplate>
</FooterTemplate>
</asp:DataList>
            </div>
    </section>
        
    </div>
    <div class="bottomSection">
        <div>
            <h2>Sales PieChart</h2>
    <asp:Panel ID="Panel1" runat="server" CssClass="ChartClass">
        <asp:Chart ID="Chart1" runat="server" Width="780px">  
        <Titles>  
        <asp:Title ShadowOffset="3" Name="Items" />  
    </Titles>  
    <Legends>  
        <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />  
    </Legends>  
    <Series>  
        <asp:Series Name="Default" />  
    </Series>  
    <ChartAreas>  
        <asp:ChartArea Name="ChartArea1" BorderWidth="0" />  
    </ChartAreas>  
    </asp:Chart>  
    </asp:Panel>
              <asp:Panel ID="Panel2" runat="server" CssClass="ChartClassTwo">
        <asp:Chart ID="Chart2" runat="server" Width="350px">  
        <Titles>  
        <asp:Title ShadowOffset="3" Name="Items" />  
    </Titles>  
    <Legends>  
        <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />  
    </Legends>  
    <Series>  
        <asp:Series Name="Default" />  
    </Series>  
    <ChartAreas>  
        <asp:ChartArea Name="ChartArea1" BorderWidth="0" />  
    </ChartAreas>  
    </asp:Chart>  
    </asp:Panel>
            </div>
        <div class="salesAnalytics">
            <h2>Sales Analytics</h2>
             <div class="AnalyticTemplates">
                 <div class="TemplatesItems">
                <span><i class="fa fa-shopping-cart fa-lg"></i></span>
                 <h4>Total Orders</h4>
                 <p>300+</p>
                     </div>
                 <div class="TemplatesItems">
                <span style="background-color:orangered"><i class="fa fa-tag fa-lg"></i></span>
                 <h4>Total MonthLy Sales</h4>
                 <p>200+</p>
                     </div>
                 <div class="TemplatesItems">
                <span style="background-color:darkblue"><i class="fas fa-calender-check">&#xf274;</i></span>
                 <h4>Total Quarterly Sales</h4>
                 <p>400+</p>
                     </div>
                 <div class="TemplatesItems">
                <span style="background-color:darkviolet"><i class="fas fa-calender-minus">&#xf272;</i></span>
                 <h4>Total Bi-Annual Sales</h4>
                 <p>800+</p>
                     </div>
                 <div class="TemplatesItems">
                <span style="background-color:darksalmon"><i class="fas fa-hourglass fa-lg"></i></span>
                 <h4>Total Yearly Sales</h4>
                 <p>1300+</p>
                     </div>
        </div>
    </div>
        </div>
</asp:Content>



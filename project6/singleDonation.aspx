<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="singleDonation.aspx.cs" Inherits="project6.WebForm10" %>
<%@ import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
         .main1 {
             margin-top: 50px;
             display: flex;
             flex-direction: column;
             justify-content: space-around;
             box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
             height: 600px
         }

         .dddd img {
             height: 500px;
             width: 500px;
             border-radius: 5%;
         }

         .counter {
             width: 150px;
             margin: auto;
             display: flex;
             align-items: center;
             justify-content: center;
             position: absolute;
             left: 0%;
             bottom: 20%;
         }


             .counter input {
                 width: 50px;
                 border: 0;
                 line-height: 30px;
                 font-size: 20px;
                 text-align: center;
                 background: #82B0CA;
                 color: #fff;
                 appearance: none;
                 outline: 0;
             }

             .counter span {
                 display: block;
                 font-size: 25px;
                 padding: 0 10px;
                 cursor: pointer;
                 color: #82B0CA;
                 user-select: none;
             }
     </style>
   <%
       string user_id = Request.QueryString["user_id"];
       string category_id = Request.QueryString["donation_id"];
       string donation_id = Request.QueryString["donation_id"];
       SqlConnection connection = new SqlConnection("data source =  DESKTOP-KG1IER4\\SQLEXPRESS; database = project6 ; integrated security=SSPI");

       connection.Open();
       string query = $"select * from donation where id_donation= {donation_id}";
       SqlCommand com = new SqlCommand(query, connection);
       SqlDataReader sdr = com.ExecuteReader();
       sdr.Read();
       %>
    
    <div class="main1 container">
        <div class="dddd">
            <div class="col-lg-6">
                 <img src="<%=sdr[2] %>"">
            </div>
         
            <div class="col-lg-6">
                <h1><%=sdr[1] %></h1>
                <br />
                <p><%=sdr[3] %></p>
                <p>Select from available quantity</p>
                <div class="counter">
                    <span class="down" onclick='decreaseCount(event, this)'>-</span>
                    <input id="county" type="text" value="1" runat="server" />
                    <span class="up" onclick='increaseCount(event, this)'>+</span>
                </div>
             <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" OnClick="Button1_Click" class="btn btn-success" runat="server" Text="Request" />
            </div>
        </div>
    </div>
    <script>
        var x = <%=sdr[4] %>;
        function increaseCount(a, b) {
            var input = b.previousElementSibling;
            var value = parseInt(input.value, 10);
            value = isNaN(value) ? 0 : value;
            if (value < x) {
                value++;
            }
            input.value = value;
        }

        function decreaseCount(a, b) {
            var input = b.nextElementSibling;
            var value = parseInt(input.value, 10);
            if (value > 1) {
                value = isNaN(value) ? 0 : value;
                value--;
                input.value = value;
            }
        }
    </script>
</asp:Content>

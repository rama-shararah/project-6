<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donation-tree.aspx.cs" Inherits="project6.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .save {
            display: grid;
            grid-template-columns: auto auto;
            /* background-color:green;*/

            background-image: url(imgs/aerial-view-green-forest.jpg);
            height: 760px;
            width: 100%;
            background-size: cover;
            background-position: center;
        }

            .save img {
                height: 500px;
                margin-top: 150px;
            }

        .txt {
            color: aliceblue;
            font-size: 18px;
        }

            .txt h2 {
                font-weight: 900;
                color: orangered;
                text-align: center;
            }

        .card {
        }

        .a-box {
            display: inline-block;
            width: 240px;
            text-align: center;
            margin: 20px;
        }

        .img-container {
            height: 230px;
            width: 200px;
            overflow: hidden;
            border-radius: 0px 0px 20px 20px;
            display: inline-block;
        }

            .img-container img {
                transform: skew(0deg, -13deg);
                height: 250px;
                margin: -35px 0px 0px -70px;
            }

        .inner-skew {
            display: inline-block;
            border-radius: 20px;
            overflow: hidden;
            padding: 0px;
            transform: skew(0deg, 13deg);
            font-size: 0px;
            margin: 30px 0px 0px 0px;
            background: #c8c2c2;
            height: 250px;
            width: 200px;
        }

        .text-container {
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
            padding: 120px 20px 20px 20px;
            border-radius: 20px;
            background: #fff;
            margin: -120px 0px 0px 0px;
            line-height: 19px;
            font-size: 14px;
        }

            .text-container h3 {
                margin: 20px 0px 10px 0px;
                color: #04bcff;
                font-size: 18px;
            }

        div.cards {
            margin: 20px auto;
            max-width: 960px;
            text-align: center;
        }

        .mainimg {
            height: 300px;
            width: 100%;
            background-size: cover;
            background-position: center;
            background-image: url("imgs/forest-1598756_1920.jpg");
        }

        .text-image {
        }

        .h1-DONATIONS h1 {
            text-align: center;
            color: #1A4D2E;
            font-weight: 600;
        }

        .imgcard {
            width: 100%;
            height: 300px;
        }
    </style>
    <div class="mainimg">
        <div class="text-image">
        </div>
    </div>
    <div class="h1-DONATIONS">
        <h1>DONATIONS</h1>
    </div>
    <br />
    <%--<div class="container" id="container" runat="server">

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>--%>

    <div class="cards">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [donation] WHERE ([id_category] = @id_category) and donation.Accept=1">
            <SelectParameters>
                <asp:QueryStringParameter Name="id_category" QueryStringField="category_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <% string category_id = Request.QueryString["category_id"];%>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>


                <div class="a-box">
                    <div class="img-container">
                        <div class="img-inner">
                            <div class="inner-skew">
                                <img src="<%#Eval("img_donation")%>">
                            </div>
                        </div>
                    </div>
                    <div class="text-container">
                        <h3><%#Eval("name_donation")%></h3>
                        <div>
                        </div>
                        <div class="card-flap flap2">
                            <div class="card-actions">
                                <a href="singleDonation.aspx?donation_id=<%#Eval("id_donation")%>">Show more</a>

                            </div>
                        </div>
                    </div>

                </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>




    <div class="save">
        <div class="pic">

            <img src="imgs/ecology-design_25030-21504.png" />
        </div>
        <div class="txt">
            <h2>The Problem</h2>
            <p>
                The Problem
Every day, biologically diverse forests are either destroyed altogether, or converted to tree plantations, releasing massive amounts of carbon from cutting down trees and disturbing the soil. Deforestation accounts for 25% of global carbon emissions caused from human activities. Once used, discarded paper products are not recovered as effectively as they could be, leading to significant loss of fiber which could have been used to make new products and could help reduce greenhouse gas emissions. Paper and wood products account for over a quarter of all solid waste in US landfills, releasing methane while they decompose. In an increasingly digital world, we are still using paper at a rate that is devastating for our forests and the climate. It's estimated that in the US alone, we use 800 million pounds of paper every day.

In some cases, paper and pulp companies violate the land rights of indigenous peoples and rural communities. The tree pulp for paper comes from places around the world where egregious land violations have taken place, including Indonesia, as well as large parts of South America. Manufacturing paper products also pollutes local water sources and the air. Recycled paper protects land, is less polluting than virgin paper, and reduces negative impacts on communities.
            </p>
            <h2>Save Trees</h2>

            Recycled paper is proven to save trees: using less tree fiber, fresh water, energy, and producing less waste than traditional virgin fiber paper. One ton of magazine paper made from virgin fiber requires fifteen trees. Those trees can remain in the ground if we widely and effectively increase our use of recycled paper. The Better Paper Project's overall goal is to see a reduction in our consumption of paper products. However, we promote the use of "better paper" when necessary, meaning high recycled content and certified by Forest Stewardship Council.

Better Paper Project is also proud to represent Green America on the Environmental Paper Network (EPN), an alliance of organizations working to address challenges and opportunities for social justice and conservation presented by the expanding forest, pulp, and paper industry.
        </div>
    </div>
</asp:Content>

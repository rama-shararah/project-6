<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project6.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
        body {
            background-image: url("12.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        #divcon {
            width: 100%;
            background-color: black;
            opacity: 0.5;
            color: white;
            font-size: 17px;
        }

            #divcon:hover {
                opacity: 0.7;
            }

        .DropDownstyle {
            width: 200px;
            height: 30px;
            color: black;
        }
    </style>
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div id="divcon" class="form-horizontal">
        <br />
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Textname" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Textname"
                    CssClass="text-danger" ErrorMessage="The Name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." /><br />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Textphone" CssClass="col-md-2 control-label">phone</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Textphone" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Textphone"
                    CssClass="text-danger" ErrorMessage="The phone field is required." />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textphone" ErrorMessage="Enter Phone Number" ForeColor="Red" ValidationExpression="\b(?&lt;!.)\d+(?!.)\b"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label">City</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="DropDownstyle">
                    <asp:ListItem>Irbid</asp:ListItem>
                    <asp:ListItem>Amman</asp:ListItem>
                    <asp:ListItem>Alzarqa</asp:ListItem>
                    <asp:ListItem>AlMafraq</asp:ListItem>
                    <asp:ListItem>Jarash</asp:ListItem>
                    <asp:ListItem>Al Balqa'</asp:ListItem>
                    <asp:ListItem>Madaba</asp:ListItem>
                    <asp:ListItem>Al Karak</asp:ListItem>
                    <asp:ListItem>Al Tafilah</asp:ListItem>
                    <asp:ListItem>Ma'an</asp:ListItem>
                    <asp:ListItem>AlA'qabah</asp:ListItem>
                    <asp:ListItem>Ajlun</asp:ListItem>
                </asp:DropDownList>
                <%--                <asp:TextBox runat="server" ID="Textcity" CssClass="form-control"  />--%>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownList1"
                    CssClass="text-danger" ErrorMessage="The city field is required." />
                <br />
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label">Registeration with : </asp:Label>
            <div class="col-md-10">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="3">beneficiary</asp:ListItem>
                    <asp:ListItem Value="2">donor</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
        <br />
    </div>
</asp:Content>

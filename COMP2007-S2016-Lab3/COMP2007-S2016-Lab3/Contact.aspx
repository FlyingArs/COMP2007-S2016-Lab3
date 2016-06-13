<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="COMP2007_S2016_Lab3.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Contact Us</h1>
                <div class="form-group">
                    <label class="control-label" for="FirstNameTextBox">First Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" id="FirstNameTextBox" placeholder="First Name" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert-danger" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name Is Required" ControlToValidate="FirstNameTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="LastNameTextBox">Last Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" id="LastNameTextBox" placeholder="Last Name" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert-danger" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name Is Required" ControlToValidate="LastNameTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>
                 <div class="form-group">
                    <label class="control-label" for="EmailTextBox">Email</label>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" id="EmailTextBox" placeholder="Email" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert-danger" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Is Required" ControlToValidate="EmailTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                 </div>
                <div class="form-group">
                    <label class="control-label" for="ContactNumberTextBox">Contact Number</label>
                    <asp:TextBox runat="server" TextMode="Phone" CssClass="form-control" id="ContactNumberTextBox" placeholder="Contact Number" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert-danger" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact Number Is Required" ControlToValidate="ContactNumberTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>               
                </div>
                 <div class="form-group">
                    <label class="control-label" for="MesssageTextBox">Message TextBox</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" Columns="3" Rows="3" CssClass="form-control" id="MessageTextBox" placeholder="Your Message goes here..." required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert-danger" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Message Is Required" ControlToValidate="MessageTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                 </div>
                <div class="text-right">
                    <!--<asp:Button runat="server" CssClass="btn btn-warning btn-lg" ID="CancelButton" Text="Cancel" OnClick="CancelButton_Click" />-->
                    <a class="btn btn-warning btn-lg" id="CancelButton" href="Default.aspx">Cancel</a>
                    <asp:Button runat="server" CssClass="btn btn-primary btn-lg" ID="SendButton" Text="Send" OnClick="SendButton_Click" CausesValidation="true" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

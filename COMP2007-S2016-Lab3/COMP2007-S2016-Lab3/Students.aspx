<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="COMP2007_S2016_Lab3.Students" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Student List</h1>
                <asp:GridView runat="server" cssClass="table table-bordered table-stripped talbe-hover"
                    ID="StudentsGridView" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField datafield="StudentID" HeaderText="Student ID" Visible="true" />
                        <asp:BoundField datafield="LastName" HeaderText="Last Name" Visible="true" />
                        <asp:BoundField datafield="FirstMidName" HeaderText="First Name" Visible="true" />
                        <asp:BoundField datafield="EnrollmentDate" HeaderText="Enrollment Date" Visible="true"
                            DataFormatString="{0:MMM dd, yyyy}" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </div>

</asp:Content>

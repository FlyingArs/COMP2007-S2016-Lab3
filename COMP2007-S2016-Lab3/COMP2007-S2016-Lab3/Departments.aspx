<%@ Page Title="Departments" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="COMP2007_S2016_Lab3.Departments" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
       <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Deparments List</h1>
                <asp:GridView runat="server" cssClass="table table-bordered table-stripped talbe-hover"
                    ID="DepartmentsGridView" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField datafield="DepartmentID" HeaderText="Department ID" Visible="true" />
                        <asp:BoundField datafield="Name" HeaderText="Name" Visible="true" />
                        <asp:BoundField datafield="Budget" HeaderText="Budget" Visible="true"
                            DataFormatString="{0:C}" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </div>

</asp:Content>

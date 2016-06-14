using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//using statements required for EF DB access
using COMP2007_S2016_Lab3.Models;
using System.Web.ModelBinding;

namespace COMP2007_S2016_Lab3
{
    public partial class DepartmentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!IsPostBack) && (Request.QueryString.Count > 0))
            {
                this.GetDepartment();
            }
        }


        protected void GetDepartment()
        {
            // populate the form with existing student data from the db
            int DepartmentID = Convert.ToInt32(Request.QueryString["DepartmentID"]);

            // connect to the EF DB
            using (DefaultConnection db = new DefaultConnection())
            {
                // populate a student instance with the StudentID from the URL parameter
                Department updatedDepartment = (from department in db.Departments
                                             where department.DepartmentID == DepartmentID
                                          select department).FirstOrDefault();

                // map the student properties to the form controls
                if (updatedDepartment != null)
                {
                    NameTextBox.Text = updatedDepartment.Name;
                    BudgetTextBox.Text = Convert.ToString(updatedDepartment.Budget);
                }
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            //Redirect to Departments Page
            Response.Redirect("~/Departments.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            //Use EF to connect to  the server
            using (DefaultConnection db = new DefaultConnection())
            {
                //use the Student model to create a new student object and
                //save a new record
                Department newDepartment = new Department();

                int DepartmentID = 0;

                if (Request.QueryString.Count > 0)
                {
                    // get the id from url
                    DepartmentID = Convert.ToInt32(Request.QueryString["DepartmentID"]);

                    // get the current student from EF DB
                    newDepartment = (from department in db.Departments
                                  where department.DepartmentID == DepartmentID
                                  select department).FirstOrDefault();
                }

                //add form data to the new student record
                newDepartment.Name = NameTextBox.Text;
                newDepartment.Budget = Convert.ToDecimal(BudgetTextBox.Text);

                //use LINQ to ADO.NET to add / insert new student into the database
                db.Departments.Add(newDepartment);

                //save changes
                db.SaveChanges();

                //Redirect back to the updated students page
                Response.Redirect("~/Departments.aspx");
            }
        }
    }
}
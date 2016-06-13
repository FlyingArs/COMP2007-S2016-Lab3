using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//using statements required to connect to the EF database
using COMP2007_S2016_Lab3.Models;
using System.Web.ModelBinding;

namespace COMP2007_S2016_Lab3
{
    public partial class Departments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if loading the page for the first time, populate the students grid
            if (!IsPostBack)
            {
                //get the student data
                this.GetDepartments();
            }
        }

        /**
  * <summary>
  * This method gets the student data from the DB
  * </summary>
  *
  * @method GetStudents
  * @returns {void}
  */
        protected void GetDepartments()
        {
            //connect to EF
            using (DefaultConnection db = new DefaultConnection())
            {
                //query the Students Table using EF and LINQ
                var Departments = (from allDepartments in db.Departments
                                select allDepartments);

                //bind the result to the GridView
                DepartmentsGridView.DataSource = Departments.ToList();
                DepartmentsGridView.DataBind();
            }
        }
    }
}
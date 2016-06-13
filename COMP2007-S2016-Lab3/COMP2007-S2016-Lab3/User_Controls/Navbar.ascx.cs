using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/**
 * @author: David Yu
 * @date: May 27, 2016
 * @version: 0.0.2 - updated the SetActivePage Method
 */

namespace COMP2007_S2016_Lab3
{
    public partial class Navbar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetActivePage();
        }
        /**
         * This method adds a css class of "active" to list items related
         * to navigation links of each page
         *
         * @method SetActivePage
         * @return {void}
         */

        private void SetActivePage()
        {
            switch (Page.Title)
            {
                case "Home Page":
                    home.Attributes.Add("class", "active");
                    break;
                case "Students":
                    students.Attributes.Add("class", "active");
                    break;
                case "courses":
                    courses.Attributes.Add("class", "active");
                    break;
                case "Departments":
                    departments.Attributes.Add("class", "active");
                    break;
                case "Contact":
                    contact.Attributes.Add("class", "active");
                    break;
            }
        }
    }
}
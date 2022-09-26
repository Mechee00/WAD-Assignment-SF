using System;
using System.Collections.Generic;
using System.EnterpriseServices.Internal;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Assignment_SF.account
{
    public partial class profile_field : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public TextBox txtFullName { get; set; }
        public TextBox txtUserName { get; set; }
        public TextBox txtContact { get; set; }
        public TextBox txtEmail { get; set; }
        public TextBox txtPwd { get; set; }
        public TextBox txtCfmPwd { get; set; }
        public RadioButtonList radBtnGender { get; set; }
        public TextBox txtDoB { get; set; }
        public TextBox txtUnit { get; set; }
        public TextBox txtBuilding { get; set; }
        public TextBox txtStreet { get; set; }
        public TextBox txtPostcode { get; set; }
        public DropDownList droplstState { get; set; }
        public CompareValidator CompareValidator1 { get; set; }
        public ValidationSummary vldtSumUpdate { get; set; }

}
}
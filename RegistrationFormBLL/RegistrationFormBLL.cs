//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;

//namespace REST
//{
//    public class RegistrationFormBLL
//    {
//        RegistrationFormDAL objdal = new RegistrationFormDAL();
//        public void Insertdetails(string txtUsername, bool MaleChecked, bool FemaleChecked, string txtPassword, string txtConfirmPassword, string txtEmail)
//        {
//            try
//            {
//                string gender = string.Empty;
//                if (MaleChecked)
//                {
//                    gender = "male";
//                }
//                else if (FemaleChecked)
//                {
//                    gender = "female";
//                }
//                objdal.Insertdetails(txtUsername, gender, txtPassword, txtConfirmPassword, txtEmail);
//            }
//            catch (Exception ex)
//            {
//                throw (ex);
//            }
//        }
//    }
//}
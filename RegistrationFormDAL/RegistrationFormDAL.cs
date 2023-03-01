//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Data.SqlClient;
//using System.Data;
//using System.Configuration;

//namespace REST
//{
//    public class RegistrationFormDAL
//    {

//        public void Insertdetails(string txtUsername, string gender, string txtPassword, String txtConfirmPassword, string txtEmail)
//        {
//            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString);
//            {
//                try
//                {
//                    conn.Open();
//                    SqlCommand cmd = new SqlCommand("User_values1", conn);
//                    cmd.CommandType = CommandType.StoredProcedure;

//                    cmd.Parameters.AddWithValue("@UserName", txtUsername);
//                    cmd.Parameters.AddWithValue("@Gender", gender);
//                    cmd.Parameters.AddWithValue("@crePassword", txtPassword);
//                    cmd.Parameters.AddWithValue("@ConfirmPassword", txtConfirmPassword);
//                    cmd.Parameters.AddWithValue("@EmailID", txtEmail);



//                    cmd.ExecuteNonQuery();
//                    conn.Close();
//                }
//                catch (Exception ex)
//                {
//                    throw (ex);
//                }
//            }
//        }
//    }
//}

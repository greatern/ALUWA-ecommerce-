using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aluwa3.ServiceReference1;

namespace Aluwa3
{
    public partial class admin : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string price = txtPrice.Text;
            string Description = txtDescription.Text;
            string Category = txtCategory.Text;
            string stock = txtStock.Text;
            string image = txtimage.Text;
            if (!int.TryParse(txtStock.Text, out var stockValue))
            {
                Label1.Text = "Invalid stock format.";
                return; // Exit the method if parsing fails
            }

            string priceText = txtPrice.Text.Replace("R", "").Trim();

            if (!decimal.TryParse(priceText, out decimal parsedPrice))
            {
                Label1.Text = "Invalid price format.";
                return; // Exit the method if parsing fails
            }

            bool isAdded = sc.addProduct(name, Category, Description, Double.Parse(price), int.Parse(stock),image);
          

            if (isAdded.Equals(true))
            {
                Label1.Text = "Product added. <a href='Home.aspx'>Click here to return to Home Page</a>";
            }
            else
            {
                Label1.Text = "Product exists.";
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(GridView1.SelectedDataKey.Value);
            //string name = txtName.Text;
            //string price = txtPrice.Text;
            //string description = txtDescription.Text;

            //string query = "UPDATE Products SET Name=@Name, Price=@Price, Description=@Description WHERE ID=@ID";
            //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProductDB"].ConnectionString))
            //{
            //    using (SqlCommand cmd = new SqlCommand(query, conn))
            //    {
            //        cmd.Parameters.AddWithValue("@ID", id);
            //        cmd.Parameters.AddWithValue("@Name", name);
            //        cmd.Parameters.AddWithValue("@Price", price);
            //        cmd.Parameters.AddWithValue("@Description", description);
            //        conn.Open();
            //        cmd.ExecuteNonQuery();
            //        conn.Close();
            //    }
            //}
            //lblMessage.Text = "Product updated successfully!";
            //BindGrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(GridView1.SelectedDataKey.Value);
            //string query = "SELECT * FROM Products WHERE ID=@ID";
            //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProductDB"].ConnectionString))
            //{
            //    using (SqlCommand cmd = new SqlCommand(query, conn))
            //    {
            //        cmd.Parameters.AddWithValue("@ID", id);
            //        conn.Open();
            //        SqlDataReader reader = cmd.ExecuteReader();
            //        if (reader.Read())
            //        {
            //            txtName.Text = reader["Name"].ToString();
            //            txtPrice.Text = reader["Price"].ToString();
            //            txtDescription.Text = reader["Description"].ToString();
            //        }
            //        conn.Close();
            //    }
            //}
        }

        private void BindGrid()
        {
            //string query = "SELECT * FROM Products";
            //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProductDB"].ConnectionString))
            //{
            //    using (SqlDataAdapter sda = new SqlDataAdapter(query, conn))
            //    {
            //        DataTable dt = new DataTable();
            //        sda.Fill(dt);
            //        GridView1.DataSource = dt;
            //        GridView1.DataBind();
            //    }
            //}
        }
    }
}
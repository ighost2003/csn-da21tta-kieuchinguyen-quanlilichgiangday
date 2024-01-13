using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace QLLGD
{
    public partial class frmUser : Form
    {
        SqlConnection sql = new SqlConnection("Data Source = DESKTOP-UMUNA1R; Initial Catalog= QLGD; User Id=sa; Password = 123 ");
        DataSet ds_ND;
        SqlDataAdapter da_ND;

        public frmUser()
        {
            InitializeComponent();
            LoadData();
        }

        private void LoadData()
        {
            string query = "SELECT * FROM ND";
            ds_ND = new DataSet();
            da_ND = new SqlDataAdapter(query, sql);
            da_ND.Fill(ds_ND, "ND");

            dataGridView1.DataSource = ds_ND.Tables["ND"];
            databinding();
        }

        private void databinding()
        {
            txtTaikhoan.DataBindings.Clear();
            txtMatkhau.DataBindings.Clear();
            txtManhom.DataBindings.Clear();

            txtTaikhoan.DataBindings.Add("Text", dataGridView1.DataSource, "taikhoan");
            txtMatkhau.DataBindings.Add("Text", dataGridView1.DataSource, "pass");
            txtManhom.DataBindings.Add("Text", dataGridView1.DataSource, "manhom");
        }

        private void frmUser_Load(object sender, EventArgs e)
        {
            LoadData(); // You can move this line to the constructor
        }
    }
}

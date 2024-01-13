using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace QLLGD
{
    public partial class frmPCGD : Form
    {
        public int UserStatus { get; set; }
        
        SqlConnection conn;
        SqlDataAdapter da_PCGD;
        DataSet ds_PCGD;
        public frmPCGD(int userStatus)
        {
            InitializeComponent();
            this.UserStatus = userStatus;
            UpdateButton3Status();
            string strConnect = "Data Source = DESKTOP-UMUNA1R; Initial Catalog= QLGD; User Id=sa; Password = 123 ";
            conn = new SqlConnection(strConnect);
            DataTable dt_ND = new DataTable();
            ds_PCGD = new DataSet();
            string sql = "select*from XemPhanCong";
            da_PCGD = new SqlDataAdapter(sql, conn);

            //dt_ND=db.getDataTable(str);
            da_PCGD.Fill(ds_PCGD, "PCGD");
        }
        private void UpdateButton3Status()
        {

            // Tùy thuộc vào giá trị UserStatus, bạn có thể enable hoặc disable button3
            if (UserStatus == 1)
            {
                button3.Enabled = true;  // Enable button3 khi UserStatus là 1
            }
            else
            {
                button3.Enabled = false;  // Disable button3 khi UserStatus không phải là 1
            }
        }
        private void frm_phancongGD_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = ds_PCGD.Tables["PCGD"];

        }



        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            string tenGiangVienCanTim = textBox2.Text.Trim();

            // Kiểm tra xem textbox có rỗng hay không
            if (string.IsNullOrEmpty(tenGiangVienCanTim))
            {
                // Hiển thị toàn bộ dữ liệu trong DataGridView
                dataGridView1.DataSource = ds_PCGD.Tables["PCGD"];
                return;
            }

            // Thực hiện tìm kiếm trong DataTable với tên giảng viên chứa trong cột "tengv"
            DataRow[] dongTimThay = ds_PCGD.Tables["PCGD"].Select($"tengv LIKE '%{tenGiangVienCanTim}%'");

            // Kiểm tra xem có bao nhiêu dòng được tìm thấy
            if (dongTimThay.Length > 0)
            {
                // Tạo một DataTable mới để chứa dữ liệu tìm kiếm
                DataTable dtTimKiem = dongTimThay.CopyToDataTable();

                // Hiển thị dữ liệu tìm kiếm trong DataGridView
                dataGridView1.DataSource = dtTimKiem;
            }
            else
            {
                MessageBox.Show("Không tìm thấy giảng viên.", "Kết quả tìm kiếm", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            // Kiểm tra xem có dòng nào được chọn trong DataGridView không
            if (dataGridView1.SelectedRows.Count > 0)
            {
                // Lấy chỉ số của dòng được chọn
                int selectedRowIndex = dataGridView1.SelectedRows[0].Index;

                // Lấy giá trị trong cột "maPCGD" của dòng được chọn
                string maPCGDToDelete = Convert.ToString(dataGridView1.Rows[selectedRowIndex].Cells["maPCGD"].Value);

                // Tạo câu truy vấn SQL để xóa dòng từ cơ sở dữ liệu
                string deleteQuery = $"DELETE FROM PCGD WHERE maPCGD = '{maPCGDToDelete}'";

                // Thực hiện truy vấn xóa
                string connectionString = "Data Source=DESKTOP-UMUNA1R;Initial Catalog=QLGD;User Id=sa;Password=123";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(deleteQuery, connection))
                    {
                        command.ExecuteNonQuery();
                    }
                }

                // Hiển thị lại dữ liệu trong DataGridView
                LoadDataIntoDataGridView();
            }
            else
            {
                MessageBox.Show("Vui lòng chọn dòng cần xóa.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void LoadDataIntoDataGridView()
        {
            // Tải lại dữ liệu từ cơ sở dữ liệu và hiển thị trong DataGridView
            // Đặt lại nguồn dữ liệu cho DataGridView sau khi xóa và cập nhật
            string connectionString = "Data Source=DESKTOP-UMUNA1R;Initial Catalog=QLGD;User Id=sa;Password=123";
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM PCGD", connectionString);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            dataGridView1.DataSource = dataTable;
        }

    }
}

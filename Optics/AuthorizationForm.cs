using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Optics
{
    public partial class AuthorizationForm : Form
    {
        public AuthorizationForm()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Вы действительно хотите выйти?", "Предупреждение", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (dialogResult == DialogResult.Yes)
            {
                Environment.Exit(0);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("Пожалуйста, заполните все поля.", "Внимание", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                if (textBox1.Text == "admin")
                {
                    if (textBox2.Text == "admin")
                    {
                        MessageBox.Show("Успешная авторизация!", "Сообщение пользователю", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        ImportDataForm importData = new ImportDataForm();
                        this.Visible = false;
                        importData.ShowDialog();
                        this.Close();
                    }
                    else
                    {
                        MessageBox.Show("Ошибка авторизации! Неверный логин или пароль.", "Сообщение пользователю", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        textBox1.Clear();
                        textBox2.Clear();
                        button1.Enabled = false;
                        button1.Visible = false;
                        button4.Visible = true;
                        pictureBox3.Visible = true;
                        textBox3.Visible = true;
                        button3.Visible = true;
                        GenerateCaptcha();
                        textBox3.Clear();
                        return;
                    }
                }
                try
                {
                    Authorization();
                }
                catch (Exception)
                {
                    MessageBox.Show("Ошибка авторизации! Такого пользователя не существует!", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    textBox1.Clear();
                    textBox2.Clear();
                    button1.Enabled = false;
                    button1.Visible = false;
                    button4.Visible = true;
                    pictureBox3.Visible = true;
                    textBox3.Visible = true;
                    button3.Visible = true;
                    GenerateCaptcha();
                    textBox3.Clear();
                }
            }
        }
        string GetHashPass(string password)
        {
            using (var sh = SHA256.Create())
            {
                var shbyte = sh.ComputeHash(Encoding.UTF8.GetBytes(password));
                password = BitConverter.ToString(shbyte).Replace("-", "").ToLower();
            }

            return password;
        }

        private void Authorization()
        {
            string login = textBox1.Text;
            string password = GetHashPass(textBox2.Text);

            MySqlConnection connection = new MySqlConnection(Connection.conn);
            connection.Open();
            MySqlCommand command = new MySqlCommand($"SELECT * FROM user WHERE UserLogin = '{login}'", connection);

            MySqlDataAdapter adapter = new MySqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            Data.userId = Convert.ToInt32(table.Rows[0].ItemArray.GetValue(0));
            Data.surname = table.Rows[0].ItemArray.GetValue(1).ToString();
            Data.name = table.Rows[0].ItemArray.GetValue(2).ToString();
            Data.patronymic = table.Rows[0].ItemArray.GetValue(3).ToString();
            Data.role = table.Rows[0].ItemArray.GetValue(6).ToString();
            string passwordBd = table.Rows[0].ItemArray.GetValue(5).ToString();

            if (password == passwordBd)
            {
                MessageBox.Show("Успешная авторизация!", "Сообщение пользователю", MessageBoxButtons.OK, MessageBoxIcon.Information);
                switch (Data.role)
                {
                    case "1":
                        AdminForm adminForm = new AdminForm();
                        this.Visible = false;
                        adminForm.ShowDialog();
                        this.Close();
                        break;

                    case "2":
                        ManagerForm managerForm = new ManagerForm();
                        this.Visible = false;
                        managerForm.ShowDialog();
                        this.Close();
                        break;
                }
            }
            else
            {
                MessageBox.Show("Ошибка авторизации! Неверный логин или пароль", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox1.Clear();
                textBox2.Clear();
                button1.Enabled = false;
            }
            connection.Close();
        }

        private void AuthorizationForm_Load(object sender, EventArgs e)
        {
            GenerateCaptcha();
            button1.Enabled = false;
            button4.Enabled = false;
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
            {
                textBox2.PasswordChar = default;
            }
            else
            {
                textBox2.PasswordChar = '*';
            }
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            button1.Enabled = true;
        }

        private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Validation.IsValidPassword(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Validation.IsValidLogin(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        /// <summary>
        /// Авторизация с капчой
        /// </summary>
        private void button4_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != "" || textBox2.Text != "" || textBox3.Text != "")
            {

                if (textBox3.Text == captchaName)
                {
                    Authorization();
                }
                else
                {
                    MessageBox.Show("Ошибка авторизации! Неверный ввод капчи;", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    textBox1.Clear();
                    textBox2.Clear();
                    textBox3.Clear();

                }
            }
            else
            {
                MessageBox.Show("Пожалуйста, заполните все поля.", "Внимание", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
        string captchaName;
        /// <summary>
        /// Генерация капчи
        /// </summary>
        private void GenerateCaptcha()
        {
            string[] captchaFile;
            captchaFile = Directory.GetFiles(@".\captcha\", "*.png");

            Random random = new Random();
            int index = random.Next(captchaFile.Length);
            captchaName = Path.GetFileNameWithoutExtension(captchaFile[index]);
            pictureBox3.Image = Image.FromFile(captchaFile[index]);
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            button4.Enabled = true;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            GenerateCaptcha();
        }
    }
}

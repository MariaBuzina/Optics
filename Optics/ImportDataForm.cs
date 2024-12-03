using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Optics
{
    public partial class ImportDataForm : Form
    {
        public ImportDataForm()
        {
            InitializeComponent();
        }

        private void ImportDataForm_Load(object sender, EventArgs e)
        {
            MySqlConnection connection = new MySqlConnection(Connection.conn);
            connection.Open();
            MySqlCommand command = new MySqlCommand("SHOW TABLES", connection);
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                comboBox1.Items.Add(reader.GetValue(0).ToString());
            }
            connection.Close();

            button1.Enabled = false;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (comboBox1.SelectedIndex == -1)
                {
                    MessageBox.Show("Пожалуйста, заполните все поля!", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    OpenFileDialog openFileDialog1 = new OpenFileDialog();
                    openFileDialog1.Filter = "CSV files (*.csv)|*.csv";
                    if (openFileDialog1.ShowDialog() == DialogResult.OK)
                    {
                        MySqlConnection mySqlConnection = new MySqlConnection(Connection.conn);
                        mySqlConnection.Open();

                        string filePath = openFileDialog1.FileName;
                        string tableName = comboBox1.SelectedItem.ToString();

                        int importRows = ImportCSV(filePath, tableName, mySqlConnection);
                        if (importRows != 0)
                        {
                            MessageBox.Show($"Успешно импортировано {importRows} записей в таблицу {tableName}!", "Сообщение пользователю", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            comboBox1.SelectedIndex = -1;
                        }
                        mySqlConnection.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private int ImportCSV(string csvFilePath, string tableName, MySqlConnection connection)
        {
            int res = 0;
            using (StreamReader reader = new StreamReader(csvFilePath))
            {
                string headerLine = reader.ReadLine();
                string[] headers = headerLine.Split(';');

                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    string[] values = line.Split(';');

                    string query = $"INSERT INTO {tableName} ({string.Join(",", headers)}) VALUES ({string.Join(",", values)})";
                    MySqlCommand command = new MySqlCommand(query, connection);

                    res += command.ExecuteNonQuery();
                }
            }
            return res;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            button1.Enabled = true;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Вы уверены, что хотите восстановить структуру БД?", "Внимание", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (result == DialogResult.Yes)
            {
                MySqlConnection mySqlConnection = new MySqlConnection(Connection.conn);
                mySqlConnection.Open();

                string pathFile = Directory.GetCurrentDirectory() + @"\file\structure.sql";
                string textFile = File.ReadAllText(pathFile);
                MySqlCommand mySqlCommand = new MySqlCommand(textFile, mySqlConnection);
                mySqlCommand.ExecuteNonQuery();

                mySqlConnection.Close();

                MessageBox.Show("Структура базы данных успешно восстановлена!", "Сообщение пользователю", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AuthorizationForm authorizationForm = new AuthorizationForm();
            this.Visible = false;
            authorizationForm.ShowDialog();
            this.Close();
        }
    }
}

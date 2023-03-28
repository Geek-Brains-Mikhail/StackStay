using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Stackstay
{
    /// <summary>
    /// Interaction logic for AuthorizationWindow.xaml
    /// </summary>
    public partial class AuthorizationWindow : Window
    {
        public AuthorizationWindow()
        {
            InitializeComponent();
        }
        private void RegBtn_Click(object sender, RoutedEventArgs e)
        {
            RegWindowxaml newWindow = new RegWindowxaml();
            newWindow.Show();
            this.Close();
        }

        private void AuthorizationBtn(object sender, RoutedEventArgs e)
        {
            //можно потом сделать проверка на верный логин и соответствующий пароль к нему!(():
            if(LoginInput.Text == "" || PasswordInput.Text == "")
            {
                MessageBox.Show("Должны быть заполнены все поля ввода!");
                return;
            }
            else
            {
                if(user86_dbEntities4.GetContext().AuthorAndRedDataUser.Select(item => item.Login + " " + item.Password).Contains(LoginInput.Text + " " + PasswordInput.Text))
                {
                    MessageBox.Show("Вход одобрен!");
                    MainWindow newWindow = new MainWindow();
                    newWindow.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Пароль введен неверно или пользователя несуществует!");
                }
            }
        }
    }
}

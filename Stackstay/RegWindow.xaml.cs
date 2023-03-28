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
    /// Interaction logic for RegWindowxaml.xaml
    /// </summary>
    public partial class RegWindowxaml : Window
    {
        public RegWindowxaml()
        {
            InitializeComponent();
        }


        private void AuthorizationBtn_Click(object sender, RoutedEventArgs e)
        {
            AuthorizationWindow newWindow = new AuthorizationWindow();
            newWindow.Show();
            this.Close();
        }

        private void RegBtn_Click(object sender, RoutedEventArgs e)
        {
            if(LoginInput.Text == "" || PasswordInput.Text == "" || RepeatPasswordInput.Text == "")
            { MessageBox.Show("Все поля должны быть заполнены!");return; }
            else
            {
                if(PasswordInput.Text ==  RepeatPasswordInput.Text)
                {
                    if(user86_dbEntities4.GetContext().AuthorAndRedDataUser.Select(item => item.Login).Contains(LoginInput.Text))
                    {
                        MessageBox.Show("Пользователь с таким логином уже существует!");
                       
                    }
                    else
                    {
                        AuthorAndRedDataUser newUser = new AuthorAndRedDataUser()
                        { 
                            Login = LoginInput.Text,
                            Password = PasswordInput.Text
                            
                        };
                        user86_dbEntities4.GetContext().AuthorAndRedDataUser.Add(newUser);
                        try
                        {
                            user86_dbEntities4.GetContext().SaveChanges();
                            MessageBox.Show("Регистарция прошла успешно!");
                            MainWindow newWindow = new MainWindow();
                            newWindow.Show();
                            this.Close();
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message.ToString());
                        }

                    }
                }
                else
                {
                    MessageBox.Show("Пароли не совпадают!");
                }
            }
        }
    }
}

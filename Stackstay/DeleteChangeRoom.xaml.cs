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
    /// Interaction logic for DeleteChangeRoom.xaml
    /// </summary>
    public partial class DeleteChangeRoom : Window
    {
        private RoomsHotel DataDeleteRoom = new RoomsHotel();
        public DeleteChangeRoom(RoomsHotel _deleteRoomData)
        {
            InitializeComponent();
            DataDeleteRoom = _deleteRoomData;

            
        }

        private void CompleteDelete_Click(object sender, RoutedEventArgs e)
        {
            user86_dbEntities4.GetContext().RoomsHotel.Remove(DataDeleteRoom);

            try
            {
                user86_dbEntities4.GetContext().SaveChanges();
                Manager.MainFrame.Navigate(new MainPages.Listing());
                this.Close();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void UnCompleteDelete_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}

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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Stackstay.MainPages
{
    /// <summary>
    /// Interaction logic for Listing.xaml
    /// </summary>
    public partial class Listing : Page
    {
        public Listing()
        {
            InitializeComponent();
        }

        private void AddNewHotelRoom_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new MainPages.AddHotelRoom(null));
        }

        private void EditDataHotelRoom_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new MainPages.AddHotelRoom((sender as Button).DataContext as  RoomsHotel));

        }

        private void DeleteDataHotelRoom_Click(object sender, RoutedEventArgs e)
        {
            DeleteChangeRoom newWindow = new DeleteChangeRoom((sender as Button).DataContext as RoomsHotel);
            newWindow.Show();
        }

        private void BtnBookingNowHotelRoon_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if(Visibility == Visibility.Visible)
            {
                LVHotelRooms.ItemsSource = user86_dbEntities4.GetContext().RoomsHotel.ToList();
            }
        }
    }
}

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
using System.IO;
using Microsoft.Win32;

namespace Stackstay.MainPages
{
    /// <summary>
    /// Interaction logic for AddHotelRoom.xaml
    /// </summary>
    public partial class AddHotelRoom : Page
    {
        private RoomsHotel _currentHotel = new RoomsHotel();
        private byte[] _currentPhoto;
        private bool IsAddPhoto = false;
        public AddHotelRoom(  RoomsHotel DataNewHotel)
        {
            InitializeComponent();
            if(DataNewHotel != null)
            {
                _currentHotel = DataNewHotel;
                ViewRoomHotel.Source = (ImageSource)new ImageSourceConverter().ConvertFrom(DataNewHotel.Photo);
                IsAddPhoto = true;
            }
            DataContext = _currentHotel;
            CBBedTypeInput.ItemsSource = user86_dbEntities4.GetContext().BedType.ToList();
            CBCityInput.ItemsSource = user86_dbEntities4.GetContext().Cities.ToList();


        }

        private void AddPhotoInAddingRoomInHotel_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog newFileDialog = new OpenFileDialog();
            newFileDialog.Filter = "Image |*.jpg;*.png;*jpeg";
            if(newFileDialog.ShowDialog() == true)
            {
                _currentPhoto = File.ReadAllBytes(newFileDialog.FileName);
                ViewRoomHotel.Source = (ImageSource)new ImageSourceConverter().ConvertFrom(_currentPhoto);
                _currentHotel.Photo = _currentPhoto;
                IsAddPhoto = true;

            }
        }

        private void AddHotelNewRoom_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder _erros = new StringBuilder();

            if(RoomNameInput.Text == "")
            {
                _erros.Append("Имя номера в отеле должно быть заполнено!\n");
            }

            if(CBBedTypeInput.SelectedIndex <0)
            {
                _erros.Append("Должен быть выбран тип кровати\n");
            }
            if(CBCityInput.SelectedIndex <0)
            {
                _erros.Append("Должен быть выбран город\n");
            }
            if(PriceInput.Text == "")
            {
                _erros.Append("Цена должна быть указана\n");
            }
            if (!IsAddPhoto) _erros.Append("Фотография должна быть добавлена");
            if(_erros.Length>0)
            {
                MessageBox.Show(_erros.ToString());
            }
            else
            {

               if(_currentHotel.id == 0) user86_dbEntities4.GetContext().RoomsHotel.Add(_currentHotel);

                try
                {
                    user86_dbEntities4.GetContext().SaveChanges();
                    MessageBox.Show("Данные сохранены");
                    Manager.MainFrame.Navigate(new MainPages.Listing());

                }
                catch (Exception  error)
                {
                    MessageBox.Show(error.Message.ToString());
                }
            }
        }
    }
}

   M S B A M L   `   `   `  ����D  @Stackstay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Stackstay.MainPagesStackstay.MainPages  5      &     Stackstay.MainPages.AddHotelRoom   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:Stackstay.MainPages     5        N� Title$  AddHotelRoom��5	      .��5      � ���#F5F5F5 � RowDefinitions 5   
   �� 5      $	��120 �6   6+   �� 5      $��* �6   6)   .+�5   
   � 
�������.+�5      �� $��ALL Listing��6      TextBlockHeader#���   6+   �� 5      $��
BildSearch��6     TextBlockBilding#���  6*   $
��Bold"�6U   �� 5      $��BildAccount��6   #���  6+   $��
961,52,0,0q�6V   $	��Top=�6j   5      �� 5   
   $��50px 50px 50px 0q�6   $��1��6/   .+�5      �  5      �� 5      $
��Auto �6$   64   �� 5      $
��Auto �6$   64   �� 5      $
��Auto �6$   64   �� 5      $
��Auto �6$   64   .+�5      �� $��Edit Details:��6     MainTextBlock#���  63   $��25(�6\   $
��Bold"�6j    �� Padding$ 0 0 0 40q�6|   $��0��6�   �� 5       -   5         ��Name$! AddPhotoInAddingRoomInHotel��5    N   $	��590��6   $	��250��6%   $��1��63    � Cursor$
 Hand��6@   
������ .��5!      �� -   5         ��Name$ ViewRoomHotel��5!   b   $)��#/Images/DefaultHoteelRoomImages.png��6   $	��590��6I   $	��250��6U   6b    � 	Resources 5"       �� 
TargetType �� Property	 �� Value
 �� 
TargetType��%�   '��       �� 5#      " ��6    .�5$      ��  � ��	 5%   "   �� 5&   &   "
 ��69   .R�5'   *   �� #��z��61   ._�5(   .   �� $��Center=�6?   $��Center=�6\   5)   +   5*   '   5,      5-      5.      5/      � 50      $��2��6   $��Center=�6$    � ColumnDefinitions 52      �� 53      �� 54       57      �� 58      �� 59      .+�5<      �� $
��Left=�6!   $��	 0 0 20 0q�6<   .+�5=      �� $��
Room Name:��6$   #���  66   $��20(�6^   $
��Bold"�6l   $ 0 20 0 0q�6~   �� 5>      -   5         ��Name$ RoomNameInput��5>   "     TBInputData#���  69   ��6`   �� *
RoomName+5?      �� 5A      $
��Left=�6!   $��1��6>   $��1��6N   .+�5B      �� $��Price:��6$   #���  62   $��20(�6Z   $
��Bold"�6h   $ 0 20 0 0q�6z   �� 5C      -   5        $ 
PriceInput��5C   "   #���  66   ��6_   �� *Price+5D      �� 5F      $
��Left=�6!   $��0��6>   $��1��6N   .+�5G      �� $��
Bed Type: ��6$   #���  66   $��20(�6^   $
��Bold"�6l   $ 0 20 0 0q�6~   �� 5H      -   5        $��CBBedTypeInput��5H   L     ComboBoxDat#���  6$    �� DisplayMemberPath$
 Name��6b    �� SelectedItem 6{   �� *	BedType+5I      �� 5K      $
��Left=�6!   $��1��6>   $��0��6N   .+�5L      �� $��City:��6$   #���  61   $��20(�6Y   $
��Bold"�6g   $ 0 20 0 0q�6y   �� 5M      -   5        $��CBCityInput��5M   L   #���  6$   $
 Name��6_    6x   �� *Cities+5N      5Q      �� 5R      -   5        $ AddHotelNewRoom��5S   D   $��Save Details��5R      $��3��60     MainOperationBtn#���  6>   $	��245��5S      $��65��6%   $��	0 79 0 0 q�61   6]   5T      5V      5W      5X      
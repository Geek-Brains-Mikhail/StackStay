   M S B A M L   `   `   `  ����D  @Stackstay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Stackstay	Stackstay  5   	       Stackstay.RegWindowxaml   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Stackstay     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  RegWindowxaml��5	   	   $	��800��6   $
��1366��6,    � WindowStartupLocation$ CenterScreen=�69   .��5
      �  � ColumnDefinitions 5   
   �� 5      $
��335* �6   �� 5      $
��348* �6   .+�5   
   �� $��/Images/LoginImgBG.png��6   $	��483��60   $	��479��6<   �� 5   
   $��1��6   $��97 100 96 0q�6%   .+�5      �� $��Create new account��6   ���#777$��20(�6D   $��Normal"�6R   $��0 0 0 8q�6f    �� 
LineHeight$ 28��6w   �� 5      $��Registration��6   $��44(�6,   $
��Bold"�6:   $ 44��6L   �� 5      -   5         ��Name$ 
LoginInput��5       %  !MaterialDesignFloatingHintTextBox#���   6*   $
��Left=�6f   $	��460��6�   $��46��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Email Address��6#   $��15(�6R   $��	 5 0 0 10q�6`   $��
 0 70 0 50q�6t   �� 5      -   5        $ PasswordInput��5      #���   6-   $
��Left=�6i   $	��460��6�   $��46��5      $ Password Address��6#   $��15(�6U   �� 5      -   5        $ RepeatPasswordInput��5      #���   63   $
��Left=�6o   $	��460��6�   $��46��5      $ Password Address��6#   $��15(�6U   $
��0 50q�6c   �� 5      -   5         ��Name$ RegBtn��5   W   $��Sign Up��5      ���#32C0C0$	��460��6<   $��60��6H   $��20(�6T   $��Normal"�6b   $��0q�5      $
��Left=�6)   
�������5       �� 5!       �� Orientation$ 
Horizontal=�6   $��Center=�62   $��0 5 0 0q�6O   .+�5"      �� $��Already have an accoun?��6   $��Center=�6=   $��20(�6X   $��Normal"�6f   �� 5#      -   5        $ AuthorizationBtn��5#   )   $��Login��6   ���#E1341E  MaterialDesignFlatButton#���  6w   $��Normal"�6�   5$      5%      5&      5'      
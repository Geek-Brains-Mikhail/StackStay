   M S B A M L   `   `   `  ����D  @Stackstay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Stackstay	Stackstay  5   	   #    Stackstay.AuthorizationWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Stackstay     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  AuthorizationWindow��5	   	   $	��800��6%   $
��1366��62    � WindowStartupLocation$ CenterScreen=�6?   .��5
      �  � ColumnDefinitions 5   
   �� 5      $
��335* �6   �� 5      $
��348* �6   .+�5   
   �� $��/Images/LoginImgBG.png��6   $	��483��60   $	��479��6<   �� 5   
   $��1��6   $��97 142 96 0q�6%   $��Center=�6=   .+�5      �� $��Login to your account��6   ���#777$��20(�6G   $��Normal"�6U   $��0 0 0 8q�6i    �� 
LineHeight$ 28��6z   �� 5      $��Welcome Back!��6   $��44(�6-   $
��Bold"�6;   $ 44��6M   �� 5      -   5         ��Name$ 
LoginInput��5       %  !MaterialDesignFloatingHintTextBox#���   6*   $
��Left=�6f   $	��460��6�   $��46��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Email Address��6#   $��15(�6R   $��	 5 0 0 10q�6`   $��
 0 70 0 50q�6t   �� 5      -   5        $ PasswordInput��5      #���   6-   $
��Left=�6i   $	��460��6�   $��46��5      $ Password Address��6#   $��15(�6U   �� 5      -   5        $��Login��5      ���#32C0C0$	��460��6S   $��60��6_   $��20(�6k   $��Normal"�6y   $��0q�6�   $
��Left=�6�   
�������$��	0 65 0 50q�5      5      �� 5       �� Orientation$ 
Horizontal=�6   $��Center=�62   .+�5      �� $��Don't have an account?��6   $��Center=�6<   $��20(�6W   $��Normal"�6e   �� 5      -   5         ��Name$ RegBtn��5   +   $��Sign Up��6   ���#E1341E  MaterialDesignFlatButton#���  5       $��16(�6L   $��Normal"�6Z   5"      5#      5$      5%      
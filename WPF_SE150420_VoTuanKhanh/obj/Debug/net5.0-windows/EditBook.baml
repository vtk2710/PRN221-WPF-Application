   M S B A M L   `   `   `  ����S  OWPF_SE150420_VoTuanKhanh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WPF_SE150420_VoTuanKhanhWPF_SE150420_VoTuanKhanh  5   	   '    !WPF_SE150420_VoTuanKhanh.EditBook   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:WPF_SE150420_VoTuanKhanh     5   	   -   5          �Name$  EditBookForm��5	   	    � Title$ EditBook��5   	   $	��450��6   $	��400��6'   .��5
      � .+�5   
   �� $��ID��6   $
��Left=�6   $��	40,51,0,0q�68   $	��Top=�6K   $��85��6c   �� 5   
   $��Title��6   $
��Left=�6    $��	40,90,0,0q�6;   $	��Top=�6N   $��85��6f   �� 5   
   $��Quantity��6   $
��Left=�6#   $��
40,130,0,0q�6>   $	��Top=�6R   $��85��6j   �� 5   
   $��Author��6   $
��Left=�6!   $��
40,173,0,0q�6<   $	��Top=�6P   $��85��6h   �� 5   
   $��	Publisher��6   $
��Left=�6$   $��
40,217,0,0q�6?   $	��Top=�6S   $��85��6k   �� 5   
   -   5         ��Name$ 	BookIDTxt��5   �   $
��Left=�6   $��
130,55,0,0q�6-    �� TextWrapping$
 Wrap=�6A   $	��Top=�6U   $	��193��6m   $��22��6y   ${�False��6�   6�   �� 5   
   -   5        $ BookTitleTxt��5   �   $
��Left=�6   $��
130,92,0,0q�6-   $
 Wrap=�6A   $	��Top=�6U   $	��193��6m   $��22��6y   6�   �� 5   
   -   5        $ BookQuantityTxt��5   �   $
��Left=�6   $��130,134,0,0q�6-   $
 Wrap=�6B   $	��Top=�6V   $	��193��6n   $��22��6z   6�   �� 5   
   -   5        $ BookAuthorTxt��5   �   $
��Left=�6   $��130,177,0,0q�6-   $
 Wrap=�6B   $	��Top=�6V   $	��193��6n   $��22��6z   6�   �� 5   
   -   5        $ BookPublisherTxt��5   �   $
��Left=�6   $��130,219,0,0q�6-   $
 Wrap=�6B   $	��Top=�6V   $	��193��6n   $��22��6z   6�   �� 5   
   -   5         ��Name$ ConfirmUpdateBtn��5   �   $��Update��6   $
��Left=�6"   $��
82,286,0,0q�6=   $	��Top=�6Q   $��80��6i   $��29��6t   6�   �� 5   
   -   5        $ CancelEditBtn��5   �   $��Cancel��6   $
��Left=�6"   $��243,286,0,0q�6=   $	��Top=�6R   $��80��6j   $��29��6u   6�   � 5   
   -	   5         �Name$ EditBookError��5   e   $��False��6   $��Center=�6    � AllowsTransparency$
 True��62   $	��250��6L   $	��100��6X   .��5      �� ���#007ACC$��2q�6+   ���#F9F9F9._�5      �� .+�5      �� -
   5         ��Name$ PopupEditBookContent��5   q    �� TextAlignment$ Center=�6    $�� ��67   $��12(�6?   $
��Bold"�6M   $��0,10,0,0q�6_   6q   �� 5      -   5        $ PopoupOK��5   S   $��50��6   $��30��6(   $��OK��64   $��0,10,0,0q�6A   6e   5      5      5      � 5!   
   -   5        $ EditBookSuccess��5!   e   $��False��6   $��Center=�6   $
 True��62   $	��250��6L   $	��100��6X   .��5"      �� ���#007ACC$��2q�6+   ���#F9F9F9._�5#      �� .+�5$      �� -   5        $ PopupEditBookSuccess��5$   q   $ Center=�6    $�� ��67   $��12(�6?   $
��Bold"�6M   $��0,10,0,0q�6_   6q   �� 5%      -   5        $ PopoupEditOK��5%   S   $��50��6   $��30��6(   $��OK��64   $��0,10,0,0q�6A   6i   5&      5'      5(      5)      5*      
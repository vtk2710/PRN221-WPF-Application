   M S B A M L   `   `   `  ����S  OWPF_SE150420_VoTuanKhanh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WPF_SE150420_VoTuanKhanhWPF_SE150420_VoTuanKhanh  5   	   )    #WPF_SE150420_VoTuanKhanh.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:WPF_SE150420_VoTuanKhanh     5   	   -   5          �Name$  	LoginPage��5	   	    � Title$ Login��5   	   $	��534��6   $	��946��6$   .��5      �  � ColumnDefinitions 5   
   �� 5      $��0* �6   �� 5      $
��232* �6   �� 5      $
��241* �6   .+�5   
   �� $��Username��6   $��2��6#   $
��Left=�67   $��322,114,0,0q�6R   $	��Top=�6g    J� RenderTransformOrigin$ 1.506,1.157&�6   $��31��6�   $��81��6�   �� 5   
   -   5         ��Name$ UsernameInput��5   �   $��3��6   $��Right=�6&   $��0,114,354,0q�6B    �� TextWrapping$
 Wrap=�6W   $	��Top=�6k   $	��183��6�   $��31��6�   $��Center=�6�   �� 5   
   $��
Password
��6   $��2��6-   $��322,158,61,0q�6A   $	��Top=�6W   $ 1.342,1.203&�6o   $��31��6�   �� 5   
   -   5        $ PasswordInput��5   �   $��3��6   $��Right=�6&   $��0,158,354,0q�6B   $
 Wrap=�6W   $	��Top=�6k   $	��183��6�   $��30��6�   $��Center=�6�   �� 5   
   -   5         ��Name$ LoginBtn��5   �   $��	Sign in
��6   $��2��6-   $��
0,220,30,0q�6A   $	��Top=�6U   $��26��6�   $��Right=�6�   $	��104��6�   6�   �� 5   
   -   5        $ 	SignupBtn��5   �   $��
Sign up

��6   $��0,221,354,0q�62   $	��Top=�6G   $��25��6t   $��2��6�   $��Right=�6�   $	��106��6�   6�   �� 5   
   $��LOGIN��6   $��3��6    $
��Left=�64   $��
437,58,0,0q�6O   $	��Top=�6c   $��72��6{   $ 0.263,0.418&�6�   $��28��6�   $
��Bold"�6�   $��15(�6�   � 5   
   -   5         �Name$ 
LoginError��5   e   $��False��6   $��Center=�6    � AllowsTransparency$
 True��62   $	��250��6L   $	��100��6X   .��5      �� ���#007ACC$��2q�6+   ���#F9F9F9._�5      �� .+�5       �� -   5        	 ��Name$	 PopupLoginError��5    q   
 �� TextAlignment$
 Center=�6    $�� ��67   $��12(�6?   $
��Bold"�6M   $��0,10,0,0q�6_   6q   �� 5!      -   5        $ PopoupOK��5!   S   $��50��6   $��30��6(   $��OK��64   $��0,10,0,0q�6A   6e   5"      5#      5$      5%      5'      
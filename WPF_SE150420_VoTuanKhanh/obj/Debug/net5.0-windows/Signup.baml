   M S B A M L   `   `   `  ����S  OWPF_SE150420_VoTuanKhanh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WPF_SE150420_VoTuanKhanhWPF_SE150420_VoTuanKhanh  5   	   %    WPF_SE150420_VoTuanKhanh.Signup   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:WPF_SE150420_VoTuanKhanh     5   	   -   5          �Name$  
SignupPage��5	   	    � Title$ Signup��5   	   $	��450��6   $	��800��6%   .��5
      � .+�5   
   �� $��Username��6   $
��Left=�6#   $��183,100,0,0q�6>   $	��Top=�6S   $	��110��6k   �� 5   
   $��	Full Name��6   $
��Left=�6$   $��183,131,0,0q�6?   $	��Top=�6T   $	��110��6l   �� 5   
   $��Password��6   $
��Left=�6#   $��183,162,0,0q�6>   $	��Top=�6S   $	��110��6k   �� 5   
   $��Confirm password��6   $
��Left=�6+   $��183,193,0,0q�6F   $	��Top=�6[   $	��110��6s   �� 5   
   -   5         ��Name$ SignupUsername��5   �   $
��Left=�6   $��328,100,0,0q�6-    �� TextWrapping$
 Wrap=�6B   $	��Top=�6V   $	��202��6n   $��26��6z   $��Center=�6�   6�   �� 5   
   -   5        $ SignupFullname��5   �   $
��Left=�6   $��328,131,0,0q�6-   $
 Wrap=�6B   $	��Top=�6V   $	��202��6n   $��26��6z   $��Center=�6�   6�   �� 5   
   -   5        $ SignupPassword��5   �   $
��Left=�6   $��328,162,0,0q�6-   $
 Wrap=�6B   $	��Top=�6V   $	��202��6n   $��26��6z   $��Center=�6�   6�   �� 5   
   -   5        $ SignupConfirm��5   �   $
��Left=�6   $��328,193,0,0q�6-   $
 Wrap=�6B   $	��Top=�6V   $	��202��6n   $��26��6z   $��Center=�6�   6�   �� 5   
   -   5        $��Sign up��5      $
��Left=�6#   $��328,251,0,0q�6>   $	��Top=�6S   $��91��6k   $��31��6v   6�   �� 5   
   -   5         ��Name$ 	CancelBtn��5   �   $��Cancel��6   $
��Left=�6"   $��439,251,0,0q�6=   $	��Top=�6R   $��91��6j   $��31��6u   6�   � 5   
   -   5         �Name$ DuplicateUsername��5   e   $��False��6   $��Center=�6    � AllowsTransparency$
 True��62   $	��250��6L   $	��100��6X   .��5      �� ���#007ACC$��2q�6+   ���#F9F9F9._�5      �� .+�5      �� -	   5         ��Name$ PopupContent��5   q    �� TextAlignment$ Center=�6    $�� ��67   $��12(�6?   $
��Bold"�6M   $��0,10,0,0q�6_   6q   �� 5      -
   5        $ PopoupOK��5   S   $��50��6   $��30��6(   $��OK��64   $��0,10,0,0q�6A   6e   5      5      5      � 5    
   -   5        $ Successfully��5    e   $��False��6   $��Center=�6   $
 True��62   $	��250��6L   $	��100��6X   .��5!      �� ���#007ACC$��2q�6+   ���#F9F9F9._�5"      �� .+�5#      �� $ Center=�6    $��Sign up successfully.��67   $��12(�6T   $
��Bold"�6b   $��0,10,0,0q�6t   �� 5$      -   5        $ PopoupSuccessfully��5$   `   $
��Auto��6   $��30��6*   $��Back to Login��66   $��0,10,0,0q�6N   $��Center=�6�   5%      5&      5'      5(      5)      
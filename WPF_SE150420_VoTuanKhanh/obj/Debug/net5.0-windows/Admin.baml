   M S B A M L   `   `   `  ����S  OWPF_SE150420_VoTuanKhanh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WPF_SE150420_VoTuanKhanhWPF_SE150420_VoTuanKhanh  5   	   $    WPF_SE150420_VoTuanKhanh.Admin   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:WPF_SE150420_VoTuanKhanh     5   	   -   5          �Name$  	AdminPage��5	   	    � Title$ Admin��5   	   $	��450��6   $	��800��6$   .��5
      � .+�5   
   �� .@�5      �� $��User Management��6   .��5      � -   5         �Name$ UserManagePage��5      .+�5      �� $��Search user��6   $
��Left=�62   $��
132,57,0,0q�6M   $	��Top=�6a   $��77��6y    J� RenderTransformOrigin$ 0.657,0.179&�6�   �� 5      -   5         ��Name$ UserNameSearch��5   �   $��Right=�6   $��
0,57,261,0q�6:    �� TextWrapping$
 Wrap=�6N   $�� ��6b   $	��Top=�6j   $	��316��6�   $��26��6�   $��Center=�6�   6�   �� 5      -   5         ��Name$ SearchUserBtn��5   �   $��Search��6   $
��Left=�6.   $��
544,57,0,0q�6I   $	��Top=�6]   $��26��6u   $��54��6�   5      &   System.Windows.Controls.DataGrid  5      -   5          Name$ UserDataGrid��5   �   $��	132,0,0,0q�6      AutoGenerateColumns$ False��6g   $	��204��6�   $��Center=�6�   $
��Left=�6�   ��62   �� *ActualWidth+	 �� ElementName$	 	GridPanel��
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Username��61   -   5        Username��1  +System.Windows.Controls.DataGridBoundColumn   Binding 5   C   �� *UserId+   HeaderStyle 5   "   �� 5   &    �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6,   .�5   *   ��  �� Property � �� �� Value$	 100��6B   5   '   5        5      $ Password��61   -   5        Password�� 5   C   �� *UserPassword+ 5   "   �� 5   &   "  6,   .�5    *   ��  � ��$	 100��6B   5!   '   5#        5$      $ Fullname��61   -   5        Fullname�� 5$   C   �� *UserFullName+ 5%   "   �� 5&   &   "  6,   .�5'   *   ��  � ��$	 100��6B   5(   '   5*        5+      $
 Role��61   -	   5        Role�� 5+   ?   �� *
UserRole+ 5,   "   �� 5-   &   "  6,   .�5.   *   ��  � ��$	 100��6B   5/   '   51      4  .System.Windows.Controls.DataGridTemplateColumn  52       53   "   �� 54   &   "  6,   .�55   *   ��  � ��$	 100��6B   56   '      CellTemplate 58   "   �� 59   &   .R�5:   *   �� $ DeleteUserBtn��6^   -
   5        $��Delete��5:   1   6^   5;   '   5=      5?      5@      5A      �� 5C      $��Book Management��6   .��5D      � -   5        $ BookManagePage��5D      $��-2,0,2,0q�6/   .+�5E      �� $��Search book��6   $
��Left=�62   $��	46,57,0,0q�6M   $	��Top=�6`   $��77��6x   $ 0.657,0.179&�6�   �� 5F      -   5        $ BookSearchTxt��5F   �   $��
0,57,342,0q�6   $
 Wrap=�62   $�� ��6F   $	��Top=�6N   $��26��6f   $��Center=�6r   $��Right=�6�   $	��316��6�   �� 5G      -   5         ��Name$ ComboBoxBook��5G   �   $
��Left=�6   $��
473,57,0,0q�6:   $	��Top=�6N   $��26��6f   $	��120��6r   $ 
0.27,0.514&�6~   .@�5H      �� $��Title��6'    �� 
IsSelected$
 True��67   �� 5I      $��Author��6'   �� 5J      $��	Publisher��6'   5K      �� 5L      -   5        $ SearchBookBtn��5L   �   $��Search��6   $
��Left=�6.   $��
609,57,0,0q�6I   $	��Top=�6]   $��26��6u   $��54��6�   5N      �� 5P      -   5        $ CreateBookBtn��5P   �   $��Create��6   $
��Left=�6.   $��
673,57,0,0q�6I   $	��Top=�6]   $��26��6u   $��54��6�   5R        5U      -   5        $ BookDataGrid��5U   p   $ False��6T   $	��204��6�   $��Center=�6�   $��Center=�6�      CanUserAddRows$ False��6�   ��6   �� *ActualWidth+$	 	GridPanel��
 5V        5W      $ BookID��61   -   5        
BookID�� 5W   A   �� *BookId+ 5X   "   �� 5Y   &   "  6,   .�5Z   *   ��  � ��$	 100��6B   5[   '   5]        5^      $ 
Book Title��61   -   5        BookName�� 5^   E   �� *
BookName+ 5_   "   �� 5`   &   "  6,   .�5a   *   ��  � ��$	 100��6B   5b   '   5d        5e      $ Quantity��61   -   5        Quantity�� 5e   C   �� *
Quantity+ 5f   "   �� 5g   &   "  6,   .�5h   *   ��  � ��$	 100��6B   5i   '   5k        5l      $ Author��61   -   5        
AuthorName�� 5l   A   �� *
AuthorName+ 5m   "   �� 5n   &   "  6,   .�5o   *   ��  � ��$	 100��6B   5p   '   5r        5s      $ 	Publisher��61   -   5        	Publisher�� 5s   D   �� *Publisher.PublisherName+ 5t   "   �� 5u   &   "  6,   .�5v   *   ��  � ��$	 100��6B   5w   '   5y        5{       5|   "   �� 5}   &   "  6,   .�5~   *   ��  � ��$	 100��6B   5   '    5�   "   �� 5�   &   .R�5�   *   �� $ UpdateBookBtn��6\   -   5        $
��Edit��5�   1   6\   5�   '   5�        5�       5�   "   �� 5�   &   "  6,   .�5�   *   ��  � ��$	 100��6B   5�   '    5�   "   �� 5�   &   .R�5�   *   �� $ DeleteBookBtn��6^   -   5        $��Delete��5�   1   6^   5�   '   5�      5�      5�      5�      �� 5�      $��Publisher Management��6   .��5�      � .+�5�      �� $��This is Tab 3��6    5�      5�      5�      5�      5�      
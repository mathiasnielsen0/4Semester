   M S B A M L   `   `   `  ����H  DAgentExercise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:AgentExerciseAgentExercise  5   	       AgentExercise.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:AgentExercise     5   	     � Title$  
MainWindow��5   	   $	��275��6   $	��550��6)    � DataContext 5	      '   !AgentExercise.MainWindowViewModel  5
   
   .��5      �  � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $��30 �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��3* �6    � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��2* �6   �� 5      $��2* �6   .+�5   
   o� $	��Top=�6   $��0��6$   $��3��61   .@�5      m� $
��File��6   .@�5      m� -   5        $
��Exit��5      6)   5       m� 5!      $��Agent��6   .@�5"      m� $��Previous��6    m� Command 6-   ��  �� Path$ 
LeftBtnCmd�m� 5#      $
��Next��6    6)   �� $ RightBtnCmd�m� 5$      $��Add New��6    6,   �� $ AddNewAgentCmd�5%      5&      c� 5(   
   $��1��6   $��3��6   .@�5)      �� -   5        $��+��5)      $��Center=�6!   $��Center=�6>   $
��Bold"�6Y   $��14(�6k   6y   �� 5*      -   5        $��-��5*      $��Center=�6!   $
��Bold"�6>   $��14(�6P   6^   �� 5+      $��<��69   $��Center=�6H   $
��Bold"�6e   $��14(�6w   ��6   �� $ 
LeftBtnCmd�6w   �� 5,      $��>��6:   $��Center=�6I   $
��Bold"�6f   $��14(�6x   ��6   �� $ RightBtnCmd�6x   5-      �� 5/   
   -   5        $��IdLabel��5/      $��2��6   $��0��6,   $��Id��6<   $��Center=�6I   $��Center=�6f   �� 50   
   -   5        $��CodeNameLabel��50      $��3��6%   $��0��62   $��Codename��6B   $��Center=�6U   $��Center=�6r   �� 51   
   -   5        $��SpecialityLabel��51      $��4��6'   $��0��64   $��
Speciality��6D   $��Center=�6Y   $��Center=�6v   �� 52   
   -   5        $��AssignmentLabel��52      $��5��6'   $��0��64   $��
Assignment��6D   $��Center=�6Y   $	��Top=�6v   $��10q�6�   �� 54   
   -   5        $��	IdTextBox��54      $��2��6#   $��1��60   $
��10,3q�6@   ��6N   �� $ CurrentAgent.ID��� 55   
   -	   5        $��CodeNameTextBox��55      $��3��6)   $��1��66   $
��10,3q�6F   ��6T   �� $ CurrentAgent.CodeName��� 56   
   -
   5        $��SpecialityTextBox��56      $��4��6+   $��1��68   $
��10,3q�6H   ��6V   �� $ CurrentAgent.Speciality��� 57   
   -   5        $��AssignmentTextBox��57      $��5��6,   $��1��69   $
��10,6q�6I   ��6W   �� $ CurrentAgent.Assignment��� 58   
   -   5        $��AgentListBox��58      $��2��6&   $��2��66   $��4��6C   $��8q�6T   $ �� IsSynchronizedWithCurrentItem$
 TrueY�5<       �� DisplayMemberPath$ CodeName��5=       �� SelectedItem 59      �� $ CurrentAgent���5:      �� $ Agents�	 �� SelectedIndex	 5;      �� $ CurrentIndex�5=      5>      5?      
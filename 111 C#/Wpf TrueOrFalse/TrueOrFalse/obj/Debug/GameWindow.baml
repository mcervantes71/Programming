   M S B A M L   `   `   `  ����F  BTrueOrFalse, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TrueOrFalseTrueOrFalse  5   	       TrueOrFalse.GameWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:TrueOrFalse     5   	     � Title$  Game Window��5   	   $	��200��6   $	��400��6*   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      $��50 �6   .+�5   
   (�  (� StretchDirection$ DownOnly=�6    (� Stretch$ Uniform=�6.   .��5      �� -   5         ��Name$ StatementText��5      $
��Test��5      $��Center=�5      5      �� 5   
    �� Orientation$ 
Horizontal=�6   $��1��5      $��Center=�5      $
��Left=�5      .+�5      �� -   5         ��Name$
 Exit��5      $
��Exit��5      $��3q�5      $��60��5      $��30��5      5      5      �� 5   
   $ 
Horizontal=�6   $��1��5      $��Center=�5       $��Center=�5!      .+�5"      �� -   5        $ False��5"      $��False��5#      $��3q�5$      $��60��5%      $��30��5&      5'      �� 5(      -   5        $
 True��5(      $
��True��5)      $��3q�5*      $��60��5+      $��30��5,      5-      5.      �� 5/   
   $��1��6   $��Center=�50      $��Right=�51      .+�52      �� $��
3, 3, 6, 0q�6   $ 
Horizontal=�53      $��Center=�54      .+�55      �� Statement 6-   �� 56      -   5        $ StatementNumber��56      068   �� 57       of 6,   �� 58      -   5        $ NumberOfStatements��58      06;   59      �� 5:      $��
3, 3, 6, 3q�6   $ 
Horizontal=�5;      $��Center=�5<      .+�5=      �� 
Score: 6*   �� 5>      -   5        $ Score��5>      06.   5?      5@      5A      5B      
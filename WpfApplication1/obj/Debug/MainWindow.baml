   M S B A M L   `   `   `  ����G  CTranslateApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  5   	        WpfApplication1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfApplication1     5   	   -   5        $	��115��5      $	��280��6'     � Topmost  . 
������  � WindowStyle$
 None=�5   S    � 
ResizeMode$ NoResize=�6f   $��0q�6|   $
��Left=�6�   $	��Top=�6�    J� SnapsToDevicePixels . .��5	      � 
�������.+�5
   
   �� -   5         ��Name$ 	InputText��5
      $
��Left=�6%   $��25��6@   $��	10,10,0,0q�6L    �� TextWrapping$
 Wrap=�6_   $	��Top=�6s   $	��260��6�   $��0,0,0,2q�6�   ���	#00000000
���   �
�������$��14.667(�6  $��Текст Сюда ��6I  $��Calibri)�6\  .��6q   J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         	Direction$	 330Q�6#      ShadowDepth$ 3Q�63   	   Opacity$
	 0.75Q�6C   
   
BlurRadius$
 2Q�6R      Color$ 	#FFBFBFBF��6a   .��5      5      �� 5   
   -   5        $ 	OuputText��5      $
��Left=�6%   $��25��6@   $��	10,70,0,0q�6L   $
 Wrap=�6_   $	��Top=�6s   $	��260��6�   $��0,0,0,2q�6�   ���	#00000000
�������$��14.667(�6�   $��Translate Where��6  $��Calibri)�6U  .��6j   5        5      $	 330Q�6#   $ 3Q�63   $
	 0.75Q�6C   $ 	#FFBFBFBF��6R   $
 2Q�6d   .��5      5      �� 5   
   -   5         ��Name$ comboBox��5      $
��Left=�6%   $��	10,40,0,0q�6@   $	��Top=�6S   $��93.162��6k   $��25��6z   $ �� IsSynchronizedWithCurrentItem$
 TrueY�6�    �� SelectedIndex$ 0��6�   $��Calibri)�6�   ��6�   Z�  5        5      $	 330Q�6#   $ 3Q�63   $		 0.5Q�6C   $
 2Q�6Q   $ 	#FFBFBFBF��6`   .@�5      �� -   5         ��Name$ Listlanguage��5       � Cursor$ Arrow��60   $��English��6?   $��14.667(�6Q   �� 5      $��Germany��6   �� 5      $��Russian��6   �� 5      $��China��6   5      �� 5   
   -   5         ��Name$ TranlateButton��5      $��T��6)   $
��Left=�65   $��108.162,40,0,0q�6P   $	��Top=�6h   $��24.621��6�   $��25��6�   $��0q�6�   $��Calibri)�6�   ��5       �� 5!       5#        5$      $	 330Q�6#   $ 3Q�63   $		 0.5Q�6C   $
 2Q�6Q   $ 	#FFBFBFBF��6`   5&      �� 5'   
   -   5        $ 
ExitButton��5'      $��E��6%   $��Right=�61   $��	0,40,10,0q�6M   $	��Top=�6`   $��21��6x   $��25��6�   $��0q�6�   ���	#FF707070
���   �$��Calibri)�6�   ��6�   Z�  5(        5)      $	 330Q�6#   $ 2Q�63   $		 0.5Q�6C   $ 	#FFBFBFBF��6Q   $
 1Q�6c   5+      d� 5,   
   -   5         d�Name$ ShowDopToggleButton��5,      $	��|||��64   $��	10,0,10,5q�6C    J� RenderTransformOrigin$ 
0.713,1.36&�6V   $��Bottom=�6�   $��12��6�   $y�Hidden=�6�   ��6y   Z�  5-        5.      $
 10Q�6#   $
 -330Q�63   $ 7Q�6D   50      �� 51   
   -	   5        $ SpeakTextButton��52      $��S��6'   $
��Left=�64   $��137.783,40,0,0q�6O   $	��Top=�6g   $��24.621��6   $��25��6�   $��0q�6�   $��Calibri)�6�   ��53      �� 54       56        57      $	 330Q�6#   $ 3Q�63   $		 0.5Q�6C   $
 2Q�6Q   $ 	#FFBFBFBF��6`   59      5;      5<      
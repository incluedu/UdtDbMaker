   M S B A M L   `   `   `  ����B  >DbMaker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DbMakerDbMaker  5   	       DbMaker.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:DbMaker     5   	   Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5   	     � Icon$  Resources/logo64px.png��5	   '    � Title 6	   �� *WindowTitle+.��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��* �6   .+�5   
   o� $��0��6   $��0��6   .@�5      m� $��_Project��6   .@�5      m� -   5        $��E_xit��5      6*   5      5      c� 5   
   $��1��6   $��0��6    `� IsLocked . .@�5      �� -   5          FontAwesome.WPF.Awesome   Content$
 Play=�5      $��5q�6/    c� OverflowMode$ Never=�6R    � ToolTip$ 	Create DB��5      �� 5      -   5        $	 Cog=�5      $��5q�6.   $ Never=�6S   $ Settings��5      �� 5       $��
DB Number:��6   �� 5!      $	��100��6   ��6"   �� *
DbNumber+ �� Mode$ TwoWay=��� 5"      $��	UDT Name:��6   �� 5#      $	��150��6   ��6"   �� *	UdtName+$ TwoWay=�5$      �� 5&   
   $��2��6   $��0��6"   .@�5'      �� $��Input��6   .��5(      �� -   5        $��inputTextBox��5(      	 �� AcceptsReturn	 . "
 �� VerticalScrollBarVisibility$

 Auto=�6C   $ �� HorizontalScrollBarVisibility$
 Auto=�5)      5*      �� 5+      -   5        $��outputTabItem��5+      $��Output��6+   .��5,      �� -   5        $��outputTextBox��5,      	 . $

 Auto=�6D   $
 Auto=�5-      5.      5/      �� 51   
   $��3��6   $��0��6!   .@�52      �� .��53      �� -   5        $��lblStatusBar��53      $��Status:��60   54      55      56      57      
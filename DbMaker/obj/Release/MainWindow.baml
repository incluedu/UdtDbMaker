   M S B A M L   `   `   `  ���� B  >DbMaker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:DbMakerDbMaker      DbMaker.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:DbMaker     Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/    � Icon$  Resources/logo64px.png�� � Title �� *WindowTitle+.���  � RowDefinitions �� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto � � ColumnDefinitions �� $��* �.+�o� $��0��$��0��.@�m� $��_Project��.@�m� -   $��E_xit��c� $��1��$��0�� `� IsLocked . .@��� -     FontAwesome.WPF.Awesome   Content$
 Play=�$��5q� c� OverflowMode$ Never=� � ToolTip$ 	Create DB���� -   $	 Cog=�$��5q�$ Never=�$ Settings���� $��
DB Number:���� $	��100������ *
DbNumber+ �� Mode$ TwoWay=��� $��	UDT Name:���� $	��150������ *	UdtName+$ TwoWay=��� $��2��$��0��.@��� $��Input��.���� -   $��inputTextBox��	 �� AcceptsReturn	 . "
 �� VerticalScrollBarVisibility$

 Auto=�$ �� HorizontalScrollBarVisibility$
 Auto=��� -   $��outputTabItem��$��Output��.���� -   $��outputTextBox��	 . $

 Auto=�$
 Auto=��� $��3��$��0��.@��� .���� -   $��lblStatusBar��$��Status:��
   M S B A M L   `   `   `  ????H  DWPF_Personnel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WPF_PersonnelWPF_Personnel  5   	       WPF_Personnel.MainWindow   5   	   _ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:WPF_Personnel     5   	     ? Title$0  *Персонал отдела кадров??5	   	    ? 
ResizeMode$ CanMinimize=?6(    ? SizeToContent$ WidthAndHeight=?6A    ? WindowStartupLocation$ CenterScreen=?6`   .??5
      ? .+?5   
   ?? $??20q?6   
???????._?5      ??  ?? Orientation$ 
Horizontal=?6   .+?5      &   System.Windows.Controls.DataGrid  -   5        $??staff_department??5         
IsReadOnly$
 True??63      AutoGenerateColumns$ False??6E   
???????$	??400??6t   $	??670??6?   $??0 0 20 0q?6?      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$3 -Идентификатор работника??6-   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6N   ?? *identificator+6r     5      $ Имя??6-   	 6:   ?? *name+6U     5      $ Фамилия??6-   	 6>   ?? *	last_name+6^     5      $ Отчество??6-   	 6?   ?? *
patronymic+6`     5      $ Дата рождения??6-   	 6D   ?? *
date_birth+6e     5      $! Номер телефона??6-   	 6E   ?? *number_phone+6h     5      $ 
Отдел??6-   	 6<   ?? *group+6X   5      ?? 5      .+?5      ?? $??
Поиск??6   $??12(?6(   $
??10 0q?66   ?? 5      -   5        
 ??Name$
 	boxsearch??5       ?? TextWrapping$
 Wrap=?6-   $??16(?6A   $??25??6O   $	??250??6[   $
??10 0q?6g   6u   ?? 5      -   5         ??Name$	 add??5      $??Добавить??6&   $??10q?69   
??????$??1??6]   $??50??6m   $	??Top=?6y   $??Right=?6?   $	??250??6?   6?   ?? 5      -   5        $ refresh??5      $??Обновить??6*   $??10q?6=   
??????$??1??6a   $??Right=?6q   $	??250??6?   $??50??6?   $	??Top=?6?   6?   ?? 5      -   5        $ excel??5      $??Экспорт в Excel??6(   $??10q?6B   
??????$??1??6f   $??50??6v   $	??Top=?6?   $??Right=?6?   $	??250??6?   6?   ?? 5      -   5        $
 json??5      $??Экспорт в JSON??6'   $??10q?6@   
??????$??1??6d   $??50??6t   $	??Top=?6?   $??Right=?6?   $	??250??6?   6?   5      5       5!      5#      5$      
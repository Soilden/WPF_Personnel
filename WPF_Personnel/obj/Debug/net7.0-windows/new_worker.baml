   M S B A M L   `   `   `  ????H  DWPF_Personnel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WPF_PersonnelWPF_Personnel  5   	       WPF_Personnel.new_worker   5   	   _ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:WPF_Personnel     5   	     ? Title$<  6Добавление нового сотрудника??5	   	    ? 
ResizeMode$ CanMinimize=?6.    ? SizeToContent$ WidthAndHeight=?6G    ? WindowStartupLocation$ CenterScreen=?6f   .??5
      ? .+?5   
   ?? $??20q?6   
??????? ?? Padding$ 10q?60    ?? CornerRadius$ 10??6=   ._?5      ?? .+?5      ?? $B??<Введите Идентификатор работника??6   $??12(?6B   $??	20,10,0,0q?6P   ?? 5      -   5         ??Name$ boxidentificator??5       ?? TextWrapping$
 Wrap=?64   $??16(?6H   $	??400??6V   $??25??6b   $??
-250,0,0,0q?6n   ?? 5      $??Введите Имя??6   $??12(?6.   $??20,0,0,0q?6<   ?? 5      -   5        $ boxname??5      $
 Wrap=?6+   $??16(?6?   $	??400??6M   $??25??6Y   $??
-250,0,0,0q?6e   ?? 5      $#??Введите Фамилию??6   $??12(?62   $??20,0,0,0q?6@   ?? 5      -   5        $ boxlast_name??5      $
 Wrap=?60   $??16(?6D   $	??400??6R   $??25??6^   $??
-250,0,0,0q?6j   ?? 5      $%??Введите Отчество??6   $??12(?63   $??20,0,0,0q?6A   ?? 5      -   5        $ boxpatronymic??5      $
 Wrap=?61   $??16(?6E   $	??400??6S   $??25??6_   $??
-250,0,0,0q?6k   ?? 5      $,??&Введите Дату рожения??6   $??12(?67   $??20,0,0,0q?6E   ?? 5      -   5        $ boxdate_birth??5      $
 Wrap=?61   $??16(?6E   $	??400??6S   $??25??6_   $??
-250,0,0,0q?6k   ?? 5      $0??*Введите Номер телефона??6   $??12(?69   $??20,0,0,0q?6G   ?? 5      -   5        $ boxnumber_phone??5      $
 Wrap=?63   $??16(?6G   $	??400??6U   $??25??6a   $??
-250,0,0,0q?6m   ?? 5      $??Введите Отдел??6   $??12(?60   $??20,0,0,0q?6>   ?? 5      -   5        $ boxgroup??5      $
 Wrap=?6,   $??16(?6@   $	??400??6N   $??25??6Z   $??
-250,0,0,0q?6f   ?? 5      -   5         ??Name$
 save??5      $??Сохранить??6'   $??Center=?6;   $??450,-45,0,0q?6X   $	??Top=?6m   $??45??6?   $	??250??6?   6?   5      5      5      5      
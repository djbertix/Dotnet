   M S B A M L   `   `   `  ����G  CCisco_Script, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Cisco_Script.ViewModelCisco_Script.ViewModel  5   	   *    $Cisco_Script.ViewModel.AjouterDevice   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:Cisco_Script.ViewModel     5   	     � Title$&   ajouter périphériques Réseaux��5   	   $	��612��6/   $	��876��6<   .��5	      � .+�5
   
   �� -   5        $��Annuler��5
      $
��Left=�6#   $	��Top=�6>   $��75��6V   $��368,546,0,0q�6a   $��25��6�   �� 5   
   -   5        $��Réinitialiser��5      $
��Left=�6)   $	��Top=�6D   $��75��6\   $��448,546,0,0q�6g   $��25��6�   �� 5   
   -   5        $��ComboDevice��5   %    �� SelectedIndex$ 0��6   $
��Left=�68   $	��Top=�6S   $	��124��6k   $��
368,10,0,0q�6w   $��28��6�   $��14(�6�   �� 5   
   $��Périphérique :��6   $
��Left=�6)   $	��Top=�6D   $��
277,10,0,0q�6\   $��86��6p   $��28��6{   �� 5   
   $"��Securité du périphériques��6   $	��160��66   $��	10,43,0,0q�6C   $	��Top=�6V   $
��Left=�6n   $	��678��6�   .��5      � .+�5      �� $��
Hostname :��6   $
��Left=�6-   $	��Top=�6H   $��	10,10,0,0q�6`   $	��102��6s   $��23��6   �� 5      $��Password Enable :��6   $
��Left=�64   $	��Top=�6O   $��	10,38,0,0q�6g   $	��102��6z   $��23��6�   �� 5      $��Password VTY :��6   $
��Left=�61   $	��Top=�6L   $��	10,66,0,0q�6d   $	��102��6w   $��23��6�   �� 5      $��Password Console :��6   $
��Left=�65   $	��Top=�6P   $��5,94,0,0q�6h   $	��112��6z   $��23��6�   �� 5      -   5        $��hostname_texbox��5      $
��Left=�61   $��23��6L   $��
117,10,0,0q�6X    �� TextWrapping$
 Wrap=�6l   $�� ��6�   $	��Top=�6�   $	��123��6�   G� 5      -   5        $��pass1��5      $
��Left=�6+   $	��Top=�6F   $	��123��6^    J� RenderTransformOrigin$ 0.488,0.389&�6j   $��
117,38,0,0q�6�   $��23��6�   G� 5      -   5        $��pass2��5      $
��Left=�6+   $	��Top=�6F   $	��123��6^   $ 0.488,0.389&�6j   $��
117,66,0,0q�6�   $��23��6�   G� 5      -   5        $��pass3��5      $
��Left=�6+   $	��Top=�6F   $	��123��6^   $ 0.488,0.389&�6j   $��
117,94,0,0q�6�   $��23��6�   �� 5      $��
Banniere :��6   $
��Left=�6-   $��
264,10,0,0q�6H   $	��Top=�6\   $��23��6t   �� 5      -   5        $��banniere_textbox��5   >   " �� VerticalScrollBarVisibility$
 Auto=�6   $
��Left=�6V   $	��110��6q   $��
331,10,0,0q�6~   $
 Wrap=�6�   $7��1Unauthorized access to this device is prohibited!��6�   $	��Top=�6�   $	��325��6�    �� 	UndoLimit$ 96��6  5      5      �� 5   
   $��Interface Listes��6   $��
10,208,0,0q�6-   $
��Left=�6A   $	��523��6\   $	��317��6h   $	��Top=�6u   .��5      � .+�5      &   System.Windows.Controls.DataGrid  -	   5        $��dataGrid_interface��5      $
��10,0q�65   $	��265��6C   $	��Top=�6P   $   HorizontalScrollBarVisibility$
 Auto=�6h   "   VerticalScrollBarVisibility$
 Auto=�6�      
IsReadOnly . 6�   �� 5      -
   5        $��
ajouterbtn��5      $��Ajouter��6+   $
��Left=�6=   $��75��6X   $��194,270,0,0q�6x   $��24��6�   $	��Top=�6�   	 � ToolTip$,	 &ajouter une interface dans la datagrid��6�   �� 5       -   5        $��modifierbtn��5       $��Modifier��6,   $
��Left=�6?   $��75��6Z   $��274,270,0,0q�6z   $��24��6�   $	��Top=�6�   $<	 6Modifier l'interface séléectionnée dans la datagrid��6�   �� 5!      -   5        $��supprimerbtn��5!      $��	Supprimer��6-   $
��Left=�6A   $��75��6\   $��354,270,0,0q�6|   $��24��6�   $	��Top=�6�   $=	 7Supprimer l'interface séléectionnée dans la datagrid��6�   �� 5"      -   5        $��	clonerbtn��5"      $��Cloner��6*   $
��Left=�6;   $��75��6V   $��114,270,0,0q�6v   $��24��6�   $	��Top=�6�   $:	 4Cloner l'interface séléectionnée dans la datagrid��6�   5#      5$      �� 5%   
   $��693,43,10,0q�6   $��Autres options��6(   $	��160��6@   $	��Top=�6M   .��5&      � .+�5'      �� -   5        
 ��Name$
 domain_lookup��5'       d� 	IsChecked$
 TrueY�62   $��no ip-domain-lookup��6C   $
��Left=�6a   $	��Top=�6}   $	��141��6�   $��	10,10,0,0q�6�   $"	 Désactiver la recherche DNS��6�   $��2��6�   �� 5(      -   5        $
 switch_ipv6��5(      $��Compatible IPV6��60   $
��Left=�6J   $	��Top=�6f   $	��115��6~   $1	 +flasher l'os cisco et activer le sdm prefer��6�   $��	10,30,0,0q�6�   $��2��6�   �� 5)      -   5        $
 router_ipv6��5)      $��Routage IPV6��60   $
��Left=�6G   $	��Top=�6c   $	��115��6{   $	 Ipv6 uniscast-routing��6�   $��	10,50,0,0q�6�   $��2��6�   5*      5+      �� 5,   
   $��Routage du router��6   $��538,208,0,0q�6.   $	��317��6C   $	��Top=�6P   $
��Left=�6h   $	��320��6�   .��5-      � $
��Left=�6   $	��308��6.   .+�5.        -   5        $��Datagrid_Route��5.       . $��
10,0,10,30q�6C   �� 5/      -   5        $��AjouterRouteBtn��5/      $��Ajouter route��60   $
��Left=�6H   $��81��6c   $��
10,270,0,0q�6�   $,	 &ajouter une interface dans la datagrid��6�   �� 50      -   5        $��modifRouteBtn��50      $��Modifier route��6.   $
��Left=�6G   $��96��6b   $��
96,270,0,0q�6�   $<	 6Modifier l'interface séléectionnée dans la datagrid��6�   �� 51      -   5        $��suppRouteBtn��51      $��Supprimer route��6-   $
��Left=�6G   $	��101��6b   $��197,270,0,0q�6�   $=	 7Supprimer l'interface séléectionnée dans la datagrid��6�   52      53      �� 54   
   -   5        $��	Confirmer��54      $
��Left=�6%   $	��Top=�6@   $��75��6X   $��288,546,0,0q�6c   $��25��6�   55      56      
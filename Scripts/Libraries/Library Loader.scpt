FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
Library Loader
v1.1
Dov Frankel, 2013

loadScript() handler adapted from code at http://codemunki.com


*** Instructions ***

Copy the compiled version (.scpt) into your ~/Library/Scripts directory, and then include it in your scripts like so:

property LibLoader : load script file ((path to scripts folder from user domain as text) & "Library Loader.scpt")

You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:

property LibName : LibLoader's loadScript("Folder Name:Some Cool Script.applescript")
     � 	 	, 
 L i b r a r y   L o a d e r 
 v 1 . 1 
 D o v   F r a n k e l ,   2 0 1 3 
 
 l o a d S c r i p t ( )   h a n d l e r   a d a p t e d   f r o m   c o d e   a t   h t t p : / / c o d e m u n k i . c o m 
 
 
 * * *   I n s t r u c t i o n s   * * * 
 
 C o p y   t h e   c o m p i l e d   v e r s i o n   ( . s c p t )   i n t o   y o u r   ~ / L i b r a r y / S c r i p t s   d i r e c t o r y ,   a n d   t h e n   i n c l u d e   i t   i n   y o u r   s c r i p t s   l i k e   s o : 
 
 p r o p e r t y   L i b L o a d e r   :   l o a d   s c r i p t   f i l e   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " L i b r a r y   L o a d e r . s c p t " ) 
 
 Y o u   c a n   l o a d   c o m p i l e d   s c r i p t s   ( . s c p t )   o r   p l a i n   t e x t   s c r i p t s   ( . a p p l e s c r i p t ) .   M a k e   s u r e ,   t h o u g h ,   t h a t   y o u r   . a p p l e s c r i p t   f i l e s   a r e   e n c o d e d   a s   e i t h e r   M a c   ( w h a t   A p p l e S c r i p t   E d i t o r   u s e s )   U T F - 8   ( i f   y o u   u s e   a n o t h e r   t e x t   e d i t o r ) .   A n y   s c r i p t s   l o a d e d   a r e   e x p e c t e d   t o   b e   i n s t a l l e d   i n t o   y o u r   S c r i p t s   d i r e c t o r y .   U s e   t h e   l i n e   b e l o w   t o   r e f e r e n c e   t h e   s c r i p t : 
 
 p r o p e r t y   L i b N a m e   :   L i b L o a d e r ' s   l o a d S c r i p t ( " F o l d e r   N a m e : S o m e   C o o l   S c r i p t . a p p l e s c r i p t " ) 
   
  
 l     ��������  ��  ��        l     ��  ��    ^ X Loads any script to use as a script property, with a path relative to ~/Library/Scripts     �   �   L o a d s   a n y   s c r i p t   t o   u s e   a s   a   s c r i p t   p r o p e r t y ,   w i t h   a   p a t h   r e l a t i v e   t o   ~ / L i b r a r y / S c r i p t s      l      ��  ��    ] W
property LibName : LibLoader's loadScript("Folder Name:Some Cool Script.applescript")
     �   � 
 p r o p e r t y   L i b N a m e   :   L i b L o a d e r ' s   l o a d S c r i p t ( " F o l d e r   N a m e : S o m e   C o o l   S c r i p t . a p p l e s c r i p t " ) 
      i         I      �� ���� 0 
loadscript 
loadScript   ��  o      ���� (0 scriptrelativepath scriptRelativePath��  ��    k     �       l     ��������  ��  ��         l    
 ! " # ! r     
 $ % $ c      & ' & n     ( ) ( I    �� *���� 40 filealiasinscriptsfolder fileAliasInScriptsFolder *  +�� + o    ���� (0 scriptrelativepath scriptRelativePath��  ��   )  f      ' m    ��
�� 
ctxt % o      ���� $0 scriptfiletoload scriptFileToLoad "   to be safe     # � , ,    t o   b e   s a f e      - . - Q    � / 0 1 / r     2 3 2 I   �� 4��
�� .sysoloadscpt        file 4 4    �� 5
�� 
alis 5 o    ���� $0 scriptfiletoload scriptFileToLoad��   3 o      ���� 0 scriptobject scriptObject 0 R      ���� 6
�� .ascrerr ****      � ****��   6 �� 7��
�� 
errn 7 d       8 8 m      �������   1 l    � 9 : ; 9 k     � < <  = > = r     # ? @ ? m     ! A A � B B   @ o      ���� 0 
scripttext 
scriptText >  C D C Q   $ G E F G E k   ' 3 H H  I J I l  ' '�� K L��   K ( " Try reading as Mac encoding first    L � M M D   T r y   r e a d i n g   a s   M a c   e n c o d i n g   f i r s t J  N�� N r   ' 3 O P O I  ' 1�� Q R
�� .rdwrread****        **** Q 4   ' +�� S
�� 
alis S o   ) *���� $0 scriptfiletoload scriptFileToLoad R �� T��
�� 
as   T m   , -��
�� 
ctxt��   P o      ���� 0 
scripttext 
scriptText��   F R      ���� U
�� .ascrerr ****      � ****��   U �� V��
�� 
errn V d       W W m      �������   G l  ; G X Y Z X k   ; G [ [  \ ] \ l  ; ;�� ^ _��   ^   Finally try UTF-8    _ � ` ` $   F i n a l l y   t r y   U T F - 8 ]  a�� a r   ; G b c b I  ; E�� d e
�� .rdwrread****        **** d 4   ; ?�� f
�� 
alis f o   = >���� $0 scriptfiletoload scriptFileToLoad e �� g��
�� 
as   g m   @ A��
�� 
utf8��   c o      ���� 0 
scripttext 
scriptText��   Y &   Error reading script's encoding    Z � h h @   E r r o r   r e a d i n g   s c r i p t ' s   e n c o d i n g D  i j i l  H H��������  ��  ��   j  k�� k Q   H � l m n l r   K ^ o p o I  K \�� q��
�� .sysodsct****        scpt q l  K X r���� r b   K X s t s b   K V u v u b   K T w x w b   K R y z y b   K P { | { b   K N } ~ } m   K L   � � �  s c r i p t   s ~ o   L M��
�� 
ret  | l 	 N O ����� � o   N O���� 0 
scripttext 
scriptText��  ��   z l 	 P Q ����� � o   P Q��
�� 
ret ��  ��   x m   R S � � � � �  e n d   s c r i p t   v o   T U��
�� 
ret  t m   V W � � � � �  r e t u r n   s��  ��  ��   p o      ���� 0 scriptobject scriptObject m R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 e   � �� � �
�� 
errn � o      ���� 0 n   � �� � �
�� 
ptlr � o      ���� 0 p   � �� � �
�� 
erob � o      ���� 0 f   � �� ���
�� 
errt � o      ���� 0 t  ��   n k   f � � �  � � � I  f y�� ���
�� .sysodlogaskr        TEXT � b   f u � � � b   f q � � � b   f o � � � b   f k � � � l 	 f i ����� � m   f i � � � � � . E r r o r   r e a d i n g   l i b r a r y   
��  ��   � o   i j���� $0 scriptfiletoload scriptFileToLoad � m   k n � � � � �  
 
 � o   o p���� 0 e   � m   q t � � � � � > 
 
 P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8��   �  ��� � R   z ��� � �
�� .ascrerr ****      � **** � o   � ����� 0 e   � �� � �
�� 
errn � o   ~ ���� 0 n   � �� � �
�� 
ptlr � o   � ����� 0 p   � �� � �
�� 
erob � o   � ����� 0 f   � �� ���
�� 
errt � o   � ����� 0 t  ��  ��  ��   :   text format script     ; � � � (   t e x t   f o r m a t   s c r i p t   .  � � � l  � ���������  ��  ��   �  ��� � L   � � � � o   � ����� 0 scriptobject scriptObject��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ] W Runs any script (and and returns its output) with a path relative to ~/Library/Scripts    � � � � �   R u n s   a n y   s c r i p t   ( a n d   a n d   r e t u r n s   i t s   o u t p u t )   w i t h   a   p a t h   r e l a t i v e   t o   ~ / L i b r a r y / S c r i p t s �  � � � l      �� � ���   � D >
LibLoader's runScript("Folder Name:Script Name.applescript")    � � � � | 
 L i b L o a d e r ' s   r u n S c r i p t ( " F o l d e r   N a m e : S c r i p t   N a m e . a p p l e s c r i p t " )  �  � � � i     � � � I      �� ����� 0 	runscript 	runScript �  ��� � o      ���� (0 scriptrelativepath scriptRelativePath��  ��   � k      � �  � � � r      � � � n     � � � I    �� ����� 40 filealiasinscriptsfolder fileAliasInScriptsFolder �  ��� � o    ���� (0 scriptrelativepath scriptRelativePath��  ��   �  f      � o      ���� 0 thescriptpath theScriptPath �  � � � r   	  � � � I  	 �� ���
�� .sysodsct****        scpt � o   	 
���� 0 thescriptpath theScriptPath��   � o      ���� 0 	theresult 	theResult �  � � � I   �� ���
�� .ascrcmnt****      � **** � o    ���� 0 	theresult 	theResult��   �  ��� � L     � � o    ���� 0 	theresult 	theResult��   �  � � � l     ��~�}�  �~  �}   �  � � � l     �|�{�z�|  �{  �z   �  � � � l      �y � ��y   �    Intended for Private use     � � � � 4   I n t e n d e d   f o r   P r i v a t e   u s e   �  � � � l     �x�w�v�x  �w  �v   �  � � � i     � � � I      �u ��t�u 40 filealiasinscriptsfolder fileAliasInScriptsFolder �  ��s � o      �r�r (0 scriptrelativepath scriptRelativePath�s  �t   � L      � � c      � � � l     ��q�p � b      � � � l    	 ��o�n � I    	�m � �
�m .earsffdralis        afdr � m     �l
�l afdrscr� � �k � �
�k 
from � m    �j
�j fldmfldu � �i ��h
�i 
rtyp � m    �g
�g 
ctxt�h  �o  �n   � o   	 
�f�f (0 scriptrelativepath scriptRelativePath�q  �p   � m    �e
�e 
alis �  � � � l     �d�c�b�d  �c  �b   �  � � � l     �a�`�_�a  �`  �_   �  � � � l      �^ � ��^   �   Test Calls     � � � �    T e s t   C a l l s   �  � � � l     �]�\�[�]  �\  �[   �  �  � l     �Z�Z   M Gproperty StringsLib : loadScript("Libraries:Strings utf16.applescript")    � � p r o p e r t y   S t r i n g s L i b   :   l o a d S c r i p t ( " L i b r a r i e s : S t r i n g s   u t f 1 6 . a p p l e s c r i p t " )  �Y l     �X�X   4 .my runScript("Test Return String.applescript")    � \ m y   r u n S c r i p t ( " T e s t   R e t u r n   S t r i n g . a p p l e s c r i p t " )�Y       �W	
�W   �V�U�T�V 0 
loadscript 
loadScript�U 0 	runscript 	runScript�T 40 filealiasinscriptsfolder fileAliasInScriptsFolder	 �S �R�Q�P�S 0 
loadscript 
loadScript�R �O�O   �N�N (0 scriptrelativepath scriptRelativePath�Q   	�M�L�K�J�I�H�G�F�E�M (0 scriptrelativepath scriptRelativePath�L $0 scriptfiletoload scriptFileToLoad�K 0 scriptobject scriptObject�J 0 
scripttext 
scriptText�I 0 e  �H 0 n  �G 0 p  �F 0 f  �E 0 t   �D�C�B�A�@ A�?�>�= �< � ��;�: � � ��9�8�7�6�5�4�D 40 filealiasinscriptsfolder fileAliasInScriptsFolder
�C 
ctxt
�B 
alis
�A .sysoloadscpt        file�@   �3�2�1
�3 
errn�2�(�1  
�? 
as  
�> .rdwrread****        **** �0�/�.
�0 
errn�/�\�.  
�= 
utf8
�< 
ret 
�; .sysodsct****        scpt�: 0 e   �-�,
�- 
errn�, 0 n   �+�*
�+ 
ptlr�* 0 p   �)�(
�) 
erob�( 0 f   �'�&�%
�' 
errt�& 0 t  �%  
�9 .sysodlogaskr        TEXT
�8 
errn
�7 
ptlr
�6 
erob
�5 
errt�4 �P �)�k+  �&E�O *�/j E�W wX  �E�O *�/��l E�W X  	*�/��l E�O ��%�%�%�%�%�%j E�W 1X  a �%a %�%a %j O)a �a �a �a �a �O�
 �$ ��#�"�!�$ 0 	runscript 	runScript�# � �    �� (0 scriptrelativepath scriptRelativePath�"   ���� (0 scriptrelativepath scriptRelativePath� 0 thescriptpath theScriptPath� 0 	theresult 	theResult ���� 40 filealiasinscriptsfolder fileAliasInScriptsFolder
� .sysodsct****        scpt
� .ascrcmnt****      � ****�! )�k+  E�O�j E�O�j O� � ����� 40 filealiasinscriptsfolder fileAliasInScriptsFolder� ��   �� (0 scriptrelativepath scriptRelativePath�   �� (0 scriptrelativepath scriptRelativePath ��������

� afdrscr�
� 
from
� fldmfldu
� 
rtyp
� 
ctxt� 
� .earsffdralis        afdr
�
 
alis� ������ �%�&ascr  ��ޭ
GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex/      U      -��`�0��x�5�[   res://Main.tscn �      �      S#�,�QYh��+7   res://Menu.gd.remap  A             ��U���5Yp�Z��gh   res://Menu.gdc  0      �      ��ϳ�Ɏ�s�eU(�$   res://TransitionContainer.gd.remap  @A      .       Y��F��O���y��>�5    res://TransitionContainer.gdc   !      �      �S���p��g��    res://TransitionContainer.tscn  �,      �      ���
I�f�$efj�Kb~   res://default_env.tres  `.      �       um�`�N��<*ỳ�8   res://icon.png  pA      �      G1?��z�c��vN��   res://icon.png.import   p<      �      �����%��(#AB�   res://menu_panel_style.tres �>      I      �K����=н�"c   res://panel_style.tres  @@      �       5�A?�Cr>�ˠ�\�x   res://project.binary`N      J      D��~��M6��s��        [gd_scene load_steps=5 format=2]

[ext_resource path="res://TransitionContainer.tscn" type="PackedScene" id=1]
[ext_resource path="res://Menu.gd" type="Script" id=2]
[ext_resource path="res://panel_style.tres" type="StyleBox" id=3]
[ext_resource path="res://menu_panel_style.tres" type="StyleBox" id=4]

[node name="Main" type="Node"]

[node name="CanvasLayer" type="CanvasLayer" parent="."]

[node name="Margin" type="MarginContainer" parent="CanvasLayer"]
anchor_right = 1.0
anchor_bottom = 1.0
custom_constants/margin_right = 8
custom_constants/margin_top = 8
custom_constants/margin_left = 8
custom_constants/margin_bottom = 8
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Container" type="CenterContainer" parent="CanvasLayer/Margin"]
margin_left = 8.0
margin_top = 8.0
margin_right = 1016.0
margin_bottom = 592.0

[node name="Menu" type="PanelContainer" parent="CanvasLayer/Margin/Container"]
margin_left = 389.0
margin_top = 155.0
margin_right = 619.0
margin_bottom = 429.0
custom_styles/panel = ExtResource( 4 )
script = ExtResource( 2 )

[node name="Layout" type="VBoxContainer" parent="CanvasLayer/Margin/Container/Menu"]
margin_left = 4.0
margin_top = 4.0
margin_right = 226.0
margin_bottom = 270.0

[node name="Label" type="Label" parent="CanvasLayer/Margin/Container/Menu/Layout"]
margin_right = 222.0
margin_bottom = 25.0
text = "This is the status bar"

[node name="MenuTransition" parent="CanvasLayer/Margin/Container/Menu/Layout" instance=ExtResource( 1 )]
margin_top = 33.0
margin_right = 222.0
margin_bottom = 233.0
rect_min_size = Vector2( 140, 200 )
transition_time = 0.3

[node name="Main" type="PanelContainer" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition"]
margin_right = 222.0
margin_bottom = 200.0
custom_styles/panel = ExtResource( 3 )

[node name="Layout" type="VBoxContainer" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/Main"]
margin_left = 4.0
margin_top = 16.0
margin_right = 218.0
margin_bottom = 184.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/Main/Layout"]
margin_left = 80.0
margin_right = 134.0
margin_bottom = 25.0
size_flags_horizontal = 6
size_flags_vertical = 1
text = "Main"

[node name="ButtonA" type="Button" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/Main/Layout"]
margin_top = 33.0
margin_right = 214.0
margin_bottom = 70.0
text = "Menu A"

[node name="ButtonB" type="Button" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/Main/Layout"]
margin_top = 78.0
margin_right = 214.0
margin_bottom = 115.0
text = "Menu B"

[node name="MenuA" type="PanelContainer" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition"]
margin_left = 224.0
margin_right = 446.0
margin_bottom = 200.0
custom_styles/panel = ExtResource( 3 )

[node name="Layout" type="VBoxContainer" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuA"]
margin_left = 4.0
margin_top = 16.0
margin_right = 218.0
margin_bottom = 184.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuA/Layout"]
margin_left = 65.0
margin_right = 148.0
margin_bottom = 25.0
size_flags_horizontal = 6
size_flags_vertical = 1
text = "Menu A"

[node name="BackButton" type="Button" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuA/Layout"]
margin_top = 33.0
margin_right = 214.0
margin_bottom = 70.0
text = "Back"

[node name="MenuB" type="PanelContainer" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition"]
margin_left = 224.0
margin_right = 446.0
margin_bottom = 200.0
custom_styles/panel = ExtResource( 3 )

[node name="Layout" type="VBoxContainer" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuB"]
margin_left = 4.0
margin_top = 16.0
margin_right = 218.0
margin_bottom = 184.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuB/Layout"]
margin_left = 65.0
margin_right = 148.0
margin_bottom = 25.0
size_flags_horizontal = 6
size_flags_vertical = 1
text = "Menu B"

[node name="ButtonB2" type="Button" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuB/Layout"]
margin_top = 33.0
margin_right = 214.0
margin_bottom = 70.0
text = "Menu B2"

[node name="BackButton" type="Button" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuB/Layout"]
margin_top = 78.0
margin_right = 214.0
margin_bottom = 115.0
text = "Back"

[node name="MenuB2" type="PanelContainer" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition"]
margin_left = 224.0
margin_right = 446.0
margin_bottom = 200.0
custom_styles/panel = ExtResource( 3 )

[node name="Layout" type="VBoxContainer" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuB2"]
margin_left = 4.0
margin_top = 16.0
margin_right = 218.0
margin_bottom = 184.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuB2/Layout"]
margin_left = 59.0
margin_right = 155.0
margin_bottom = 25.0
size_flags_horizontal = 6
size_flags_vertical = 1
text = "Menu B2"

[node name="BackButton" type="Button" parent="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuB2/Layout"]
margin_top = 33.0
margin_right = 214.0
margin_bottom = 70.0
text = "Back"

[node name="Bottom" type="Label" parent="CanvasLayer/Margin/Container/Menu/Layout"]
margin_left = 70.0
margin_top = 241.0
margin_right = 151.0
margin_bottom = 266.0
size_flags_horizontal = 4
text = "Bottom"

[connection signal="pressed" from="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/Main/Layout/ButtonA" to="CanvasLayer/Margin/Container/Menu" method="_on_ButtonA_pressed"]
[connection signal="pressed" from="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/Main/Layout/ButtonB" to="CanvasLayer/Margin/Container/Menu" method="_on_ButtonB_pressed"]
[connection signal="pressed" from="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuA/Layout/BackButton" to="CanvasLayer/Margin/Container/Menu" method="_on_BackButton_pressed"]
[connection signal="pressed" from="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuB/Layout/ButtonB2" to="CanvasLayer/Margin/Container/Menu" method="_on_ButtonB2_pressed"]
[connection signal="pressed" from="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuB/Layout/BackButton" to="CanvasLayer/Margin/Container/Menu" method="_on_BackButton_pressed"]
[connection signal="pressed" from="CanvasLayer/Margin/Container/Menu/Layout/MenuTransition/MenuB2/Layout/BackButton" to="CanvasLayer/Margin/Container/Menu" method="_on_MenuB2_BackButton_pressed"]
               GDSC            b      �������������Ķ�   ��������������ض   �����¶�   �������������ض�   �����϶�   �������ö���   ������������������Ҷ   ������������ض��   ������������������Ҷ   ������������������Ҷ���   ���������������������Ҷ�   �������������¶�    ���������������������������Ҷ��      Main      MenuA         MenuB         MenuB2                                                   !   	   (   
   )      /      6      7      =      D      E      K      R      S      Y      `      3YY5;�  W�  �  YY0�  PQV�  �  T�  PQYY0�  PQV�  �  T�  P�  QYY0�  PQV�  �  T�  P�  QYY0�	  PQV�  �  T�  P�  QYY0�
  PQV�  �  T�  PQYY0�  PQV�  �  T�  P�  QY`     GDSC   %      j   
     ������ڶ   �����ض�   ����ض��   ��������������Ӷ   ��������������ض   �����������ض���   ������������ض��   ���������������ڶ���   ����������Ӷ   �����Ӷ�   �������������¶�   �����������Ҷ���   ����Ķ��   ������¶   ���������������������Ҷ�   ������Ӷ   �����϶�   ����������Ҷ   ������������Ŷ��   �������ö���   ���Ӷ���   ��������Ӷ��   ζ��   �����������Ӷ���   �������ض���   �����������ض���   ������������ڶ��   ����Ҷ��   ������ڶ   ������������ض��   ������������ض��   �������Ӷ���   ��������Ӷ��   ���ƶ���   �������������������϶���   ����¶��   �������������¶�      ?      visibility_changed        _on_visibility_changed                            Could not find control named "        " in children              Could not find control at path:       rect_position                                                       	       
   %      &      +      ,      2      D      P      T      Y      Z      `      d      h      i      o      s      ~            �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4     5   
  6     7     8     9     :     ;   &  <   /  =   0  >   9  ?   >  @   ?  A   C  B   J  C   K  D   P  E   W  F   Y  G   Z  H   `  I   b  J   c  K   k  L   q  M   r  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f     g     h     i     j   6Y3YY5;�  W�  YY8;�  V�  YY;�  V�  Y;�  V�  Y;�  V�  YY;�  VYY0�  PQV�  &�	  T�
  PQ�  P�  RR�  QV�  ;�  �  P�  RR�  Q�  &�  V�  �D  P�  QYY0�  PQV�  &�  V�  �  PQYY0�  PQV�  �  PQ�  �  P�  T�  &�  (�  QYY0�  PQV�  �  �  P�  T�  �  R�  Q�  �  �  P�  R�  Q�  �  �  P�  T�  �  �  R�  QYYY0�  PQV�  �  PQ�  �  P�  QYY0�  P�  V�  QV�  ;�  �  PQ�  �  &�  V�  ;�  V�  �  )�  �  V�  &�  4V�  ;�  �  <�  �  T�  �  �  �  T�  �  �  �  &�  V�  �  �  �  �  '�  T�  �  V�  �  �  �  �  &�  V�  �  T�  �  �  �  &�  �  �  �  T�  V�  �?  P�  R�  R�  QYY0�  P�  V�  QV�  ;�  �  �  �  &�  V�  �  �  P�  Q�  �  &�  V�  �?  P�	  R�  Q�  .�  �  &�  �  V�  .�  �  &�  T�   PQV�  �  T�!  PQ�  �  �  T�"  P�  R�
  R�  R�  R�  Q�  �  T�"  P�  R�
  R�  R�  R�  Q�  �  T�#  PQ�  �  �  �  YY0�$  P�  V�  QV�  ;�  �  �  �  &�  V�  �  �  P�  Q�  �  &�  V�  �?  P�	  R�  Q�  .�  �  &�  �  V�  .�  �  &�  T�   PQV�  �  T�!  PQ�  �  �  T�"  P�  R�
  R�  R�  R�  Q�  �  T�"  P�  R�
  R�  R�  R�  Q�  �  T�#  PQ�  �  �  �  YY`          [gd_scene load_steps=2 format=2]

[ext_resource path="res://TransitionContainer.gd" type="Script" id=1]

[node name="TransitionContainer" type="Container"]
margin_top = 18.0
margin_right = 133.0
margin_bottom = 18.0
rect_clip_content = true
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Tween" type="Tween" parent="."]

[connection signal="resized" from="." to="." method="_on_resized"]
         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[gd_resource type="StyleBoxFlat" format=2]

[resource]
content_margin_left = 4.0
content_margin_right = 4.0
content_margin_top = 4.0
content_margin_bottom = 4.0
bg_color = Color( 0.105882, 0.105882, 0.105882, 1 )
corner_radius_top_left = 2
corner_radius_top_right = 2
corner_radius_bottom_right = 2
corner_radius_bottom_left = 2
       [gd_resource type="StyleBoxFlat" format=2]

[resource]
content_margin_left = 4.0
content_margin_right = 4.0
content_margin_top = 16.0
content_margin_bottom = 16.0
bg_color = Color( 0.105882, 0.105882, 0.105882, 1 )
         [remap]

path="res://Menu.gdc"
 [remap]

path="res://TransitionContainer.gdc"
  �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      application/config/name         Menu Transition Test   application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     build_info/package/version             build_info/package/build_date         2021/07/08 02:56:05    build_info/source/commit0      (   306d211e4215374500bcf9dfaffb6e3cdfed08cd   display/window/dpi/allow_hidpi            gui/theme/use_hidpi         )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres        
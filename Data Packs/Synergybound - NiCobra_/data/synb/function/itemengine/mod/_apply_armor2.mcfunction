# /!\ Uncompiled
# As : player
# Args :
#   - head (macro)
#   - chest (macro)
#   - legs (macro)
#   - feet (macro)
#   - head_color (macro)
#   - chest_color (macro)
#   - legs_color (macro)
#   - feet_color (macro)
##

$item replace entity @s armor.head with $(head)[unbreakable={},lore=[{"text":"Cosmetic only.","color":"gray"}],attribute_modifiers=[{id:"test",operation:"add_value",amount:0,type:"armor"},{id:"test",operation:"add_value",amount:0,type:"armor_toughness"},{id:"test",operation:"add_value",amount:0,type:"knockback_resistance"}],tooltip_display={hidden_components:["attribute_modifiers","unbreakable","dyed_color"]},dyed_color=$(head_color)]
$item replace entity @s armor.chest with $(chest)[unbreakable={},lore=[{"text":"Cosmetic only.","color":"gray"}],attribute_modifiers=[{id:"test",operation:"add_value",amount:0,type:"armor"},{id:"test",operation:"add_value",amount:0,type:"armor_toughness"},{id:"test",operation:"add_value",amount:0,type:"knockback_resistance"}],tooltip_display={hidden_components:["attribute_modifiers","unbreakable","dyed_color"]},dyed_color=$(chest_color)]
$item replace entity @s armor.legs with $(legs)[unbreakable={},lore=[{"text":"Cosmetic only.","color":"gray"}],attribute_modifiers=[{id:"test",operation:"add_value",amount:0,type:"armor"},{id:"test",operation:"add_value",amount:0,type:"armor_toughness"},{id:"test",operation:"add_value",amount:0,type:"knockback_resistance"}],tooltip_display={hidden_components:["attribute_modifiers","unbreakable","dyed_color"]},dyed_color=$(legs_color)]
$item replace entity @s armor.feet with $(feet)[unbreakable={},lore=[{"text":"Cosmetic only.","color":"gray"}],attribute_modifiers=[{id:"test",operation:"add_value",amount:0,type:"armor"},{id:"test",operation:"add_value",amount:0,type:"armor_toughness"},{id:"test",operation:"add_value",amount:0,type:"knockback_resistance"}],tooltip_display={hidden_components:["attribute_modifiers","unbreakable","dyed_color"]},dyed_color=$(feet_color)]
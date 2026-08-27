# /!\ Uncompiled
# As : player
# Args :
#   - hp (macro)
#   - reward (macro)
#   - dmg_whole (macro)
#   - dmg_decimal (macro)
#   - atk_speed (macro)
#   - magic (macro)
#   - shield_delay_whole (macro)
#   - shield_delay_decimal (macro)
#   - ammo (macro)
#   - mov_speed (macro)
##

$item replace entity @s hotbar.7 with minecraft:paper[\
    item_name=[{"bold":true,"color":"white","italic":false,"text":"Your Stats"}], \
    lore=\
    [[{"color":"gray","italic":false,"text":"Max Health : "},{"color":"yellow","italic":false,"bold":true,"text":"$(hp)"}], \
    [{"color":"gray","italic":false,"text":"Reward Heal : "},{"color":"green","italic":false,"bold":true,"text":"$(reward)"}], \
    [{"color":"gray","italic":false,"text":"Base Damage : "},{"color":"red","italic":false,"bold":true,"text":"$(dmg_whole).$(dmg_decimal)"}], \
    [{"color":"gray","italic":false,"text":"Attack Speed : "},{"color":"aqua","italic":false,"bold":true,"text":"$(atk_speed_whole).$(atk_speed_decimal)"}], \
    [{"color":"gray","italic":false,"text":"Magic : "},{"color":"light_purple","italic":false,"bold":true,"text":"$(magic)"}], \
    [{"color":"gray","italic":false,"text":"Shield Cooldown : "},{"color":"blue","italic":false,"bold":true,"text":"$(shield_delay_whole).$(shield_delay_decimal)s"}], \
    [{"color":"gray","italic":false,"text":"Arrow Capacity : "},{"color":"white","italic":false,"bold":true,"text":"$(ammo)"}], \
    [{"color":"gray","italic":false,"text":"Movement Speed : "},{"color":"gold","italic":false,"bold":true,"text":"$(mov_speed)"}], \
    ]] 1
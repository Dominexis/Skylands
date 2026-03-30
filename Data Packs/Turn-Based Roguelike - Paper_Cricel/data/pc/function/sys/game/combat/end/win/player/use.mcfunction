
# effect
clear @s
function pc:sys/object/passive/use {type:end_combat}

    # Inventory
function pc:sys/item/return/inventory

    # HP
scoreboard players operation #this sl.id = @s sl.id
execute as @e[predicate=pc:object/ally_player,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s sl.id = #this sl.id run function pc:sys/game/combat/end/win/player/2

scoreboard players operation @s pc.hp = #value pc.hp
scoreboard players operation @s pc.hpmax = #value pc.hpmax

# fx
tellraw @s {text:"* You Finish the Game!",color:"gray"}
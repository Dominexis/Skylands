
# if (combat not start) :
execute unless score $combat.start pc.game matches 1 run return fail

# else :
clear @s *[!minecraft:custom_data~{data:{}}]

execute as @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/utils/passive/use {passive:"end_turn"}
execute if entity @e[tag=pc.select.object,predicate=pc:sys/entity/any_real,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/grid/select/mob/reset
function pc:sys/grid/select/clear
kill 20060423-0-0-1-0

scoreboard players reset @s pc.entity.inturn

# fx
tellraw @s {nbt:"sys.combat.finish_turn",storage:"pc:lang",interpret:1b}
playsound minecraft:item.trident.riptide_1 master @s ~ ~1024 ~ 0 1 1

# if (has other queue player) :
execute if entity @a[tag=pc.turn.queue,predicate=pc:sys/player/ingame,predicate=sl:player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run return run function pc:sys/combat/turn/player/use

# else :
schedule function pc:sys/combat/turn/2 1s
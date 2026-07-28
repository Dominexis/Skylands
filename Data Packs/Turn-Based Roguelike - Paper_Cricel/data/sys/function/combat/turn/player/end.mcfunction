
# if (combat not start) :
execute unless score $combat.start pc.game matches 1 run return fail

# else :
clear @s *[!minecraft:custom_data~{data:{}}]

execute as @e[tag=pc.player.now,type=armor_stand,limit=1] at @s run function sys:utils/passive/use {passive:"end_turn"}
execute if entity @e[tag=pc.select.object,predicate=sys:entity/any_real,limit=1] run function sys:grid/select/mob/reset
function sys:grid/select/clear
kill 20060423-0-0-1-0

scoreboard players reset @s pc.entity.inturn

# fx
tellraw @s {nbt:"sys.combat.finish_turn",storage:"pc:lang",interpret:1b}
playsound minecraft:item.trident.riptide_1 master @s ~ ~1024 ~ 0 1 1

# if (has other queue player) :
execute if entity @a[tag=pc.turn.queue,predicate=sys:player/ingame,predicate=sl:player,limit=1] run return run function sys:combat/turn/player/use

# else :
schedule function sys:combat/turn/2 1s
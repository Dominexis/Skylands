
function sys:player/data/load

scoreboard players operation #self sl.id = @s sl.id
execute as @e[predicate=sys:entity/player,predicate=sys:owner/player,limit=1] at @s run function sys:combat/end/win/player/2

scoreboard players reset @s pc.entity.inturn
scoreboard players operation @s pc.hpmax = #value pc.hpmax
function sys:player/inventory/load

# fx
tellraw @s {nbt:"sys.combat.finish_game",storage:"pc:lang",interpret:1b}

function pc:sys/player/data/load

scoreboard players operation #self sl.id = @s sl.id
execute as @e[predicate=pc:sys/entity/player,predicate=pc:sys/owner/player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/combat/end/win/player/2

scoreboard players reset @s pc.entity.inturn
scoreboard players operation @s pc.hpmax = #value pc.hpmax
function pc:sys/player/inventory/load

# fx
tellraw @s {nbt:"sys.combat.finish_game",storage:"pc:lang",interpret:1b}
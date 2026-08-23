
scoreboard players set #value pc.main 999
function pc:sys/entity/repair/complete

execute as @e[predicate=pc:sys/entity/player,predicate=pc:sys/owner/player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:entity/repair/rugged/1/2b

function pc:sys/utils/passive/use {passive:on_death}
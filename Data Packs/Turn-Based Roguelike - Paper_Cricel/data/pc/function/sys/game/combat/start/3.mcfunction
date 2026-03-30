
# effect
function pc:sys/object/summon/start_game/use
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/all] at @s run function pc:sys/object/passive/use {type:"start_combat"}
function pc:sys/game/combat/round

playsound minecraft:item.goat_horn.sound.0 master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 1 1
execute if data storage pc:settings {gameplay:{tutorial:1b}} if score $game.level pc.main matches 0 run schedule function pc:sys/game/combat/start/tutorial 2s
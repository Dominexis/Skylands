
# effect
function pc:sys/object/summon/start_game/use
execute as @e[predicate=pc:object/all,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/passive/use {type:start_combat}
function pc:sys/game/combat/round

playsound minecraft:item.goat_horn.sound.0 master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1 1
execute if data storage pc:settings {gameplay:{tutorial:true}} if score $game.level pc.main matches 0 run schedule function pc:sys/game/combat/start/tutorial 2s
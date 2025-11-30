
# effect
execute if score @s pc.trigger matches 00001..10000 run function pc:sys/lobby/gameplay/maps/trigger
execute if score @s pc.trigger matches 10001..20000 run function pc:sys/lobby/gameplay/settings/trigger

scoreboard players set @s pc.trigger 0

# fx
playsound minecraft:ui.button.click master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.5 2
playsound minecraft:block.note_block.chime master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.5 1
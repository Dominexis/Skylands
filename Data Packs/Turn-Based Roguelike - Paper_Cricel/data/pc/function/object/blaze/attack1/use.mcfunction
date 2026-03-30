
# fx
scoreboard players set $game.acting_time pc.main 40
execute rotated ~45 0 run function pc:object/blaze/attack1/fx/use
execute rotated ~ 0 run function pc:object/blaze/attack1/fx/use
execute rotated ~-45 0 run function pc:object/blaze/attack1/fx/use
playsound minecraft:entity.blaze.shoot master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.65 1.4 0.65
playsound minecraft:block.trial_spawner.spawn_item master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.25 0.75 0.25
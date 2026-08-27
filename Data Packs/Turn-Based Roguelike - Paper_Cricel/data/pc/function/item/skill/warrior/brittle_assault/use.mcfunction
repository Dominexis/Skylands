
execute store result score #damage pc.main run function pc:item/skill/warrior/brittle_assault/1/get with storage pc:temp rc_item
execute at @e[tag=pc.grid.atker,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:item/skill/warrior/brittle_assault/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.player.attack.sweep master @a ~ ~1024 ~ 0 1 1
playsound minecraft:item.trident.throw master @a ~ ~1024 ~ 0 0 0.5
playsound minecraft:entity.parrot.hurt master @a ~ ~1024 ~ 0 0 0.5
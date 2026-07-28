
execute store result score #damage pc.main run function item:skill/warrior/brittle_assault/1/get with storage pc:temp rc_item
execute at @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] run function item:skill/warrior/brittle_assault/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.player.attack.sweep master @a ~ ~1024 ~ 0 1 1
playsound minecraft:item.trident.throw master @a ~ ~1024 ~ 0 0 0.5
playsound minecraft:entity.parrot.hurt master @a ~ ~1024 ~ 0 0 0.5
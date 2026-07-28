
scoreboard players set @s pc.entity.victim 1

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~1 ~ facing entity @e[tag=pc.atker,type=end_crystal,limit=1] feet run function entity:ender_dragon/crystal/buff2/beam

data modify entity @s Tags set from storage pc:temp intent.tags
tag @s add pc.intent
tag @s add pc.intent.now
scoreboard players operation @s pc.origin.id = #intent.owner pc.entity.id

execute if data storage pc:temp intent{facing:1b} as @e[tag=pc.grid.self,limit=1] facing entity @s eyes run rotate @s ~180 0
execute if data storage pc:temp intent.avail.potential run tag @s add pc.intent.potential
execute if data storage pc:temp intent.nearest.index store result score @s pc.grid.nearest run data get storage pc:temp intent.nearest.index

data modify entity @s data set from storage pc:temp intent
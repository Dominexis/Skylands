
execute unless entity @s[tag=pc.entity.repair.curious.fully_repaired] run function pc:entity/repair/curious/2/use

# fx
particle minecraft:block{block_state:{Name:"minecraft:anvil"}} ~ ~ ~ 0 0 0 0 10 force
playsound minecraft:entity.item.break master @a ~ ~1024 ~ 0 0 0.25
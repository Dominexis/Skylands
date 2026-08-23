## (exe) entity

execute unless data entity @s data.hidden.hp run function pc:sys/entity/infobar/hpvalue
execute unless data entity @s data.hidden.hp run function pc:sys/entity/infobar/hpbar
execute if data entity @s data.effects run function pc:sys/entity/infobar/effect

data modify storage pc:temp infobar.result set value ["",{nbt:"infobar.hpvalue",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{nbt:"infobar.hpbar.result",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{nbt:"infobar.effect",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}]

execute on passengers if entity @s[tag=pc.entity.infobar,type=minecraft:text_display] run data modify entity @s text set from storage pc:temp infobar.result
data remove storage pc:temp infobar
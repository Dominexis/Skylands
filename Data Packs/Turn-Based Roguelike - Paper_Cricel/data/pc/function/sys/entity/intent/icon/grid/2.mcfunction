# {damage:3,text:['damage','attack']}

scoreboard players operation @s pc.entity.id = #self pc.entity.id
execute if data storage pc:temp intent.damage run function pc:sys/entity/intent/icon/grid/damage/use

function pc:sys/entity/intent/icon/interpret/loop
execute if score #is_potential pc.main matches 1 run data modify storage pc:temp intent.result prepend value {text:"",color:"gray",shadow_color:1665878859}

data modify entity @s text set value ["",{text:"\uf003","font":"pc:sys/space",type:"text"},{nbt:"intent.result",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}]

tag @s remove pc.summon

data modify storage pc:temp effect set value {id:'strength',value:2}
function sys:effect/apply

# fx
function sys:fx/text/use {text:{nbt:"sys.fx.learned",storage:"pc:lang",interpret:1b}}
playsound minecraft:entity.villager.yes master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:entity.zombie.infect master @a ~ ~1024 ~ 0 1.25 1
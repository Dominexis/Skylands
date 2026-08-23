
function pc:sys/entity/dmg/modifiers/append {operation:"*",value:2}

scoreboard players set #value pc.main 1
function pc:sys/item/ep/gain

data modify entity @s data.hotbar.head.combat.count set value 0

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.frenzied",storage:"pc:lang",interpret:1b}}
playsound minecraft:entity.vex.charge master @a ~ ~1024 ~ 0 2 1
playsound minecraft:entity.zombie_villager.converted master @a ~ ~1024 ~ 0 1 1

particle minecraft:dust{color:[0.75,0,0],scale:1.5f} ~ ~1 ~ 0.3 0.4 0.3 0 30 force
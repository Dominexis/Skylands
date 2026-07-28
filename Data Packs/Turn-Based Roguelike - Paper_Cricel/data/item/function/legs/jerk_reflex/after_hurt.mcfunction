
scoreboard players set #value pc.main 1
function sys:utils/math/calculate {id:"entity @s data.hotbar.legs.combat.hurt"}

# fx
function sys:fx/text/use {text:{nbt:"sys.fx.reflex",storage:"pc:lang",interpret:1b}}
playsound minecraft:entity.breeze.hurt master @a ~ ~1024 ~ 0 1.5 0.25
playsound minecraft:item.armor.equip_chain master @a ~ ~1024 ~ 0 1.5 1
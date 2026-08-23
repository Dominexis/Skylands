
function pc:item/skill/warrior/parrying/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.allay.item_given master @a ~ ~1024 ~ 0 1 1
playsound minecraft:block.note_block.chime master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.item.pickup master @a ~ ~1024 ~ 0 0 1
playsound minecraft:item.lodestone_compass.lock master @a ~ ~1024 ~ 0 0.75 0.75
execute positioned ~ ~-2.75 ~ run function pc:item/skill/warrior/parrying/fx

# Pedestals
setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"Paper_Cricel",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"pc:loot_chest",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:3,sizeY:3,sizeZ:3,strict:0b}
setblock ~ ~1 ~ minecraft:redstone_block
setblock ~ ~2 ~ minecraft:chest[facing=south,type=single,waterlogged=false]{CustomName:{text:"",extra:[{text:"\ue040\ue002",font:"pc:default"},"Choose an Item"]}}

# Loot
$data modify storage pc:temp loot.type set from storage pc:game loot.$(chest)
data modify storage pc:temp loot.slot set value [10,13,16]
execute positioned ~ ~2 ~ run function pc:sys/utils/loot_table/use

item modify block ~ ~2 ~ container.10 {"function":"minecraft:set_custom_data","tag":{"pc":{"sys.loot":true}}}
item modify block ~ ~2 ~ container.13 {"function":"minecraft:set_custom_data","tag":{"pc":{"sys.loot":true}}}
item modify block ~ ~2 ~ container.16 {"function":"minecraft:set_custom_data","tag":{"pc":{"sys.loot":true}}}
execute positioned ~ ~2 ~ run function pc:sys/item/show_feature/tip_item/use

# Money
function pc:sys/game/combat/loot/money with block ~ ~2 ~

# fx
particle minecraft:dust_color_transition{from_color:[0.329,0.302,0.298],scale:4.0f,to_color:[0.941,0.859,0.714]} ~ ~1 ~ 1 1 1 0 200 force
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] at @s run playsound minecraft:block.chest.open master @s ~ ~ ~ 1 1
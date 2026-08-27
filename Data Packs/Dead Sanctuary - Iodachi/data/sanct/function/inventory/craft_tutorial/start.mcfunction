execute if entity @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,advancements={sanct:craft_tutorial/crafted_with_bone=true},limit=1] run return 1
execute if entity @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,advancements={sanct:craft_tutorial/craft={started=true}},limit=1] run return 1

execute store result score #var sanct.numbers run clear @s minecraft:bone 0
execute if score #var sanct.numbers matches ..2 run return run advancement revoke @s only sanct:craft_tutorial/start

tellraw @s ["",{text:"[§c§nBleeding Edge§r]",hover_event:{action:"show_item",id:"netherite_shovel",components:{item_name:"§c§nBleeding Edge",lore:["§7§oSweep attacks hit all enemies within 8 blocks.","","§7When in Main Hand:"," §28 Attack Damage"," §22.6 Attack Speed","§9+1 Sweeping Damage Ratio","§9+8 Sweeping Range"],tooltip_display:{hidden_components:["attribute_modifiers"]}}}}," §7§oPsst, hey! For no particular reason, I think you should craft that Meat Sword with a bone"]

playsound minecraft:entity.breeze.idle_ground neutral @s ~ ~ ~ 1 1.5
advancement grant @s only sanct:craft_tutorial/craft started
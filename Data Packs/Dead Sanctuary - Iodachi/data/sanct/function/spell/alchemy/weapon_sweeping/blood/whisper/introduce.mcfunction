advancement grant @s only sanct:tags weapon_sweeping_introduce
execute if score #weapon_sweeping_introduce sanct.numbers matches 3.. run return 1

execute unless score #weapon_sweeping_introduce sanct.numbers matches 2.. run playsound minecraft:entity.breeze.idle_ground neutral @s ~ ~ ~ 1 1.5

# First introduction
execute unless score #weapon_sweeping_introduce sanct.numbers matches 1.. run scoreboard players add #player_power sanct.numbers 1600
execute unless score #weapon_sweeping_introduce sanct.numbers matches 1.. run tellraw @s ["",{text:"[§c§nBleeding Edge§r]",hover_event:{action:"show_item",id:"netherite_shovel",components:{item_name:"§c§nBleeding Edge",lore:["§7§oSweep attacks hit all enemies within 8 blocks.","","§7When in Main Hand:"," §28 Attack Damage"," §22.6 Attack Speed","§9+1 Sweeping Damage Ratio","§9+8 Sweeping Range"],tooltip_display:{hidden_components:["attribute_modifiers"]}}}}," §oFINALLY, it feels SO good to be back! Let's bring this world to its knees, New Master!"]

# Add dialogue to storage
execute unless score #weapon_sweeping_introduce sanct.numbers matches 1.. run data modify storage sanct:storage root.weapon_sweeping_whisper.list set value ["Ahem. Ahem! AHEM! Sorry, toad in my throat","This castle-fortress-thing-place must've been real nice back in the day","Totem's kinda hot. Is that a weird thing to say? Am I being weird?","I mean, I don't like to be MEAN, but... you know what I mean?","Never lend Crossbow money, she still owes me 7 bones","Uh oh, that's not goo- I mean, uh... Everything's fine, keep doing what you're doing!","I could really go for a sandwich right about now","We'd have been rich if those gold apple trees weren't dead, real shame","Ow, I think something broke!","You'd better clean me good after this","What are the moral implications of mutilating the corpses of famous philanthropes?","You know, you're actually the spitting image of my 165th master","Ooh, good hit! Right through the coccyx!","Why're you looking for clouds inside bottles, anyway?","If you ever feel like treasure hunting, let me know! I'm actually part shovel on my father's side","140 of my 164 previous masters have been eaten by giant space monsters. Just thought I'd warn you","I've heard void runes taste like white chocolate, but I've never had a chance to try one"]
execute unless score #weapon_sweeping_introduce sanct.numbers matches 1.. run return run scoreboard players set #weapon_sweeping_introduce sanct.numbers 1

# Second item
execute store result score #var sanct.numbers if entity @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,predicate=sanct:spell/weapon_sweeping/blood_inventory]
execute if score #var sanct.numbers matches 2.. run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,predicate=sanct:spell/weapon_sweeping/blood_inventory] ["",{text:"[§c§nBleeding Edge§r]",hover_event:{action:"show_item",id:"netherite_shovel",components:{item_name:"§c§nBleeding Edge",lore:["§7§oSweep attacks hit all enemies within 8 blocks.","","§7When in Main Hand:"," §28 Attack Damage"," §22.6 Attack Speed","§9+1 Sweeping Damage Ratio","§9+8 Sweeping Range"],tooltip_display:{hidden_components:["attribute_modifiers"]}}}}," §oWoah, I've been duplicated! ...This feels so weird!"]
execute if score #var sanct.numbers matches 2.. run playsound minecraft:entity.breeze.idle_ground neutral @s ~ ~ ~ 1 1.5
execute if score #var sanct.numbers matches 2.. run scoreboard players add #player_power sanct.numbers 1600
execute if score #var sanct.numbers matches 2.. run return run scoreboard players set #weapon_sweeping_introduce sanct.numbers 3

# Second player
execute unless score #weapon_sweeping_introduce sanct.numbers matches 2.. run tellraw @s ["",{text:"[§c§nBleeding Edge§r]",hover_event:{action:"show_item",id:"netherite_shovel",components:{item_name:"§c§nBleeding Edge",lore:["§7§oSweep attacks hit all enemies within 8 blocks.","","§7When in Main Hand:"," §28 Attack Damage"," §22.6 Attack Speed","§9+1 Sweeping Damage Ratio","§9+8 Sweeping Range"],tooltip_display:{hidden_components:["attribute_modifiers"]}}}}," §oHey, you're not New Master! Eh, whatever I guess"]
execute unless score #weapon_sweeping_introduce sanct.numbers matches 2.. run scoreboard players set #weapon_sweeping_introduce sanct.numbers 2
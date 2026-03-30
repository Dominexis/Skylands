tellraw @s ["",{text:"[§c§nBleeding Edge§r]",hover_event:{action:"show_item",id:"netherite_shovel",components:{item_name:"§c§nBleeding Edge",lore:["§7§oSweep attacks hit all enemies within 8 blocks.","","§7When in Main Hand:"," §28 Attack Damage"," §22.6 Attack Speed","§9+1 Sweeping Damage Ratio","§9+8 Sweeping Range"],tooltip_display:{hidden_components:["attribute_modifiers"]}}}}," §oELLIE NOOO!"]
playsound minecraft:entity.blaze.ambient neutral @s ~ ~ ~ 1 2
advancement revoke @s only sanct:spell/weapon_sweeping_blood/_zombie_armor_kill

# Set wait time for normal whispering
scoreboard players set #weapon_sweeping_whisper_delay sanct.numbers 1
execute if data storage sanct:storage root.weapon_sweeping_whisper.list[0] run schedule function sanct:spell/alchemy/weapon_sweeping/blood/whisper/delay 200
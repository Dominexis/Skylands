scoreboard players set @s did.player.torch.placed 1
execute if score @s did.player.torch_burn_time matches 1.. run setblock ~ ~ ~ light[level=15]
execute unless score @s did.player.torch_burn_time matches 1.. run setblock ~ ~ ~ air

summon minecraft:interaction ~ ~-0.05 ~ {Tags:["did.torch.interact"],height:1.1f,width:1.1f}
execute if score @s did.player.torch_burn_time matches 1.. run summon minecraft:item_display ~ ~ ~ {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.5f, 0.0f]},item_display: "fixed",Tags:["did.torch.display","did.torch.display.lit"],item:{id:"minecraft:clock",components:{item_model:"did:torch"},count:1}}
execute unless score @s did.player.torch_burn_time matches 1.. run summon minecraft:item_display ~ ~ ~ {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.5f, 0.0f]},item_display: "fixed",Tags:["did.torch.display","did.torch.display.unlit"],item:{id:"minecraft:clock",components:{item_model:"did:torch_unlit"},count:1}}

scoreboard players operation @n[type=interaction, tag=did.torch.interact,distance=..0.5] did.player.id = @s did.player.id

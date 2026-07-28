
execute on passengers if entity @s[tag=pc.entity.ender_dragon.skin] run item replace entity @s contents with paper[custom_model_data={colors:[16726072]},item_model="mob:ender_dragon"]
data remove entity @s data.schedule[{func:"execute on passengers if entity @s[tag=pc.entity.ender_dragon.skin] run item replace entity @s contents with paper[item_model='mob:ender_dragon']"}]
function sys:entity/schedule/use {func:"execute on passengers if entity @s[tag=pc.entity.ender_dragon.skin] run item replace entity @s contents with paper[item_model='mob:ender_dragon']",delay:10}

# fx
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:block.netherite_block.place master @a ~ ~1024 ~ 0 0 1
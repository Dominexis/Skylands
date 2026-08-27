
advancement revoke @s only sanct:spell/totem/place

# Return if dead
execute if score @s sanct.respawn_timer matches 1.. run return run give @s minecraft:raw_iron[minecraft:item_name="§bTotem",minecraft:custom_data={totem:{}},minecraft:lore=[[{keybind:"key.use",color:gray,italic:true}," to place or pick up the totem."],"§7§oWhen placed, grants the §eStrength§7§o effect","§7§oto all players within 4 blocks."],minecraft:max_stack_size=1,minecraft:consumable={animation:"none",consume_seconds:0,has_consume_particles:false,sound:"minecraft:block.stone.place"},minecraft:item_model="minecraft:pufferfish_spawn_egg"]

# Otherwise create totem
playsound minecraft:entity.elder_guardian.death block @a[distance=..16] ~ ~ ~ 1 2
effect give @s minecraft:strength 1 0
effect give @s minecraft:resistance 1 0

summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,attributes:[{id:"minecraft:scale",base:0}],Tags:["sanct.totem","sanct.require_grass_check"],Passengers:[{id:"minecraft:interaction",width:0.4,height:1.2,Tags:["sanct.totem"],Passengers:[{id:"minecraft:block_display",Tags:["sanct.totem","sanct.totem_particle"],block_state:{Name:"minecraft:sandstone_wall"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0.5f,0.2f,0.5f],scale:[0.6f,0.6f,0.6f],translation:[-0.165f,-1f,0.165f]}},{id:"minecraft:item_display",Tags:["sanct.totem"],item:{id:"minecraft:prismarine_brick_slab"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.6f,0.6f,0.6f],translation:[0f,-0.97f,0f]}},{id:"minecraft:item_display",Tags:["sanct.totem"],item:{id:"minecraft:yellow_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f],translation:[0f,0.1f,0f]}}]}]}

execute as @e[type=minecraft:armor_stand,tag=sanct.totem,distance=0,limit=1] on passengers run team join sanct.spell.totem @s
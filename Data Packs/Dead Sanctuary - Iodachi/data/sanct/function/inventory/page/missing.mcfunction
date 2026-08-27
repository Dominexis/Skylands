clear @s minecraft:arrow[minecraft:custom_data~{stat_page:1b}]
kill @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:item,predicate=sanct:item/page_thrown]

summon minecraft:item ~ ~ ~ {Tags:["sanct.thrown_item"],Item:{id:"minecraft:egg",components:{"minecraft:item_model":"minecraft:air"}}}
item replace entity @e[type=minecraft:item,tag=sanct.thrown_item,distance=..0.1] contents from entity @s weapon.offhand

item replace entity @s[advancements={sanct:tags={shield=false}}] weapon.offhand with minecraft:arrow[minecraft:custom_data={stat_page:1b},minecraft:item_name="§d§nRituals:",minecraft:item_model="sanct:page",minecraft:max_stack_size=1]

item replace entity @s[advancements={sanct:tags={shield=true}}] weapon.offhand with minecraft:arrow[minecraft:custom_data={stat_page:1b},minecraft:item_name="§d§nRituals:",minecraft:item_model="sanct:shield",minecraft:banner_patterns=[{pattern:"minecraft:flow",color:"black"}],minecraft:max_stack_size=1,blocks_attacks={block_sound:"minecraft:entity.guardian.hurt"},minecraft:tooltip_display={hidden_components:["minecraft:banner_patterns"]}]

function sanct:inventory/page/update
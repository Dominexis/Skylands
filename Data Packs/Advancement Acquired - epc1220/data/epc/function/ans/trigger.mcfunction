$execute at @e[tag=l$(lvl),tag=ans] run setblock ~ ~-1 ~ minecraft:quartz_pillar
$execute at @e[tag=l$(lvl), tag=ans] run summon minecraft:text_display ~ ~1.75 ~ {text:{"text":"Check Answer","color":"green"},billboard:"vertical",Tags:["l$(lvl)","ans_text"]}
setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:red_concrete
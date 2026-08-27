
scoreboard players set #is_give pc.main 1

summon item ~ ~ ~ {Tags:[pc.temp],Item:{id:"paper",components:{item_model:"air"}}}
item replace entity @e[tag=pc.temp,type=item,distance=..0.1,limit=1] contents from entity @e[tag=pc.summon,type=item_display,distance=..0.1,limit=1] contents
tag @e[tag=pc.temp,type=item,distance=..0.1,limit=1] remove pc.temp

# testing macro value is "give"
return fail
$$(slot) 20060423 paper
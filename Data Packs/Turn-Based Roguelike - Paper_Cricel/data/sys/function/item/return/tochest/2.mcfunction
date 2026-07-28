
summon item ~ ~ ~ {Tags:[pc.temp2],Item:{id:"paper",components:{item_model:"air"}}}
$item replace entity @e[tag=pc.temp2,type=item,limit=1] contents from block $(pos) container.$(slot)
tag @e[tag=pc.temp2,type=item,limit=1] remove pc.temp2

summon item ~ ~ ~ {Tags:[pc.temp2],Item:{id:"paper",components:{item_model:"air"}}}
$item replace entity @e[tag=pc.temp2,type=item,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] contents from block $(pos) container.$(slot)
tag @e[tag=pc.temp2,type=item,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.temp2
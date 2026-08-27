## This function runs every tick at the center of the plot at Y=0 when the plot is on

execute positioned 2536 63 5608 run function pc:sys/main

# debug
#execute if entity @e[type=!player,tag=pc.summon,limit=1] as @e[tag=pc.summon] run tellraw @a ["",{text:"* Warning : Exist Summoning ",color:"red"},{selector:"@s"},"\n",{entity:"@s",nbt:"",color:"gray"}]
#execute if entity @e[type=!player,tag=pc.temp,limit=1] as @e[tag=pc.temp] run tellraw @a ["",{text:"* Warning : Exist Temp ",color:"red"},{selector:"@s"},"\n",{entity:"@s",nbt:"",color:"gray"}]

scoreboard players add @s pc.duration 1

summon item ~ ~ ~ {Tags:[pc.summon],PickupDelay:32767s,Age:5980s,Item:{id:"paper",components:{item_model:"pc:sys/option/money"}},Glowing:1b}

team join pc.yellow @e[tag=pc.summon,type=item,distance=..0.1,limit=1]
execute store result entity @e[tag=pc.summon,type=item,distance=..0.1,limit=1] Motion[0] float 0.01 run random value -15..15
execute store result entity @e[tag=pc.summon,type=item,distance=..0.1,limit=1] Motion[1] float 0.01 run random value 25..50
execute store result entity @e[tag=pc.summon,type=item,distance=..0.1,limit=1] Motion[2] float 0.01 run random value -15..15

tag @e[tag=pc.summon,type=item,distance=..0.1,limit=1] remove pc.summon
playsound minecraft:entity.item.pickup master @a ~ ~1024 ~ 0 2 1

execute if score @s pc.duration matches 20.. run kill
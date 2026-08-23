
summon marker ~ ~ ~ {Tags:[pc.fx,pc.skill.yama_double.new_turn,pc.summon]}

execute unless data entity @s data.effects[{id:'undying_shell'}] run scoreboard players operation @e[tag=pc.summon,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.target.id = @s pc.entity.id

tag @e[tag=pc.summon,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon

# fx
playsound minecraft:block.end_portal.spawn master @a ~ ~1024 ~ 0 1 0.25
playsound minecraft:entity.warden.emerge master @a ~ ~1024 ~ 0 2 1

execute rotated 0 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 10 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 20 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 30 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 40 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 50 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 60 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 70 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 80 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 90 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 100 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 110 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 120 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 130 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 140 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 150 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 160 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 170 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 180 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 190 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 200 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 210 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 220 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 230 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 240 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 250 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 260 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 270 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 280 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 290 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 300 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 310 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 320 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 330 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 340 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
execute rotated 350 0 run function pc:item/skill/warrior/yama_double/new_turn/fx/per/use
data remove storage pc:temp transformation
#/!\ Uncompiled
# As/At : [depends]
# Args :
#   - whole (macro)
#   - decimal (macro)
##

$execute if score @s synb.World.LastTickDmg matches 1.. run summon minecraft:text_display ~$(rand_x) ~$(rand_y) ~$(rand_z) {Tags:["synb.type.dmg_ind", "synb.tmp.new"],alignment:"center",billboard:"center",\
    text:{text:"+$(whole).$(decimal)",color:"green"}}
$execute if score @s synb.World.LastTickDmg matches -30..-1 run summon minecraft:text_display ~$(rand_x) ~$(rand_y) ~$(rand_z) {Tags:["synb.type.dmg_ind", "synb.tmp.new"],alignment:"center",billboard:"center",\
    text:{text:"-$(whole).$(decimal)",color:"yellow"}}
$execute if score @s synb.World.LastTickDmg matches -80..-31 run summon minecraft:text_display ~$(rand_x) ~$(rand_y) ~$(rand_z) {Tags:["synb.type.dmg_ind", "synb.tmp.new"],alignment:"center",billboard:"center",\
    text:{text:"-$(whole).$(decimal)",color:"gold"}}
$execute if score @s synb.World.LastTickDmg matches ..-81 run summon minecraft:text_display ~$(rand_x) ~$(rand_y) ~$(rand_z) {Tags:["synb.type.dmg_ind", "synb.tmp.new"],alignment:"center",billboard:"center",\
    text:{text:"-$(whole).$(decimal)",color:"red",bold:true}}

execute if score @s synb.World.LastTickDmg matches 1.. run scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.tmp.new] synb.World.DmgIndLife 13
execute if score @s synb.World.LastTickDmg matches -30..-1 run scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.tmp.new] synb.World.DmgIndLife 18
execute if score @s synb.World.LastTickDmg matches -80..-31 run scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.tmp.new] synb.World.DmgIndLife 23
execute if score @s synb.World.LastTickDmg matches ..-81 run scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.tmp.new] synb.World.DmgIndLife 30
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.tmp.new] remove synb.tmp.new
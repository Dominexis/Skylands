summon minecraft:marker ~ ~ ~ {Tags:[synb.type.item_associate,synb.item.firework.follower,synb.tmp.new]}
ride @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new,limit=1] mount @s
execute on origin run scoreboard players operation #id synb.Tmp.Expr = @s synb.IEPlayer.Registered
scoreboard players operation @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new,limit=1] synb.Item.firework.source_id = #id synb.Tmp.Expr
execute if score #independant synb.Tmp.Arg matches 1 run tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new,limit=1] add synb.attr.independant
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new] remove synb.tmp.new

tag @s add synb.item.firework.init
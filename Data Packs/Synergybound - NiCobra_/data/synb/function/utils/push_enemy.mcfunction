# As : enemy
# Args :
#   - push_ref (tag arg)
##

# Get coords
execute store result score #x synb.Tmp.Expr run data get entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.push_ref,limit=1] Pos[0] 1000
execute store result score #z synb.Tmp.Expr run data get entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.push_ref,limit=1] Pos[2] 1000
execute store result score #x2 synb.Tmp.Expr as @s run data get entity @s Pos[0] 1000
execute store result score #z2 synb.Tmp.Expr as @s run data get entity @s Pos[2] 1000

# Math
scoreboard players operation #x2 synb.Tmp.Expr -= #x synb.Tmp.Expr
scoreboard players operation #z2 synb.Tmp.Expr -= #z synb.Tmp.Expr

# Apply motion
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #x2 synb.Tmp.Expr
data modify entity @s Motion[1] set value 0.8d
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #z2 synb.Tmp.Expr
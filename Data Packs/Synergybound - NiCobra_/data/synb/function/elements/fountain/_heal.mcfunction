# As/At : player
##

scoreboard players operation #cost synb.Tmp.Expr = num2 synb.Const
# scoreboard players operation #cost synb.Tmp.Expr = @s synb.PSys.FountainTotal
# scoreboard players operation #cost synb.Tmp.Expr /= num8 synb.Const
# scoreboard players operation #cost synb.Tmp.Expr += num2 synb.Const

# >>> SPECIAL LOGIC : _hard_mode
scoreboard players operation #pow synb.Tmp.Arg = @s synb.IEItemCount._hard_mode
scoreboard players set #val synb.Tmp.Arg 3
function synb:utils/rec_exponent
execute if score @s synb.IEItemCount._hard_mode matches 1.. run scoreboard players operation #cost synb.Tmp.Expr *= #val synb.Tmp.Arg
# <<<

execute unless score @s synb.PSys.FountainCount >= #cost synb.Tmp.Expr run return 0

function synb:itemengine/player/heal {heal_amount:3}

scoreboard players add @s synb.PSys.FountainTotal 1
particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.puffer_fish.blow_up player @s ~ ~ ~ 0.5 1.5
scoreboard players operation @s synb.PSys.FountainCount -= #cost synb.Tmp.Expr

# >>> SPECIAL LOGIC : tank
execute store result storage synb.d:tmp args.heal_amount int 2 run scoreboard players get @s synb.IEItemCount.tank
execute if score @s synb.IEItemCount.tank matches 1.. run function synb:itemengine/player/heal with storage synb.d:tmp args
execute if score @s synb.IEItemCount.tank matches 1.. run return 1
# <<<

# Disable wave
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] if score @s synb.ASys.CurrentCycle = @s synb.ASys.MaxCycle \
    at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.wave_button,tag=synb.ctx.local,limit=1] run setblock ~ ~ ~ minecraft:air
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] add synb.attr.disable_special_wave
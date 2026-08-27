execute store result score #max_health synb.Tmp.Expr run attribute @s minecraft:max_health get
scoreboard players operation #max_health synb.Tmp.Expr *= num100 synb.Const
scoreboard players operation #percent synb.Tmp.Expr = @s synb.World.PreciseHealth
scoreboard players operation #percent synb.Tmp.Expr *= num10000 synb.Const
scoreboard players operation #percent synb.Tmp.Expr /= #max_health synb.Tmp.Expr

scoreboard players set #treshold synb.Tmp.Expr 10
scoreboard players operation #treshold synb.Tmp.Expr *= @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEStat.Magic
scoreboard players operation #treshold synb.Tmp.Expr *= @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEItemCount.reaper
scoreboard players add #treshold synb.Tmp.Expr 150

execute if score #treshold synb.Tmp.Expr matches 901.. run scoreboard players set #treshold synb.Tmp.Expr 900

execute if score #percent synb.Tmp.Expr > #treshold synb.Tmp.Expr run return 0

scoreboard players set @s synb.Item.reaper.delay 17
playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1 0.6
playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1 0.5
effect give @s minecraft:slowness infinite 2 true
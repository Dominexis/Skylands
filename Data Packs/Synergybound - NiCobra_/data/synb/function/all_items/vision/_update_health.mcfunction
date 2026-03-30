execute store result score #max_health synb.Tmp.Expr run attribute @s minecraft:max_health get
scoreboard players operation #max_health synb.Tmp.Expr *= num100 synb.Const
scoreboard players operation #percent synb.Tmp.Expr = @s synb.World.PreciseHealth
scoreboard players operation #percent synb.Tmp.Expr *= num10000 synb.Const
scoreboard players operation #percent synb.Tmp.Expr /= #max_health synb.Tmp.Expr

execute if score #percent synb.Tmp.Expr matches 000..049 run data modify storage synb.d:tmp args.hp_bar set value "⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 050..099 run data modify storage synb.d:tmp args.hp_bar set value "🟩⬜⬜⬜⬜⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 100..149 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 150..199 run data modify storage synb.d:tmp args.hp_bar set value "⬛🟩⬜⬜⬜⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 200..249 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 250..299 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛🟩⬜⬜⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 300..349 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 350..399 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛🟩⬜⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 400..449 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 450..499 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛🟩⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 500..549 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 550..599 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛🟩⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 600..649 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 650..699 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛⬛🟩⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 700..749 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜"
execute if score #percent synb.Tmp.Expr matches 750..799 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛⬛⬛🟩⬜⬜"
execute if score #percent synb.Tmp.Expr matches 800..849 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜"
execute if score #percent synb.Tmp.Expr matches 850..899 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛⬛⬛⬛🟩⬜"
execute if score #percent synb.Tmp.Expr matches 900..949 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜"
execute if score #percent synb.Tmp.Expr matches 950..999 run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛⬛⬛⬛⬛🟩"
execute if score #percent synb.Tmp.Expr matches 001000.. run data modify storage synb.d:tmp args.hp_bar set value "⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛"

data modify storage synb.d:tmp args.color set value "white"
execute if score @s synb.World.PreciseHealth <= @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEStat.RangedDmg run data modify storage synb.d:tmp args.color set value "yellow"

scoreboard players operation #hp_decimal synb.Tmp.Expr = @s synb.World.PreciseHealth
scoreboard players operation #hp_decimal synb.Tmp.Expr %= num10 synb.Const
execute store result storage synb.d:tmp args.hp_decimal int 1 run scoreboard players get #hp_decimal synb.Tmp.Expr
execute store result storage synb.d:tmp args.hp_whole int 0.1 run scoreboard players get @s synb.World.PreciseHealth

function synb:all_items/vision/_update_health2 with storage synb.d:tmp args

data modify entity @s CustomNameVisible set value 1b
tag @s add synb.item.vision.active
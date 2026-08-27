execute store result storage synb.d:tmp args.env byte 1 run scoreboard players get @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID
data modify storage synb.d:tmp args.idx set value 0
scoreboard players set #idx synb.Tmp.Arg 0
tellraw @s [{"text":"★ Thanks to multiple True Visions, you can also see into the future :\n","color":"white"}]
function synb:all_items/vision/outer_calls/_rec_pool with storage synb.d:tmp args
tellraw @s {"text":""}
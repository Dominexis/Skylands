# As/At : arena
##

# Set local to ALL
tag @e[type=!minecraft:player,distance=..45] add synb.ctx.local
tag @a[team=sl.player,distance=..45] add synb.ctx.local
execute if score @s synb.ASys.ArenaID matches 2 run function synb:arenasys/arena/arena2_special_local_cave
execute unless score @s synb.ASys.ArenaID matches 2 run function synb:arenasys/arena/arena2_special_local_cave_exclude

# Specials
function synb:itemengine/g_pre_tick_specials

# Tick
execute if score t2 synb.TickCycle matches 1 as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.onboard_button,tag=synb.ctx.local] at @s run function synb:arenasys/onboard/htick_onboarding
execute if entity @s[tag=synb.attr.active] run function synb:arenasys/arena/tick_arena
function synb:elements/collectible/g_tick

# >>> SPECIAL LOGIC : _hard_mode
scoreboard players operation @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.type.dropped_item,scores={synb.World.ItemTick=..190}] \
    synb.World.ItemTick += @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,limit=1,sort=random] synb.IEItemCount._hard_mode
# <<<

# Unset local
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.local] remove synb.ctx.local
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.local] remove synb.ctx.local
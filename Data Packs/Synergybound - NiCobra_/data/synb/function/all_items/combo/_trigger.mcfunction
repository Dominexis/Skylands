execute unless entity @s[tag=synb.item.combo.melee,tag=synb.item.combo.ranged,tag=synb.item.combo.shield] run return 0

tag @s remove synb.item.combo.melee
tag @s remove synb.item.combo.ranged
tag @s remove synb.item.combo.shield

# Actually the easiest solution to stack damage
scoreboard players operation #rec synb.Tmp.Arg = @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEItemCount.combo
function synb:all_items/combo/_rec_dmg

function synb:utils/visuals/summon_effect_proc {item_icon:"minecraft:leather_helmet"}
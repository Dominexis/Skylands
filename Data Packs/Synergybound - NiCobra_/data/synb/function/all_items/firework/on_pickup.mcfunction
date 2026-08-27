scoreboard players add @s synb.IEPlayer.CurrentAmmo 3
scoreboard objectives add synb.Item.firework.source_id dummy

tag @s add synb.item.firework.loaded

data modify storage synb.d:values item.firework.exp_shape set value ["small_ball","large_ball","star","creeper","burst"]
data modify storage synb.d:values item.firework.exp_colors set value [[16711680,16737792],[16737792,16772608],[16772608,10092288],[10092288,65348],[65348,65518],[65518,28671],[28671,2303],[2303,8913151],[8913151,16711901],[16711901,16711680]]
data modify storage synb.d:values item.firework.bool set value ["true","false"]
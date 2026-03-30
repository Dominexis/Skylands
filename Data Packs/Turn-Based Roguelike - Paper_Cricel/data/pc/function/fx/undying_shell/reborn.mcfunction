
# effect
$function pc:object/$(id)/summon
function pc:void
execute as @n[type=marker,tag=pc.grid,distance=..100] at @s run function pc:sys/grid/state/reset_occupy

# fx
particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.25 50 force
playsound minecraft:item.totem.use master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
particle item{item:"white_concrete"} ~2.0 ~ ~0.0 0 1 0 1 0 force
particle item{item:"white_concrete"} ~1.879 ~ ~0.684 0 1 0 1 0 force
particle item{item:"white_concrete"} ~1.532 ~ ~1.286 0 1 0 1 0 force
particle item{item:"white_concrete"} ~1.0 ~ ~1.732 0 1 0 1 0 force
particle item{item:"white_concrete"} ~0.347 ~ ~1.97 0 1 0 1 0 force
particle item{item:"white_concrete"} ~-0.347 ~ ~1.97 0 1 0 1 0 force
particle item{item:"white_concrete"} ~-1.0 ~ ~1.732 0 1 0 1 0 force
particle item{item:"white_concrete"} ~-1.532 ~ ~1.286 0 1 0 1 0 force
particle item{item:"white_concrete"} ~-1.879 ~ ~0.684 0 1 0 1 0 force
particle item{item:"white_concrete"} ~-2.0 ~ ~0.0 0 1 0 1 0 force
particle item{item:"white_concrete"} ~-1.879 ~ ~-0.684 0 1 0 1 0 force
particle item{item:"white_concrete"} ~-1.532 ~ ~-1.286 0 1 0 1 0 force
particle item{item:"white_concrete"} ~-1.0 ~ ~-1.732 0 1 0 1 0 force
particle item{item:"white_concrete"} ~-0.347 ~ ~-1.97 0 1 0 1 0 force
particle item{item:"white_concrete"} ~0.347 ~ ~-1.97 0 1 0 1 0 force
particle item{item:"white_concrete"} ~1.0 ~ ~-1.732 0 1 0 1 0 force
particle item{item:"white_concrete"} ~1.532 ~ ~-1.286 0 1 0 1 0 force
particle item{item:"white_concrete"} ~1.879 ~ ~-0.684 0 1 0 1 0 force
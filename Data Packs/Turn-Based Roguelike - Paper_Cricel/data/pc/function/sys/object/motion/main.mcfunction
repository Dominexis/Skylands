
# effect
scoreboard players add @s pc.duration 1
#tellraw @a ["Tick : ",{score:{name:"@s",objective:"pc.duration"}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
execute if score @s pc.duration matches 13.. run function pc:sys/object/motion/3
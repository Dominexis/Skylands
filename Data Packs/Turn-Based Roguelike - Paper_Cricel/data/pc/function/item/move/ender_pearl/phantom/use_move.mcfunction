
# if (no phantom) :
execute unless entity @e[tag=pc.entity.phantom,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run return run function pc:item/move/ender_pearl/phantom/summon

# else :
execute align xz run tp @e[tag=pc.entity.phantom,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~0.5 ~ ~0.5
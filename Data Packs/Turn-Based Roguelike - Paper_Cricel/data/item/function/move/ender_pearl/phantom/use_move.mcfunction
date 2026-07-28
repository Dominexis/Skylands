
# if (no phantom) :
execute unless entity @e[tag=pc.entity.phantom,type=armor_stand,limit=1] run return run function item:move/ender_pearl/phantom/summon

# else :
execute align xz run tp @e[tag=pc.entity.phantom,type=armor_stand,limit=1] ~0.5 ~ ~0.5

# is panic strike(臨時寫法)
execute if data storage pc:temp {damage:{source:{category:skill,item:panic_strike}}} run return run data modify storage pc:temp repair.item set value panic_strike

data modify storage pc:temp repair.category set from entity @p[predicate=sl:player,tag=pc.sys.passive,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] SelectedItem.components."minecraft:custom_data".pc.category
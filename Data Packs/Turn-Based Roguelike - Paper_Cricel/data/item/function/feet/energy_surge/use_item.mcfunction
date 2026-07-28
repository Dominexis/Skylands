
## save this item's durability when its Energy cost >= 2 (once per turn)
execute if score #epcost pc.main matches 2.. unless entity @s[tag=pc.feet.energy_surge.2.used] run function item:feet/energy_surge/2/use


scoreboard players remove #offset pc.main 1

data modify storage pc:temp actionbar.offset.front append value {text:"\ue003",font:"sys:space"}
data modify storage pc:temp actionbar.offset.back append value {text:"\uf003",font:"sys:space"}

execute if score #offset pc.main matches 1.. run function sys:player/title/rest_area/offset
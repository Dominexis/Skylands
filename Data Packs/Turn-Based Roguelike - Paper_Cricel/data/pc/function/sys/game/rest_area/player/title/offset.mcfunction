
# effect
scoreboard players remove #offset pc.main 1

data modify storage pc:temp actionbar.display.offset_front append value {text:"\ue003",font:"pc:default"}
data modify storage pc:temp actionbar.display.offset_back append value {text:"\uf003",font:"pc:default"}

execute if score #offset pc.main matches 1.. run function pc:sys/game/rest_area/player/title/offset

$scoreboard players set #value pc.main $(value)

# if (value < 0) :
$execute if score #value pc.main matches ..-1 run return run data modify storage pc:temp infobar.effect append value ["",{text:"$(value)",font:"sys:nouns",color:"red"}," "]

# else :
$data modify storage pc:temp infobar.effect append value ["",{text:"$(value)",font:"sys:nouns"}," "]
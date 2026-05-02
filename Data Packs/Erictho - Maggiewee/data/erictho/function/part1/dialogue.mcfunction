#execute if score @s erictho_dialogue matches 0 run trigger erictho_dialogue
#execute if score @s erictho_dialogue matches 1 run say yes

#does not like @a for if score
#execute if score @s[team=erictho_player] erictho_dialogue matches 0 run scoreboard players enable @a erictho_dialogue
#execute if score @s[team=erictho_player] erictho_dialogue matches 0 run tellraw @a[team=erictho_player] ["",{text:"Erictho: ",color:"dark_purple"},{text:"dialogue"},{text:" Next",bold:true,italic:true,color:"dark_green",click_event:{action:"run_command",command:"execute at @a run function erictho:dialogue/1"},hover_event:{action:"show_text",value:[{text:"Click to continue",italic:true,color:"blue"}]}}]

#part 1 plan-------------
#separate chamber/lobby area where it is connected to part1
#with a door that opens at end of dialogue to where player enters part1 (or tp if easier)
#erictho introduced and explain their objective
# end of dialogue, give soul particles around players?: function erictho:part1/loop
# and start checkpoint loop and kill when touch water: function erictho:part1/loop
# display scoreboard with objectives (collect all 6 bile)
# after all 6 is collected, skull is opened (structure block) with sound
#background sounds for ambiance: random on a loop

#welcome-----------------------
execute if score @s erictho_dialogue matches 0 at @s run scoreboard players enable @a erictho_dialogue

#tellraw of dialogue 1 with a "next" that is a command execute as @s if score @s erictho_dialogue matches 0 run
#function erictho:part1/next
execute if score @s erictho_dialogue matches 0 at @s as @s run tellraw @s ["say 1",{"bold":true,"click_event":{"action":"run_command","command":"execute as @s run function erictho:part1/next"},"color":"dark_green","hover_event":{"action":"show_text","value":[{"text":"next dialogue","color":"gold"}]},"text":" [next]"}]

#trigger sequence of event when score is # 

#to continue allow players to click next dialogue
execute if score @s erictho_dialogue matches 1 at @s run scoreboard players enable @a erictho_dialogue
#tellraw of dialogue 2 with a "next" that is a command execute as @s if score @s erictho_dialogue matches 1 run
#function erictho:part1/next
execute if score @s erictho_dialogue matches 1 at @s as @s run tellraw @s ["say 2",{"bold":true,"click_event":{"action":"run_command","command":"execute as @s run function erictho:part1/next"},"color":"dark_green","hover_event":{"action":"show_text","value":[{"text":"next dialogue","color":"gold"}]},"text":" [next]"}]


#tellraw of dialogue end without next
execute if score @s erictho_dialogue matches 2 at @s run say end

#sound and effects to open chamber to part 1 section

#display objectives

#start part 1 loop at end of dialogue
execute if score @s erictho_dialogue matches 2 as @s run function erictho:part1/loop
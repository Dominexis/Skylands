## Re-apply current-language text to the existing lobby entities (no re-summon).
## Called after switching pc:lang so every translated entity updates in place.

# text_display labels — re-set text so the nbt re-resolves with the new pc:lang
data modify entity @e[tag=pc.lobby.ui.author,type=text_display,limit=1] text set value [{text:"● ",color:"#72BD7A",type:"text"},{nbt:"sys.lobby.ui.author",storage:"pc:lang",interpret:1b,type:"nbt"},{text:" ●",color:"#72BD7A",type:"text"}]
data modify entity @e[tag=pc.lobby.ui.click_info,type=text_display,limit=1] text set value [{nbt:"sys.lobby.ui.click_info",storage:"pc:lang",interpret:1b,type:"nbt"}]
data modify entity @e[tag=pc.lobby.ui.character,type=text_display,limit=1] text set value [{text:"● ",color:"#72BD7A",type:"text"},{nbt:"sys.lobby.ui.character",storage:"pc:lang",interpret:1b,type:"nbt"},{text:" ●",color:"#72BD7A",type:"text"}]
data modify entity @e[tag=pc.lobby.ui.click_choose.char,type=text_display,limit=1] text set value [{nbt:"sys.lobby.ui.click_choose",storage:"pc:lang",interpret:1b,type:"nbt"}]
data modify entity @e[tag=pc.lobby.ui.gameplay,type=text_display,limit=1] text set value [{text:"● ",color:"#72BD7A",type:"text"},{nbt:"sys.lobby.ui.gameplay",storage:"pc:lang",interpret:1b,type:"nbt"},{text:" ●",color:"#72BD7A",type:"text"}]
data modify entity @e[tag=pc.lobby.ui.click_choose.game,type=text_display,limit=1] text set value [{nbt:"sys.lobby.ui.click_choose",storage:"pc:lang",interpret:1b,type:"nbt"}]
data modify entity @e[tag=pc.lobby.start_info,type=text_display,limit=1] text set value [{nbt:"sys.lobby.ui.select_first",storage:"pc:lang",interpret:1b,type:"nbt"}]

# CustomName entities — re-copy the literal from pc:lang
data modify entity @e[tag=pc.lobby.author,type=armor_stand,limit=1] CustomName set from storage pc:lang sys.lobby.name.author
data modify entity @e[tag=pc.lobby.char.warrior,type=armor_stand,limit=1] CustomName set from storage pc:lang sys.lobby.char.warrior
data modify entity @e[tag=pc.lobby.char.soon_1,type=armor_stand,limit=1] CustomName set from storage pc:lang sys.lobby.name.coming_soon.1
data modify entity @e[tag=pc.lobby.char.soon_2,type=armor_stand,limit=1] CustomName set from storage pc:lang sys.lobby.name.coming_soon.2
data modify entity @e[tag=pc.lobby.char.soon_3,type=armor_stand,limit=1] CustomName set from storage pc:lang sys.lobby.name.coming_soon.3
data modify entity @e[tag=pc.lobby.start,type=item_display,limit=1] CustomName set from storage pc:lang sys.lobby.name.start_game
data modify entity @e[tag=pc.lobby.maps,type=item_display,limit=1] CustomName set from storage pc:lang sys.lobby.name.maps
data modify entity @e[tag=pc.lobby.settings,type=item_display,limit=1] CustomName set from storage pc:lang sys.lobby.name.settings

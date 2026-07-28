
# Header
data modify storage pc:temp gameplay append value [" ",{text:"● ",color:"#72bd7a"},{nbt:"sys.lobby.settings.ascension.label",storage:"pc:lang",interpret:1b}]

# Tough Enemies
data modify storage pc:temp gameplay append value ["   ",{text:"● ",color:"#72bd7a"},{nbt:"sys.lobby.settings.ascension.tough_enemies.label",storage:"pc:lang",interpret:1b},{nbt:"sys.lobby.settings.false",storage:"pc:lang",interpret:1b,click_event:{action:"run_command",command:"/trigger pc.trigger set 11001"},hover_event:{action:"show_text",value:{nbt:"sys.lobby.ui.click_me",storage:"pc:lang",interpret:1b}}}]
execute if data storage pc:settings gameplay{tough_enemies:1b} run data modify storage pc:temp gameplay[-1][-1].nbt set value "sys.lobby.settings.true"

# Poor Elites
data modify storage pc:temp gameplay append value ["   ",{text:"● ",color:"#72bd7a"},{nbt:"sys.lobby.settings.ascension.poor_elites.label",storage:"pc:lang",interpret:1b},{nbt:"sys.lobby.settings.false",storage:"pc:lang",interpret:1b,click_event:{action:"run_command",command:"/trigger pc.trigger set 11002"},hover_event:{action:"show_text",value:{nbt:"sys.lobby.ui.click_me",storage:"pc:lang",interpret:1b}}}]
execute if data storage pc:settings gameplay{poor_elites:1b} run data modify storage pc:temp gameplay[-1][-1].nbt set value "sys.lobby.settings.true"

# Lost Slots
data modify storage pc:temp gameplay append value ["   ",{text:"● ",color:"#72bd7a"},{nbt:"sys.lobby.settings.ascension.lost_slots.label",storage:"pc:lang",interpret:1b},{nbt:"sys.lobby.settings.false",storage:"pc:lang",interpret:1b,click_event:{action:"run_command",command:"/trigger pc.trigger set 11003"},hover_event:{action:"show_text",value:{nbt:"sys.lobby.ui.click_me",storage:"pc:lang",interpret:1b}}}]
execute if data storage pc:settings gameplay{lost_slots:1b} run data modify storage pc:temp gameplay[-1][-1].nbt set value "sys.lobby.settings.true"


# Time
schedule clear pc:sys/combat/time

function pc:sys/lobby/end/stat/time/min
function pc:sys/lobby/end/stat/time/sec

data modify storage pc:game stat.time.display set value [{nbt:"stat.time.min",storage:"pc:game",interpret:1b},":",{nbt:"stat.time.sec",storage:"pc:game",interpret:1b}]

# Money
scoreboard players operation $stat.money.total pc.game = $money pc.game
scoreboard players operation $stat.money.total pc.game += $stat.money.cost pc.game

# Ascension
data modify storage pc:temp ascension set value [{color:"#72BD7A",text:"●"},{nbt:"sys.lobby.end.ascension",storage:"pc:lang",interpret:1b}]
execute if data storage pc:settings gameplay{tough_enemies:1b} run data modify storage pc:temp ascension append value {text:"",font:"pc:sys/modifier",color:'white',hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.tough_enemies.desc",storage:"pc:lang",interpret:1b}}}
execute if data storage pc:settings gameplay{poor_elites:1b} run data modify storage pc:temp ascension append value {text:"",font:"pc:sys/modifier",color:'white',hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.poor_elites.desc",storage:"pc:lang",interpret:1b}}}
execute if data storage pc:settings gameplay{lost_slots:1b} run data modify storage pc:temp ascension append value {text:"",font:"pc:sys/modifier",color:'white',hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.lost_slots.desc",storage:"pc:lang",interpret:1b}}}
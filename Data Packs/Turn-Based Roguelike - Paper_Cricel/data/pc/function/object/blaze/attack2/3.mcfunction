
scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:entangled}

# fx
function pc:fx/text/use {text:{text:"Flame Entangled",color:"#cd4036"}}
function pc:fx/debuff/use
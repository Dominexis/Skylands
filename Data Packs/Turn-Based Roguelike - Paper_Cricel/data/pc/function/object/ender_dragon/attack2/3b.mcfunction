
# effect
scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:"entangled"}

# fx
function pc:fx/text/use {text:[{text:"Stunned",color:"#665ed9"}]}
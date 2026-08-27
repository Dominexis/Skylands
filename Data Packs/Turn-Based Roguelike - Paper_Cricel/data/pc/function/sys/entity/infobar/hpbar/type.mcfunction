
# if (block > hp) :
execute if score #temp pc.hp > #current pc.hp run return run data modify storage pc:temp infobar.hpbar.result append value {text:"■",color:"gray"}

# else :
data modify storage pc:temp infobar.hpbar.result append value {text:"■",color:"#f95353"}
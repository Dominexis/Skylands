
# if (extra money) :
execute if score #money.extra pc.main matches 1.. run return run data modify storage pc:temp money.display set value ["",{score:{name:"#money",objective:"pc.main"},color:"gold",bold:1b},{text:" (+",color:"gray"},{score:{name:"#money.extra",objective:"pc.main"},color:"gray"},{text:")",color:"gray"}]

# else :
data modify storage pc:temp money.display set value {score:{name:"#money",objective:"pc.main"},color:"gold",bold:1b}

# effect
scoreboard players add $game.money pc.main 15

# fx
tellraw @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ["",{text:"* ",color: "gray"},{"selector": "@s",color: "gray"},{text:" picked up ",color: "gray"},{text:"Money",color: "#f1de61"},{text:"4",font: "pc:default",color: "white"}]
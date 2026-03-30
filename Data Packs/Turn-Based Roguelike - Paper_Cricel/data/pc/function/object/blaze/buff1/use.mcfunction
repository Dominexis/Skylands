
# effect
scoreboard players set #value pc.main 600
function pc:passive/shield/use

scoreboard players set #value pc.main 3
function pc:passive/effect/apply {effect:"robust"}

scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:"thorn"}

# fx
function pc:fx/text/use {text:{text:"Thorn",color:"#d7ef9b"}}
playsound minecraft:entity.blaze.shoot master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 1 1
playsound minecraft:block.vault.open_shutter master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 0.75 1

particle minecraft:flame ~ ~ ~ 0.0 0 1.0 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.024 0 0.928 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.047 0 0.855 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.071 0 0.783 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.094 0 0.711 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.118 0 0.638 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.141 0 0.566 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.165 0 0.493 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.188 0 0.421 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.212 0 0.349 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.235 0 0.276 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.259 0 0.204 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.282 0 0.132 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.306 0 0.059 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.329 0 -0.013 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.353 0 -0.085 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.376 0 -0.158 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.4 0 -0.23 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.423 0 -0.302 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.447 0 -0.375 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.47 0 -0.447 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.494 0 -0.52 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.517 0 -0.592 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.541 0 -0.664 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.564 0 -0.737 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.588 0 -0.809 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.526 0 -0.764 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.465 0 -0.72 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.403 0 -0.675 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.342 0 -0.63 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.28 0 -0.585 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.219 0 -0.541 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.157 0 -0.496 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.096 0 -0.451 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.034 0 -0.407 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.028 0 -0.362 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.089 0 -0.317 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.151 0 -0.272 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.212 0 -0.228 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.274 0 -0.183 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.335 0 -0.138 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.397 0 -0.093 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.459 0 -0.049 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.52 0 -0.004 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.582 0 0.041 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.643 0 0.085 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.705 0 0.13 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.766 0 0.175 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.828 0 0.22 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.889 0 0.264 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.951 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.875 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.799 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.723 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.647 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.571 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.495 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.418 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.342 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.266 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.19 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.114 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.038 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.038 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.114 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.19 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.266 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.342 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.418 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.495 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.571 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.647 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.723 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.799 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.875 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.951 0 0.309 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.889 0 0.264 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.828 0 0.22 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.766 0 0.175 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.705 0 0.13 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.643 0 0.085 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.582 0 0.041 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.52 0 -0.004 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.459 0 -0.049 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.397 0 -0.093 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.335 0 -0.138 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.274 0 -0.183 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.212 0 -0.228 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.151 0 -0.272 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.089 0 -0.317 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.028 0 -0.362 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.034 0 -0.407 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.096 0 -0.451 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.157 0 -0.496 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.219 0 -0.541 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.28 0 -0.585 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.342 0 -0.63 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.403 0 -0.675 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.465 0 -0.72 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.526 0 -0.764 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.588 0 -0.809 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.564 0 -0.737 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.541 0 -0.664 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.517 0 -0.592 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.494 0 -0.52 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.47 0 -0.447 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.447 0 -0.375 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.423 0 -0.302 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.4 0 -0.23 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.376 0 -0.158 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.353 0 -0.085 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.329 0 -0.013 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.306 0 0.059 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.282 0 0.132 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.259 0 0.204 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.235 0 0.276 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.212 0 0.349 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.188 0 0.421 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.165 0 0.493 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.141 0 0.566 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.118 0 0.638 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.094 0 0.711 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.071 0 0.783 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.047 0 0.855 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.024 0 0.928 0.5 0 force

particle minecraft:flame ~ ~ ~ 1.0 0 0.0 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.985 0 0.174 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.94 0 0.342 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.866 0 0.5 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.766 0 0.643 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.643 0 0.766 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.5 0 0.866 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.342 0 0.94 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.174 0 0.985 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.0 0 1.0 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.174 0 0.985 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.342 0 0.94 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.5 0 0.866 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.643 0 0.766 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.766 0 0.643 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.866 0 0.5 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.94 0 0.342 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.985 0 0.174 0.5 0 force
particle minecraft:flame ~ ~ ~ -1.0 0 0.0 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.985 0 -0.174 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.94 0 -0.342 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.866 0 -0.5 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.766 0 -0.643 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.643 0 -0.766 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.5 0 -0.866 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.342 0 -0.94 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.174 0 -0.985 0.5 0 force
particle minecraft:flame ~ ~ ~ -0.0 0 -1.0 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.174 0 -0.985 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.342 0 -0.94 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.5 0 -0.866 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.643 0 -0.766 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.766 0 -0.643 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.866 0 -0.5 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.94 0 -0.342 0.5 0 force
particle minecraft:flame ~ ~ ~ 0.985 0 -0.174 0.5 0 force
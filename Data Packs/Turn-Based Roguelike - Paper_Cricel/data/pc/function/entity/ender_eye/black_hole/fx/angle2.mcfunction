
rotate @s ~-5 ~5
execute at @s if entity @s[x_rotation=90] facing ^ ^ ^-1 run rotate @s ~ ~

# fx
particle dust{color:[0,0,0],scale:0.5f} ^ ^ ^1.5 0 0 0 0 0 force
particle dust{color:[0,0,0],scale:0.5f} ^ ^ ^-1.5 0 0 0 0 0 force
particle dust{color:[0,0,0],scale:0.5f} ^1.5 ^ ^ 0 0 0 0 0 force
particle dust{color:[0,0,0],scale:0.5f} ^-1.5 ^ ^ 0 0 0 0 0 force
particle dust{color:[0,0,0],scale:0.5f} ^ ^1.5 ^ 0 0 0 0 0 force
particle dust{color:[0,0,0],scale:0.5f} ^ ^-1.5 ^ 0 0 0 0 0 force
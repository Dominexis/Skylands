# Reset play score
scoreboard players set @s play 0

# Login to the plot at the current position
execute store result score #success sl.value run function sl:generated/login_from_pos
execute if score #success sl.value matches 0 run tellraw @s {text:"Could not log into island",color:"red",type:"text"}
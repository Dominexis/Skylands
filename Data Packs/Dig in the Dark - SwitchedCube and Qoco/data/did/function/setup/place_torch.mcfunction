advancement revoke @s only did:place_torch
execute as @s[tag=did.player.logged] run function did:place_torch/start
# execute if score @s did.player.torch.placed matches 1 run scoreboard players set @s did.player.torch.placed 0

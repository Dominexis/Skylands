## Gameplay setting change refused because a game is running ($start pc.game >= 1)

tellraw @s [{nbt:"sys.lobby.gameplay.locked",storage:"pc:lang",interpret:1b}]
playsound minecraft:block.note_block.bass master @s ~ ~1024 ~ 0 0 1

# Consume the trigger ourselves (we returned before the dispatcher's reset)
scoreboard players set @s pc.trigger 0

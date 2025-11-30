
# effect
execute summon marker run function pc:sys/object/rotate/is_diagonal2

execute if score #rot pc.main matches 0 run tag @s remove pc.sys.rotate_diagonal
execute unless score #rot pc.main matches 0 run tag @s add pc.sys.rotate_diagonal
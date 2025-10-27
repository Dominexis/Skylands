execute if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["did.lantern_block"]}
execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:light[level=8]

# execute positioned ~ ~1 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["did.lantern_block"]}
# execute positioned ~ ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ light[level=12]

# ### 4-cross pad
# execute positioned ~1 ~1 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["did.lantern_block"]}
# execute positioned ~1 ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ light[level=11]
# execute positioned ~-1 ~1 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["did.lantern_block"]}
# execute positioned ~-1 ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ light[level=11]
# execute positioned ~ ~1 ~1 if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["did.lantern_block"]}
# execute positioned ~ ~1 ~1 if block ~ ~ ~ air run setblock ~ ~ ~ light[level=11]
# execute positioned ~ ~1 ~-1 if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["did.lantern_block"]}
# execute positioned ~ ~1 ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ light[level=11]
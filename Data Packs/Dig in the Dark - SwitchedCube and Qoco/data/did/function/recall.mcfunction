## This function runs as and at a player when they are sent back to a checkpoint

tellraw @s {translate:"did.game.checkpoint",type:"translatable"}
execute at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~
function did:commands/tp
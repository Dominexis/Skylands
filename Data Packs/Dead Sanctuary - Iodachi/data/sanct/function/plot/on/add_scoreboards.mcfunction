scoreboard objectives add sanct.death deathCount
scoreboard objectives add sanct.food food
scoreboard objectives add sanct.health health
scoreboard objectives add sanct.trigger trigger

scoreboard objectives add sanct.respawn_timer dummy
scoreboard objectives add sanct.locked_inventory dummy
scoreboard objectives add sanct.thrown_book_time dummy
scoreboard objectives add sanct.id dummy

scoreboard objectives add sanct.spell.revenge dummy
scoreboard objectives add sanct.spell.rune minecraft.dropped:minecraft.blade_pottery_sherd
scoreboard objectives add sanct.spell.slot_loot dummy
scoreboard objectives add sanct.spell.teleport_item minecraft.used:minecraft.snowball

scoreboard objectives add sanct.numbers dummy

scoreboard players set #SPELLS_PER_PAGE sanct.numbers 4
scoreboard players set #ZOMBIES_PER_GROUP sanct.numbers 2

scoreboard players set #player_power sanct.numbers 600
scoreboard players set #enemy_power sanct.numbers 7

scoreboard players set #summon_zombie_count sanct.numbers 4
scoreboard players set #summon_skeleton_count sanct.numbers 1
scoreboard players set #summon_vampire_count sanct.numbers 1
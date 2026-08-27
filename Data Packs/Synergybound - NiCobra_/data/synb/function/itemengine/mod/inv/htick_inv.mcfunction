# As : player
##

# Stats card (slot 7)
execute if items entity @s hotbar.7 minecraft:prismarine_crystals run item replace entity @s player.cursor from entity @s hotbar.7
execute store result storage synb.d:tmp args.hp long 1 run scoreboard players get @s synb.IEStat.HP
execute store result storage synb.d:tmp args.reward long 1 run scoreboard players get @s synb.IEStat.Reward
execute store result storage synb.d:tmp args.dmg_whole int 0.1 run scoreboard players get @s synb.IEStat.Dmg
scoreboard players operation #decimal synb.Tmp.Expr = @s synb.IEStat.Dmg
scoreboard players operation #decimal synb.Tmp.Expr %= num10 synb.Const
execute store result storage synb.d:tmp args.dmg_decimal int 1 run scoreboard players get #decimal synb.Tmp.Expr
execute store result storage synb.d:tmp args.atk_speed_decimal int 1 run scoreboard players get #decimal synb.Tmp.Expr
execute store result storage synb.d:tmp args.atk_speed_whole int 0.01 run scoreboard players get @s synb.IEStat.AtkSpeed
scoreboard players operation #decimal synb.Tmp.Expr = @s synb.IEStat.AtkSpeed
scoreboard players operation #decimal synb.Tmp.Expr /= num10 synb.Const
scoreboard players operation #decimal synb.Tmp.Expr %= num10 synb.Const
execute store result storage synb.d:tmp args.atk_speed_decimal int 1 run scoreboard players get #decimal synb.Tmp.Expr
execute store result storage synb.d:tmp args.magic long 1 run scoreboard players get @s synb.IEStat.Magic
scoreboard players operation #whole synb.Tmp.Expr = @s synb.IEStat.ShieldDelay
execute if score @s synb.IEStat.ShieldDelay matches ..0 run scoreboard players set #whole synb.Tmp.Expr 0
execute store result storage synb.d:tmp args.shield_delay_whole int 0.1 run scoreboard players get #whole synb.Tmp.Expr
scoreboard players operation #decimal synb.Tmp.Expr = @s synb.IEStat.ShieldDelay
scoreboard players operation #decimal synb.Tmp.Expr %= num10 synb.Const
execute if score @s synb.IEStat.ShieldDelay matches ..0 run scoreboard players set #decimal synb.Tmp.Expr 0
execute store result storage synb.d:tmp args.shield_delay_decimal int 1 run scoreboard players get #decimal synb.Tmp.Expr
execute store result storage synb.d:tmp args.ammo long 1 run scoreboard players get @s synb.IEStat.Ammo
scoreboard players operation #val synb.Tmp.Arg = @s synb.IEStat.MovSpeed
function synb:utils/round
execute store result storage synb.d:tmp args.mov_speed long 1 run scoreboard players get #val synb.Tmp.Arg
function synb:itemengine/mod/inv/_stats_card with storage synb.d:tmp args

# Melee (slot 0)
execute if items entity @s hotbar.0 minecraft:prismarine_crystals run item replace entity @s player.cursor from entity @s hotbar.0
execute store result storage synb.d:tmp args.dmg_melee double 0.1 run scoreboard players get @s synb.IEStat.MeleeDmg
execute store result storage synb.d:tmp args.dmg_melee_whole int 0.1 run scoreboard players get @s synb.IEStat.MeleeDmg
scoreboard players operation #decimal synb.Tmp.Expr = @s synb.IEStat.MeleeDmg
scoreboard players operation #decimal synb.Tmp.Expr %= num10 synb.Const
execute store result storage synb.d:tmp args.dmg_melee_decimal int 1 run scoreboard players get #decimal synb.Tmp.Expr
execute store result storage synb.d:tmp args.atk_speed double 0.01 run scoreboard players get @s synb.IEStat.AtkSpeed
scoreboard players set #mace synb.Tmp.Expr 0
execute if score @s synb.IEItemCount.mace matches 1.. run scoreboard players add #mace synb.Tmp.Expr 1
execute unless score #mace synb.Tmp.Expr matches 1 run function synb:itemengine/mod/inv/_get_melee_appearance
execute unless score #mace synb.Tmp.Expr matches 1 run function synb:itemengine/mod/inv/_htick_melee with storage synb.d:tmp args
# >>> SPECIAL LOGIC : mace
execute if score #mace synb.Tmp.Expr matches 1 run function synb:all_items/mace/outer_calls/htick_melee_mace with storage synb.d:tmp args
# <<<

# Crossbow (slot 1)
execute if items entity @s hotbar.1 minecraft:prismarine_crystals run item replace entity @s player.cursor from entity @s hotbar.1
execute store result storage synb.d:tmp args.dmg_ranged_whole int 0.1 run scoreboard players get @s synb.IEStat.RangedDmg
scoreboard players operation #decimal synb.Tmp.Expr = @s synb.IEStat.RangedDmg
scoreboard players operation #decimal synb.Tmp.Expr %= num10 synb.Const
execute store result storage synb.d:tmp args.dmg_ranged_decimal int 1 run scoreboard players get #decimal synb.Tmp.Expr
scoreboard players operation #ammo_percent1 synb.Tmp.Expr = @s synb.IEPlayer.CurrentAmmo
scoreboard players operation #ammo_percent1 synb.Tmp.Expr *= num1000 synb.Const
scoreboard players operation #ammo_percent1 synb.Tmp.Expr /= @s synb.IEStat.Ammo
scoreboard players set #ammo_percent2 synb.Tmp.Expr 1000
scoreboard players operation #ammo_percent2 synb.Tmp.Expr -= #ammo_percent1 synb.Tmp.Expr
execute if score #ammo_percent2 synb.Tmp.Expr matches 1000.. run scoreboard players set #ammo_percent2 synb.Tmp.Expr 999
execute if score #ammo_percent2 synb.Tmp.Expr matches ..0 run scoreboard players set #ammo_percent2 synb.Tmp.Expr 0
execute store result storage synb.d:tmp args.cross_dmg int 0.465 run scoreboard players get #ammo_percent2 synb.Tmp.Expr
execute store result storage synb.d:tmp args.ammo_current int 1 run scoreboard players get @s synb.IEPlayer.CurrentAmmo
scoreboard players operation #nb_projectiles synb.Tmp.Arg = @s synb.IEEnch.Multishot
scoreboard players operation #nb_projectiles synb.Tmp.Arg *= num2 synb.Const
data modify storage synb.d:tmp args.projectiles set value []
function synb:itemengine/mod/inv/_create_projectiles_data
function synb:itemengine/mod/inv/_htick_crossbow with storage synb.d:tmp args

# Shield (slot alt)
scoreboard players set #full synb.Tmp.Expr 0
execute if items entity @s weapon.offhand minecraft:prismarine_crystals if items entity @s player.cursor minecraft:prismarine_crystals run scoreboard players set #full synb.Tmp.Expr 1

execute if items entity @s weapon.offhand minecraft:prismarine_crystals unless score #full synb.Tmp.Expr matches 1 run item replace entity @s player.cursor from entity @s weapon.offhand
execute unless data entity @s SelectedItem.components.minecraft:custom_data.melee unless score #full synb.Tmp.Expr matches 1 run item replace entity @s weapon.offhand with minecraft:air
execute if data entity @s SelectedItem.components.minecraft:custom_data.melee unless score #full synb.Tmp.Expr matches 1 run function synb:itemengine/mod/inv/_apply_shield
execute if score @s synb.IEPlayer.ShieldCD matches 1.. run scoreboard players remove @s synb.IEPlayer.ShieldCD 1

# Free slots (2-5)

# Unlokable slot ? (slot 6) add trinket or consumables first
# item replace entity @s hotbar.6 with minecraft:light_gray_stained_glass_pane[custom_name='Locked']

# Book (slot 8)
execute if score t6 synb.TickCycle matches 1 run function synb:itemengine/mod/inv/_book

# Item list (inv)
execute if score t10 synb.TickCycle matches 1 run function synb:itemengine/mod/inv/item_list/run
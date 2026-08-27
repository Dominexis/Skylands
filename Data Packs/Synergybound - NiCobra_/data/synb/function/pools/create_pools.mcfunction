# Args :
#   - env (macro)
#   - pool_targets (tag arg)
##

# Steps for adding item :
#   1. Add in appropriate pool
#   2. Update base size
#   3. Increment pool size in the right one to keep balance

############### POOL CONTENT

# One pool
scoreboard players set #base_gift_only_size synb.Tmp.Arg 11
data modify storage synb.d:pools base.gift_only set value ["counter_attack", "dash", "golden_arrow", "enchanter", "ground_jaws", "knockback_immune", "moonstone", "resistance_shield", "shield_repair", "thunder", "vibration"]
scoreboard players set #base_shop_only_size synb.Tmp.Arg 26
data modify storage synb.d:pools base.shop_only set value ["arrow_abundance", "arrow_grinder", "arrow_ripper", "balance", "bamboo", "box", "brick", "cake", "challenger", "charming_stone", "coal", "codex", "foreign_goods", "free_sacrifices", "lucky_paw", "magic_gem", "mega_feast", "pure_essence", "refund", "regrowth", "reroll", "scute", "spelldust", "stats_deal", "tank", "vul_booster"]
scoreboard players set #base_sacr_only_size synb.Tmp.Arg 9
data modify storage synb.d:pools base.sacr_only set value ["electric_arcs", "fragile_bottle", "high_atk_speed", "hunger", "slayer", "magic_mush", "reaper", "spark_wounds", "super_shard"]

# Two pools
scoreboard players set #base_gift_&_shop_size synb.Tmp.Arg 31
data modify storage synb.d:pools base.gift_&_shop set value ["absorption_barrier", "adrenaline", "bundle", "cactus", "combat_goo", "combo", "crown", "deep_cold", "diamond", "empty_damage", "fast_restock", "feather", "global_curse", "growing_dmg", "impenetrable", "instant_heal", "logistics", "magnet", "melon", "paranoia", "punishing_eye", "pure_shield", "pushback", "reinforcements", "revenge", "shieldblade", "spirit_fire", "sticky_bombs", "survival_reward", "swift_breeze", "vision"]
scoreboard players set #base_gift_&_sacr_size synb.Tmp.Arg 11
data modify storage synb.d:pools base.gift_&_sacr set value ["barrel", "chill_shock", "crystal_edge", "ender_pearl", "fighter_hunter", "firework", "gunpowder", "money_gift", "pyro", "range_increase", "void_shield"]
scoreboard players set #base_shop_&_sacr_size synb.Tmp.Arg 4
data modify storage synb.d:pools base.shop_&_sacr set value ["arbalist", "melee_bravery", "relic_clone", "superior_relics"]

# All pools
scoreboard players set #base_all_pools_size synb.Tmp.Arg 14
data modify storage synb.d:pools base.all_pools set value ["bone", "dagger", "freezing_arrows", "frostbite", "invisibility", "living_shield", "mace", "pickaxe", "piercing", "sharp_tip", "shield_heal", "slow_axe", "speed", "vul_rod"]

############### FILL

$data modify storage synb.d:pools item_pools.env_$(env) set value {"gift":[],"shop":[],"sacr":[]}

# Gift
scoreboard players set #items_to_select synb.Tmp.Arg 11
$function synb:pools/_fill_rec {env:$(env),base_name:"gift_only",pool_name:"gift"}
scoreboard players set #items_to_select synb.Tmp.Arg 12
$function synb:pools/_fill_rec {env:$(env),base_name:"gift_&_shop",pool_name:"gift"}
scoreboard players set #items_to_select synb.Tmp.Arg 6
$function synb:pools/_fill_rec {env:$(env),base_name:"gift_&_sacr",pool_name:"gift"}
scoreboard players set #items_to_select synb.Tmp.Arg 5
$function synb:pools/_fill_rec {env:$(env),base_name:"all_pools",pool_name:"gift"}

# Shop
scoreboard players set #items_to_select synb.Tmp.Arg 26
$function synb:pools/_fill_rec {env:$(env),base_name:"shop_only",pool_name:"shop"}
scoreboard players set #items_to_select synb.Tmp.Arg 19
$function synb:pools/_fill_rec {env:$(env),base_name:"gift_&_shop",pool_name:"shop"}
scoreboard players set #items_to_select synb.Tmp.Arg 3
$function synb:pools/_fill_rec {env:$(env),base_name:"shop_&_sacr",pool_name:"shop"}
scoreboard players set #items_to_select synb.Tmp.Arg 5
$function synb:pools/_fill_rec {env:$(env),base_name:"all_pools",pool_name:"shop"}

# Sacr
scoreboard players set #items_to_select synb.Tmp.Arg 9
$function synb:pools/_fill_rec {env:$(env),base_name:"sacr_only",pool_name:"sacr"}
scoreboard players set #items_to_select synb.Tmp.Arg 5
$function synb:pools/_fill_rec {env:$(env),base_name:"gift_&_sacr",pool_name:"sacr"}
scoreboard players set #items_to_select synb.Tmp.Arg 1
$function synb:pools/_fill_rec {env:$(env),base_name:"shop_&_sacr",pool_name:"sacr"}
scoreboard players set #items_to_select synb.Tmp.Arg 4
$function synb:pools/_fill_rec {env:$(env),base_name:"all_pools",pool_name:"sacr"}
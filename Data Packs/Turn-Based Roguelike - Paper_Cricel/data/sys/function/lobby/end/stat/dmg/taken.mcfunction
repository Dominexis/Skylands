
function sys:player/owner/find
scoreboard players operation @a[tag=pc.sys.passive,limit=1,predicate=sl:player] pc.stat.dmg_taken += #damage pc.main
function sys:player/owner/clear
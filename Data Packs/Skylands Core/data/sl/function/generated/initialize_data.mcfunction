# Initialize plot state values
scoreboard players add #plot.demo.state sl.value 0
scoreboard players add #plot.oldschool_skyisland.state sl.value 0
scoreboard players add #plot.feelsbatman.state sl.value 0
scoreboard players add #plot.gardensofbabble.state sl.value 0
scoreboard players add #plot.itspungpond98.state sl.value 0
scoreboard players add #plot.did.state sl.value 0

# Initialize IDs compound
data modify storage sl:data plot_ids set value {lobby:0,demo:3,oldschool_skyisland:1073709061,feelsbatman:1073512447,gardensofbabble:229381,itspungpond98:1073381377,did:1073512442}

# Initialize names compound
data modify storage sl:data plot_names set value {0:"lobby",3:"demo",1073709061:"oldschool_skyisland",1073512447:"feelsbatman",229381:"gardensofbabble",1073381377:"itspungpond98",1073512442:"did"}
# Runs as and at a player when they log into your plot. Use this to greet them or give them gear, or otherwise just prepare them.

scoreboard players set hasplayer piecewiselantern.data 1

schedule function piecewiselantern:scheduled_ambient_sound 10s replace

give @s minecraft:written_book[minecraft:written_book_content={pages:[{raw:"Date:\n17 August 1877\n\nSubmitted By: Broadrick Hunt\n\nLocation:\nAndel Manor, New England\n\nReason:\nUnexplained Disappearances"},{raw:"Persons:\nLord Brannon Andel Sr.\nLady Emma Andel\nAnnalise Andel\nAlice Andel\nBrannon Andel Jr."}],title:"Inspector Request - 107",author:"Broadrick Hunt",resolved:1}]
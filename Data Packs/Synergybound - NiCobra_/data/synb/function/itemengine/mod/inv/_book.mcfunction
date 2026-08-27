execute if items entity @s hotbar.8 minecraft:prismarine_crystals if items entity @s player.cursor minecraft:prismarine_crystals run return 0
execute if items entity @s hotbar.8 minecraft:prismarine_crystals run item replace entity @s player.cursor from entity @s hotbar.8

item replace entity @s hotbar.8 with minecraft:written_book[written_book_content={pages:[[[ \
        {text:"Welcome to "},{text:"Synergybound: Arenas !",color:"dark_red",bold:true}, \
        {text:"\n\nA true roguelike minigame by NiCobra_\n\n",color:"dark_green"}, \
        {text:"Synergybound will soon become a standalone map as a dungeon crawler !\nOfficial Discord : "}, \
        {text:"https://discord.gg/p5aHPnXAgB",color:"blue",bold:false,"click_event":{action:"open_url","url":"https://discord.gg/p5aHPnXAgB"}}],\
    ],[ \
        {text:"-- Stats --\n\n",bold:true}, \
        {text:"Max Health: ",color:"#DD9900",bold:true},{text:"Max amount of half hearts you can hold.\n",bold:false,color:black}, \
        {text:"Reward Heal: ",color:"#00AA00",bold:true},{text:"Your regeneration at the end of each wave.\n",bold:false,color:black}, \
        {text:"Damage: ",color:"#DD0000",bold:true},{text:"The default damage you deal with melee (can be crit), and also ranged (arrows deal that exact amount).\n",bold:false,color:black}, \
    ],[ \
        {text:"Attack Speed: ",color:"#00AADD",bold:true},{text:"In attacks per second, both your melee speed and your crossbow fire rate.\n",bold:false,color:black}, \
        {text:"Magic: ",color:"#BB00BB",bold:true},{text:"Bonus damage or effects for explicitely listed magical abilities from your relics.\n",bold:false,color:black}, \
        {text:"Shield Cooldown: ",color:"#0000FF",bold:true},{text:"Delay between each shield use.\n",bold:false,color:black}, \
    ],[ \
        {text:"Arrow Capacity: ",color:"#666666",bold:true},{text:"The amount of arrows reloaded at the end of each wave.\n",bold:false,color:black}, \
        {text:"Movement Speed: ",color:"#994422",bold:true},{text:"Walking and sprinting speed.\n",bold:false,color:black}, \
    ],[ \
        {text:"-- Status --\n\n",color:black,bold:true}, \
        {text:"Frozen: ",color:"#5566FF",bold:true},{text:"Unable to move or attack, may disables some special abilities.\n\n",bold:false,color:black}, \
        {text:"Vulnerable: ",color:"#8855BB",bold:true},{text:"Receives double damage from arrows and relic effects ",bold:false,color:black},{text:" only.\n",bold:true,color:black}, \
    ],[ \
        {text:"-- Tips --\n\n",color:black,bold:true}, \
        {text:"◆ ",bold:false,color:black},{text:"Make sure to play with audio and particles on, they convey lot of information !\n",bold:false,color:"#444444"}, \
        {text:"◆ ",bold:false,color:black},{text:"A ",bold:false,color:"#444444"},{text:"wave",bold:true,color:"#444444"},{text:" is an individual battle, a ",bold:false,color:"#444444"},{text:"round",bold:true,color:"#444444"},{text:" is a series of waves. Don't confuse !\n",bold:false,color:"#444444"}, \
        {text:"◆ ",bold:false,color:black},{text:"Buying relics fills a portion of the reroll cauldron.\n",bold:false,color:"#444444"}, \
    ],[ \
        {text:"◆ ",bold:false,color:black},{text:"Starting a wave without taking the free relic transfoms it into few Ancient Crytals.\n",bold:false,color:"#444444"}, \
        {text:"◆ ",bold:false,color:black},{text:"The randomness of relic apparitions is defined from relic pools, relics can share one, two, or all pools at once.\n",bold:false,color:"#444444"}, \
        {text:"◆ ",bold:false,color:black},{text:"All relics are self-compatible, obtaining copies may give unique results.\n",bold:false,color:"#444444"}, \
    ],[ \
        {text:"◆ ",bold:false,color:black},{text:"Using your shield on an enemy protected by the Protector will apply shield effects on both.\n",bold:false,color:"#444444"}, \
        {text:"◆ ",bold:false,color:black},{text:"Stat multipliers are always applied after all stats additions or subtractions.\n",bold:false,color:"#444444"}, \
        {text:"◆ ",bold:false,color:black},{text:"Particulary good items have an enchanting glint effect.\n",bold:false,color:"#444444"}, \
    ]] \
    ,title:{raw:"Tips & Keywords"},author:"NiCobra_"}]
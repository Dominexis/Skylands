# data modify block xxxxx Items set value [xxxxx]
# data modify block xxxxx Items set value []

# Office
setblock -1263 -9 -1352 minecraft:dark_oak_door[facing=west,half=lower,hinge=left,open=false,powered=false]

setblock -1248 -7 -1354 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1248 -8 -1353 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:5}
setblock -1248 -9 -1351 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1248 -8 -1350 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1254 -8 -1348 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1254 -9 -1348 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1257 -9 -1348 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1259 -8 -1356 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1259 -9 -1356 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1257 -9 -1356 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1254 -8 -1356 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1253 -9 -1356 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}

# Garden
setblock -1259 2 -1223 minecraft:spruce_door[facing=south,half=lower,hinge=left,open=false,powered=false]
setblock -1255 2 -1222 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:2}
data modify block -1255 2 -1222 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Broadrick Hunt",pages:[{raw:"Lord Andel spoke in riddles again today.\nI fear his mind is going faster than the doctors expected.\nHis fits consist of screams for a light and a fear of darkness."},{raw:"He speaks of his parents.\nI believe he fears them too, though of course they have passed many years ago."}],resolved:1b,title:{raw:"20 July 1877"}}},count:1,Slot:2b}]
setblock -1254 3 -1222 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:0}
data modify block -1254 3 -1222 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Broadrick Hunt",pages:[{raw:"Lord Andel disappears for hours at a time.\nI am unsure where he goes when he is not in his observatory, but the family fears for him.\nLady Andel is quiet now, but I know she fears for her own fate as much as her husband's."}],resolved:1b,title:{raw:"18 July 1877"}}},count:1,Slot:0b}]
setblock -1254 2 -1222 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false]{Items:[],last_interacted_slot:1}
data modify block -1254 2 -1222 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Broadrick Hunt",pages:[{raw:"Everyone is gone.\nI awoke today to find the house completely empty.\nMilda and I are leaving today and going our separate ways.\nI've left the key to the door here just in case I need to return, though I hope I do not."}],resolved:1b,title:{raw:"31 July 1877"}}},count:1,Slot:4b}]
data modify block -1254 2 -1220 Items set value [{id:"minecraft:trial_key",components:{"minecraft:custom_name":"Front Door"},count:1,Slot:13b}]
setblock -1260 2 -1219 minecraft:blast_furnace[facing=east,lit=false]{Items:[],RecipesUsed:{},cooking_time_spent:0s,cooking_total_time:0s,lit_time_remaining:0s,lit_total_time:0s}
setblock -1259 2 -1216 minecraft:spruce_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
setblock -1260 2 -1217 minecraft:spruce_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]

data modify block -1257 2 -1222 Items set value []
data modify block -1254 4 -1222 Items set value []

# Front Door
setblock -1281 2 -1305 minecraft:iron_door[facing=south,half=lower,hinge=left,open=false,powered=false]

# Main Room
data modify block -1269 2 -1281 Items set value [{id:"minecraft:potion",components:{"minecraft:custom_name":"Mead","minecraft:item_model":"piecewiselantern:mead","minecraft:max_stack_size":64,"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}},count:1,Slot:13b}]
data modify block -1293 2 -1290 Items set value [{id:"minecraft:potion",components:{"minecraft:custom_name":"Wine","minecraft:item_model":"piecewiselantern:wine","minecraft:max_stack_size":64,"minecraft:potion_contents":{potion:"minecraft:night_vision"}},count:1,Slot:13b}]

# Drawing Room
setblock -1269 2 -1293 minecraft:dark_oak_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock -1260 3 -1289 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:0}
data modify block -1260 3 -1289 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Annalise Andel",pages:[{raw:{extra:[{color:"dark_red",text:"KITCHEN "},"back to Milda.\nI think he's hidden it away in his room again."],text:"Father was yelling at Brannon to give the key to the "}}],resolved:1b,title:{raw:"2 July 1877"}}},count:1,Slot:0b}]
setblock -1262 2 -1289 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:0}
data modify block -1262 2 -1289 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Annalise Andel",pages:[{raw:{extra:[{color:"dark_red",text:"LIBRARY "},"today while father wasn't there.\nHe caught me and threw me out, said I had no business reading his books.\nWas he hiding in there?\nI did not hear the door to the hall open."],text:"I snuck into the "}},{raw:"I told him I was looking for a book about Paris, but I don't think he believed me.\nI know he has books in there about our family and this house that he doesn't want me to read."}],resolved:1b,title:{raw:"7 July 1877"}}},count:1,Slot:0b}]
setblock -1259 3 -1289 minecraft:dark_oak_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]
setblock -1263 3 -1289 minecraft:dark_oak_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]

setblock -1261 4 -1289 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1262 4 -1289 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:5}

# Ballroom
setblock -1269 2 -1278 minecraft:dark_oak_door[facing=east,half=lower,hinge=left,open=false,powered=false]
data modify block -1257 3 -1284 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Broadrick Hunt",pages:[{raw:"NOTE TO SELF:\nRepair the vent in Mistress Alice's room."}],resolved:1b,title:{raw:"Vent"}}},count:1,Slot:12b},{id:"minecraft:stick",components:{"minecraft:custom_name":"Screwdriver","minecraft:item_model":"piecewiselantern:screwdriver"},count:1,Slot:14b}]

# Dining Room
setblock -1293 2 -1293 minecraft:dark_oak_door[facing=west,half=lower,hinge=left,open=false,powered=false]
setblock -1293 2 -1278 minecraft:dark_oak_door[facing=west,half=lower,hinge=left,open=false,powered=false]
setblock -1294 2 -1286 minecraft:campfire[facing=south,lit=true,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]}
setblock -1294 2 -1285 minecraft:campfire[facing=south,lit=true,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]}

# Storage Room
setblock -1288 2 -1284 minecraft:dark_oak_door[facing=east,half=lower,hinge=left,open=false,powered=false]

data modify block -1284 2 -1285 Items set value []
data modify block -1283 2 -1288 Items set value []
data modify block -1279 2 -1288 Items set value []
data modify block -1279 2 -1286 Items set value []
data modify block -1280 2 -1285 Items set value []

# Bedroom 2
setblock -1269 10 -1284 minecraft:cherry_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock -1255 15 -1285 minecraft:cherry_trapdoor[facing=west,half=bottom,open=false,powered=false,waterlogged=false]
setblock -1255 14 -1285 minecraft:air

setblock -1255 11 -1281 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false]{Items:[],last_interacted_slot:4}
data modify block -1255 11 -1281 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Alice Andel",pages:[{raw:"Father gave me a pretty pink necklace today!"}],resolved:1b,title:{raw:"Pretty!"}}},count:1,Slot:0b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Alice Andel",pages:[{raw:"I added a date because I saw that Anna did it too.\nI see her writing these notes all the time so I thought I should do so as well if I want to be smart like her.\nI don't know what to write about though..."}],resolved:1b,title:{raw:"10 July 1877"}}},count:1,Slot:2b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Alice Andel",pages:[{raw:"Annalise told me to write what I find interesting.\nI think plants are interesting.\nI think birds are interesting.\nI think the house is interesting."}],resolved:1b,title:{raw:"12 July 1877"}}},count:1,Slot:4b}]
setblock -1255 10 -1281 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true]{Items:[],last_interacted_slot:5}
data modify block -1255 10 -1281 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Alice Andel",pages:[{raw:"My vent is broken!\nSounds like a bad thing but now I can get into Annalise's room even when her door is locked!\nLuckily Broadrick leaves his ladder unattended..."}],resolved:1b,title:{raw:"15 July 1877"}}},count:1,Slot:0b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Alice Andel",pages:[{raw:{extra:[{color:"dark_red",text:"OBSERVATORY"},", but other times I don't know where they go."],text:"Father and Mother keep disappearing. Sometimes they are in the "}}],resolved:1b,title:{raw:"26 July 1877"}}},count:1,Slot:5b}]
data modify block -1257 10 -1277 Items set value [{id:"minecraft:pink_dye",components:{"minecraft:custom_name":"Pink Necklace","minecraft:item_model":"piecewiselantern:pink"},count:1,Slot:13b}]
setblock -1264 11 -1280 minecraft:cherry_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]
fill -1258 11 -1277 -1261 11 -1277 minecraft:cherry_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
fill -1259 12 -1277 -1260 12 -1277 minecraft:cherry_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
fill -1258 14 -1280 -1261 14 -1278 minecraft:cherry_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]

data modify block -1264 11 -1278 Items set value []
data modify block -1267 11 -1281 Items set value []

# Bedroom 3
setblock -1269 10 -1275 minecraft:warped_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock -1267 11 -1270 minecraft:chiseled_bookshelf[facing=east,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:3}
data modify block -1267 11 -1270 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Brannon Andel Jr.",pages:[{raw:{extra:[{color:"dark_red",text:"LIBRARY"}," without father's key!\nI don't think Milda will be happy I snuck into the ",{color:"dark_red",text:"KITCHEN"}," but now I'll win hide and seek every time!"],text:"I found a way into the "}},{raw:{extra:[{color:"dark_red",text:"BATHROOM"}," I don't think anyone knows about!"],text:"PS: I found a great hiding spot in the "}}],resolved:1b,title:{raw:"NOT SECRETS!"}}},count:1,Slot:3b}]
data modify block -1262 10 -1273 Items set value [{id:"minecraft:blue_dye",components:{"minecraft:custom_name":"Blue Ring","minecraft:item_model":"piecewiselantern:blue"},count:1,Slot:13b}]
fill -1261 11 -1273 -1258 11 -1273 minecraft:warped_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
fill -1260 12 -1273 -1259 12 -1273 minecraft:warped_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
fill -1261 14 -1271 -1258 14 -1272 minecraft:warped_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]

data modify block -1257 11 -1267 Items set value []
setblock -1267 10 -1271 minecraft:chiseled_bookshelf[facing=east,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1263 11 -1273 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}

# Bathroom
setblock -1272 10 -1272 minecraft:dark_oak_door[facing=south,half=lower,hinge=left,open=false,powered=false]
setblock -1271 10 -1267 minecraft:warped_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]
data modify block -1269 10 -1268 Items set value [{id:"minecraft:trial_key",components:{"minecraft:custom_name":"Kitchen"},count:1,Slot:13b}]

data modify block -1274 11 -1267 Items set value []
data modify block -1279 10 -1273 Items set value []
data modify block -1277 10 -1273 Items set value []
setblock -1271 11 -1269 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1271 10 -1269 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}

# Bedroom 4
setblock -1293 10 -1284 minecraft:bamboo_door[facing=west,half=lower,hinge=left,open=false,powered=false]

setblock -1305 11 -1285 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1304 11 -1285 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1304 10 -1285 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1299 11 -1285 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1299 10 -1285 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1297 10 -1285 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}

# Bedroom 5
setblock -1293 10 -1293 minecraft:acacia_door[facing=west,half=lower,hinge=left,open=false,powered=false]

setblock -1305 10 -1295 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1304 11 -1295 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1303 11 -1295 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1303 10 -1295 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}

# Kitchen
setblock -1305 2 -1275 minecraft:iron_door[facing=south,half=lower,hinge=left,open=false,powered=false]
setblock -1293 2 -1272 minecraft:dark_oak_door[facing=west,half=lower,hinge=left,open=false,powered=false]
setblock -1296 2 -1273 minecraft:spruce_door[facing=south,half=lower,hinge=right,open=false,powered=false]
setblock -1302 2 -1273 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true]{Items:[],last_interacted_slot:3}
data modify block -1302 2 -1273 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Milda Rosh",pages:[{raw:{extra:[{color:"dark_red",text:"OBSERVATORY "},"I fear he has forgotten his family."],text:"Lord Andel no longer eats.\nMost of the time he is absent from dinner and when he does appear he requests to take his meals away.\nHe spends so much time in the "}},{raw:"Lady Andel is quiet now.\nShe no longer objects to Lord Andel's disappearances."}],resolved:1b,title:{raw:"Lord Andel"}}},count:1,Slot:3b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Milda Rosh",pages:[{raw:"Lady Andel now disappears with her meals as well.\nI tell the children that they are busy with their work, though I can sense Mistress Annalise is suspicious.\nBeing the eldest of the three I know she is more acutely aware of how strange their behavior has become."}],resolved:1b,title:{raw:"Lady Andel"}}},count:1,Slot:5b}]
data modify block -1307 3 -1273 Items set value [{id:"minecraft:rabbit",count:1,Slot:1b},{id:"minecraft:carrot",count:1,Slot:4b},{id:"minecraft:rabbit",count:1,Slot:11b},{id:"minecraft:carrot",count:1,Slot:14b},{id:"minecraft:rabbit",count:1,Slot:15b},{id:"minecraft:carrot",count:1,Slot:16b},{id:"minecraft:rabbit",count:1,Slot:17b},{id:"minecraft:rabbit",count:1,Slot:19b},{id:"minecraft:carrot",count:1,Slot:21b},{id:"minecraft:rabbit",count:1,Slot:22b},{id:"minecraft:carrot",count:1,Slot:26b}]
data modify block -1295 4 -1267 Items set value [{id:"minecraft:chicken",count:1,Slot:0b},{id:"minecraft:apple",count:1,Slot:3b},{id:"minecraft:apple",count:1,Slot:5b},{id:"minecraft:apple",count:1,Slot:7b},{id:"minecraft:chicken",count:1,Slot:10b},{id:"minecraft:apple",count:1,Slot:12b},{id:"minecraft:chicken",count:1,Slot:13b},{id:"minecraft:apple",count:1,Slot:15b},{id:"minecraft:chicken",count:1,Slot:16b},{id:"minecraft:chicken",count:1,Slot:17b},{id:"minecraft:apple",count:1,Slot:19b},{id:"minecraft:chicken",count:1,Slot:20b},{id:"minecraft:chicken",count:1,Slot:21b},{id:"minecraft:chicken",count:1,Slot:24b},{id:"minecraft:apple",count:1,Slot:25b}]
# 3 smokers, the middle one has charcoal
setblock -1298 2 -1267 minecraft:smoker[facing=north,lit=false]{Items:[],RecipesUsed:{},cooking_time_spent:0s,cooking_total_time:0s,lit_time_remaining:0s,lit_total_time:0s}
setblock -1299 2 -1267 minecraft:smoker[facing=north,lit=false]{Items:[],RecipesUsed:{},cooking_time_spent:0s,cooking_total_time:0s,lit_time_remaining:0s,lit_total_time:0s}
data modify block -1299 2 -1267 Items set value [{id:"minecraft:charcoal",count:16,Slot:1b}]
setblock -1300 2 -1267 minecraft:smoker[facing=north,lit=false]{Items:[],RecipesUsed:{},cooking_time_spent:0s,cooking_total_time:0s,lit_time_remaining:0s,lit_total_time:0s}

data modify block -1307 3 -1272 Items set value []
data modify block -1307 2 -1272 Items set value []
data modify block -1307 2 -1273 Items set value []
data modify block -1302 4 -1273 Items set value []
data modify block -1295 3 -1268 Items set value []
data modify block -1295 3 -1267 Items set value []
data modify block -1295 2 -1268 Items set value []
data modify block -1295 2 -1267 Items set value []
setblock -1302 3 -1273 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}

# Billiards Room
setblock -1287 2 -1275 minecraft:dark_oak_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock -1275 2 -1275 minecraft:iron_door[facing=west,half=lower,hinge=left,open=false,powered=false]
setblock -1276 3 -1274 minecraft:lever[face=wall,facing=west,powered=false]
setblock -1280 3 -1265 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:1}
data modify block -1280 3 -1265 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Broadrick Hunt",pages:[{raw:{extra:[{color:"dark_red",text:"CELLAR "},"for Lord Andel's party.\nThe door under the stairs is locked but I can access it from the ",{color:"dark_red",text:"KITCHEN"},' if Milda will let me pass through "her domain."'],text:"NOTE TO SELF:\nBring up more mead from the "}}],resolved:1b,title:{raw:"Mead"}}},count:1,Slot:1b}]
fill -1282 2 -1279 -1280 2 -1279 minecraft:oak_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
fill -1278 3 -1265 -1279 3 -1265 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
fill -1278 5 -1265 -1279 5 -1265 minecraft:spruce_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]
fill -1283 3 -1265 -1284 3 -1265 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
fill -1283 5 -1265 -1284 5 -1265 minecraft:spruce_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]

setblock -1277 5 -1265 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1277 3 -1265 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1279 2 -1265 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1280 4 -1265 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1282 5 -1265 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1282 4 -1265 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1282 2 -1265 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1285 4 -1265 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}

# Library
setblock -1267 5 -1269 minecraft:chiseled_bookshelf[facing=east,slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:4}
data modify block -1267 5 -1269 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Brannon Andel Sr.",pages:[{raw:{extra:[{color:"dark_red",text:"LIGHTHOUSE "},"beckons."],text:"The time is near.\nI fear for my life and my family's lives.\nI am going the way of my parents, and theirs.\nThe "}},{raw:"I saw it again last night.\nI sat and watched.\nIt watched me.\nWe stared at each other...\nInto each other..."}],resolved:1b,title:{raw:"27 July 1877"}}},count:1,Slot:0b}]
setblock -1262 3 -1267 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:1}
data modify block -1262 3 -1267 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Brannon Andel Sr.",pages:[{raw:{extra:[{color:"dark_red",text:"CELLAR "},"locked but I fear that Anna made it down somehow.\nThe only way in is through the ",{color:"dark_red",text:"LIBRARY"},", but I keep that locked too.\nAnna keeps watching me and Emma, asking where we disappear to."],text:"My mind is clear for the moment.\nI keep the "}}],resolved:1b,title:{raw:"26 July 1877"}}},count:1,Slot:1b}]
data modify block -1262 2 -1267 Items set value [{id:"minecraft:trial_key",components:{"minecraft:custom_name":"Cellar"},count:1,Slot:13b}]
setblock -1258 2 -1266 minecraft:campfire[facing=south,lit=true,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]}

data modify block -1263 2 -1267 Items set value []
data modify block -1264 2 -1267 Items set value []
setblock -1265 4 -1273 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1263 3 -1273 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1260 2 -1273 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1259 5 -1273 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1257 3 -1273 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1264 4 -1267 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:3}

# Cellar
setblock -1274 2 -1284 minecraft:iron_door[facing=west,half=lower,hinge=left,open=false,powered=false]
setblock -1282 -4 -1270 minecraft:waxed_oxidized_copper_bulb[lit=true,powered=false]
setblock -1281 -5 -1276 minecraft:waxed_oxidized_copper_door[facing=south,half=lower,hinge=left,open=false,powered=false]
setblock -1283 -5 -1295 minecraft:iron_door[facing=west,half=lower,hinge=left,open=false,powered=false]
setblock -1279 -5 -1295 minecraft:iron_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock -1283 -5 -1299 minecraft:iron_door[facing=west,half=lower,hinge=left,open=false,powered=false]
setblock -1279 -5 -1299 minecraft:iron_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock -1281 -5 -1303 minecraft:iron_door[facing=north,half=lower,hinge=left,open=false,powered=false]
setblock -1282 -3 -1303 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]
setblock -1280 -3 -1303 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]
setblock -1282 -5 -1303 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]
setblock -1280 -5 -1303 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]
setblock -1287 2 -1264 minecraft:waxed_oxidized_copper_door[facing=north,half=lower,hinge=left,open=false,powered=false]
data modify block -1284 -5 -1287 Items set value [{id:"minecraft:potion",components:{"minecraft:custom_name":"Mead","minecraft:item_model":"piecewiselantern:mead","minecraft:max_stack_size":64,"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}},count:1,Slot:12b}]
data modify block -1284 -5 -1289 Items set value [{id:"minecraft:potion",components:{"minecraft:custom_name":"Mead","minecraft:item_model":"piecewiselantern:mead","minecraft:max_stack_size":64,"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}},count:1,Slot:23b}]
data modify block -1284 -4 -1290 Items set value [{id:"minecraft:potion",components:{"minecraft:custom_name":"Mead","minecraft:item_model":"piecewiselantern:mead","minecraft:max_stack_size":64,"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}},count:1,Slot:1b}]
data modify block -1283 -5 -1277 Items set value [{id:"minecraft:potion",components:{"minecraft:custom_name":"Mead","minecraft:item_model":"piecewiselantern:mead","minecraft:max_stack_size":64,"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}},count:1,Slot:14b}]
data modify block -1278 -4 -1290 Items set value [{id:"minecraft:potion",components:{"minecraft:custom_name":"Wine","minecraft:item_model":"piecewiselantern:wine","minecraft:max_stack_size":64,"minecraft:potion_contents":{potion:"minecraft:night_vision"}},count:1,Slot:14b}]
data modify block -1278 -5 -1288 Items set value [{id:"minecraft:potion",components:{"minecraft:custom_name":"Wine","minecraft:item_model":"piecewiselantern:wine","minecraft:max_stack_size":64,"minecraft:potion_contents":{potion:"minecraft:night_vision"}},count:1,Slot:20b}]
data modify block -1278 -4 -1287 Items set value [{id:"minecraft:potion",components:{"minecraft:custom_name":"Wine","minecraft:item_model":"piecewiselantern:wine","minecraft:max_stack_size":64,"minecraft:potion_contents":{potion:"minecraft:night_vision"}},count:1,Slot:15b}]
data modify block -1278 -5 -1277 Items set value [{id:"minecraft:potion",components:{"minecraft:custom_name":"Wine","minecraft:item_model":"piecewiselantern:wine","minecraft:max_stack_size":64,"minecraft:potion_contents":{potion:"minecraft:night_vision"}},count:1,Slot:5b}]

data modify block -1284 -5 -1285 Items set value []
data modify block -1284 -4 -1286 Items set value []
data modify block -1284 -4 -1288 Items set value []
data modify block -1278 -5 -1289 Items set value []
data modify block -1278 -5 -1286 Items set value []
data modify block -1278 -3 -1286 Items set value []
data modify block -1278 -3 -1288 Items set value []
data modify block -1284 -4 -1277 Items set value []
data modify block -1284 -5 -1277 Items set value []
data modify block -1280 -5 -1281 Items set value []
data modify block -1279 -4 -1281 Items set value []
data modify block -1278 -5 -1281 Items set value []
data modify block -1277 -4 -1281 Items set value []
data modify block -1278 -5 -1277 Items set value []

# Greenhouse
setblock -1290 2 -1264 minecraft:iron_door[facing=north,half=lower,hinge=left,open=false,powered=false]
setblock -1289 3 -1263 minecraft:lever[face=wall,facing=south,powered=false]
setblock -1272 2 -1264 minecraft:iron_door[facing=north,half=lower,hinge=left,open=false,powered=false]
setblock -1273 3 -1263 minecraft:lever[face=wall,facing=south,powered=false]
setblock -1281 2 -1255 minecraft:iron_door[facing=north,half=lower,hinge=left,open=false,powered=false]
setblock -1281 4 -1256 minecraft:lever[face=wall,facing=north,powered=false]
data modify block -1281 2 -1263 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Broadrick Hunt",pages:[{raw:{extra:[{color:"dark_red",text:"CELLAR "},"after fixing the broken glass or I'll find it in Mistress Alice's hands again..."],text:"NOTE TO SELF:\nTake the ladder back down to the "}}],resolved:1b,title:{raw:"Ladder"}}},count:1,Slot:12b},{id:"minecraft:ladder",components:{"minecraft:can_place_on":{blocks:"minecraft:pink_wool"}},count:1,Slot:14b}]

data modify block -1291 2 -1259 Items set value []
data modify block -1291 2 -1260 Items set value []
data modify block -1285 2 -1263 Items set value []
data modify block -1271 2 -1260 Items set value []
data modify block -1283 2 -1256 Items set value []

# Bedroom 1
setblock -1269 10 -1293 minecraft:iron_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock -1268 11 -1294 minecraft:lever[face=wall,facing=east,powered=false]
setblock -1255 15 -1289 minecraft:iron_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]
setblock -1264 11 -1295 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false]{Items:[],last_interacted_slot:4}
data modify block -1264 11 -1295 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Annalise Andel",pages:[{raw:{extra:[{color:"dark_red",text:"CELLAR"}," today while father wasn't looking.\nAt first I saw storage, but then I noticed a strange hallway with colored tiles.\nWhat are behind those locked doors?"],text:"I snuck down into the "}}],resolved:1b,title:{raw:"8 July 1877"}}},count:1,Slot:0b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Annalise Andel",pages:[{raw:{extra:[{color:"dark_red",text:"CELLAR"},".\nHe spends so much time away.\nI know he is up to something."],text:"Father keeps disappearing into the "}}],resolved:1b,title:{raw:"19 July 1877"}}},count:1,Slot:2b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Annalise Andel",pages:[{raw:"Father says we are leaving tonight.\nJust like that.\nSomething feels terribly wrong."}],resolved:1b,title:{raw:"30 July 1877"}}},count:1,Slot:4b}]
setblock -1262 11 -1295 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false]{Items:[],last_interacted_slot:4}
data modify block -1262 11 -1295 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Annalise Andel",pages:[{raw:"I've decided to keep journals.\nWe moved to the old house today and I figure I should write my feelings down instead of holding them in."},{raw:"Father calls this place Andel Manor.\nApparently it's been in the family for generations, though I had not heard of it until a few weeks ago."},{raw:'Alice and Brannon keep calling it the "Big House", I prefer to call it, "Temporary."\nI\'ll be off to university soon.\nIt could not come fast enough.'}],resolved:1b,title:{raw:"1 June 1877"}}},count:1,Slot:0b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Annalise Andel",pages:[{raw:"Father gave us all gifts today.\nHe said they belonged to our grandparents.\nI think he's just trying to cheer us up after the move."}],resolved:1b,title:{raw:"2 June 1877"}}},count:1,Slot:1b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Annalise Andel",pages:[{raw:"Alice and Brannon have taken a liking to the house in the past week.\nThey play hide and seek like I've never seen before.\nI can't blame them, really, the house and the grounds must seem huge to them.\nThey've even gotten me to play a few times."},{raw:"I use it as an excuse to wander places father doesn't want me to go.\nHe says the house is old and can be dangerous.\nHe and mother insist on fixing up the place.\nI say let it crumble."}],resolved:1b,title:{raw:"8 June 1877"}}},count:1,Slot:2b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Annalise Andel",pages:[{raw:'I asked father why we moved here again.\nHe gave me the same answer.\n"This house belongs to the family and it is our responsibility to keep it alive."\nI can\'t help but think he has another motive he won\'t tell me.'}],resolved:1b,title:{raw:"11 June 1877"}}},count:1,Slot:3b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Annalise Andel",pages:[{raw:{extra:[{color:"dark_red",text:"CELLAR"}," locked.\nWhat doesn't he want us to see?"],text:"Father keeps the "}}],resolved:1b,title:{raw:"20 June 1877"}}},count:1,Slot:4b}]
data modify block -1258 10 -1289 Items set value [{id:"minecraft:white_dye",components:{"minecraft:custom_name":"White Crystal","minecraft:item_model":"piecewiselantern:white"},count:1,Slot:13b}]
data modify block -1266 11 -1289 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Emma Andel",pages:[{raw:{extra:[{color:"dark_red",text:"ATTIC"},".\nIt's been over a month and you still haven't finished unpacking.\nHere is the key.\nDO NOT let your brother touch this, we'll never find him again."],text:"Annalise, please finish putting your boxes in the "}}],resolved:1b,title:{raw:"Unpack"}}},count:1,Slot:12b},{id:"minecraft:trial_key",components:{"minecraft:custom_name":"Attic"},count:1,Slot:14b}]
fill -1259 14 -1292 -1262 14 -1290 minecraft:pale_oak_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]

data modify block -1255 10 -1295 Items set value []
data modify block -1255 11 -1290 Items set value []
data modify block -1267 10 -1295 Items set value []
setblock -1262 10 -1295 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}

# Attic
setblock -1281 18 -1278 minecraft:iron_door[facing=south,half=lower,hinge=left,open=false,powered=false]
setblock -1286 18 -1269 minecraft:spruce_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]

data modify block -1277 18 -1275 Items set value []
data modify block -1279 18 -1272 Items set value []
data modify block -1278 19 -1271 Items set value []
data modify block -1278 18 -1270 Items set value []
data modify block -1284 19 -1269 Items set value []
data modify block -1286 18 -1271 Items set value []
data modify block -1282 19 -1275 Items set value []
data modify block -1285 18 -1275 Items set value []
data modify block -1286 18 -1278 Items set value []

# Master Bedroom
setblock -1286 15 -1269 minecraft:dark_oak_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]
setblock -1293 10 -1275 minecraft:iron_door[facing=west,half=lower,hinge=left,open=false,powered=false]
setblock -1294 11 -1276 minecraft:lever[face=wall,facing=west,powered=false]
setblock -1299 11 -1267 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:1}
data modify block -1299 11 -1267 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Brannon Andel Sr.",pages:[{raw:"I lost several hours today.\nI awoke back in my bed.\nEmma said that Broadrick found me mumbling in the hallway."}],resolved:1b,title:{raw:"17 July 1877"}}},count:1,Slot:1b}]
setblock -1299 10 -1268 minecraft:mangrove_door[facing=north,half=lower,hinge=right,open=false,powered=false]
setblock -1299 10 -1273 minecraft:chiseled_bookshelf[facing=south,slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false]{Items:[],last_interacted_slot:4}
data modify block -1299 10 -1273 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Emma Andel",pages:[{raw:"Brannon.\nWhere do you keep going off to?\nI know you'll read this after I'm asleep and I expect an answer tomorrow morning.\nI do not wish to speak ill of each other in front of the children, but I worry for you."}],resolved:1b,title:{raw:"Where are you?"}}},count:1,Slot:0b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Brannon Andel Sr.",pages:[{raw:{extra:[{color:"dark_red",text:"OBSERVATORY"},"."],text:"My dear Emma, do not worry.\nI am away again this morning in the "}}],resolved:1b,title:{raw:"Do not worry."}}},count:1,Slot:2b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Brannon Andel Sr.",pages:[{raw:{extra:[{color:"dark_red",text:"LIGHTHOUSE"},".\nI know I sound like my father but you have to trust me.\nTonight, the 24th I believe it is, find me in the ",{color:"dark_red",text:"OBSERVATORY "},"and I'll show you I'm not crazy."],text:"Emma.\nI saw the "}}],resolved:1b,title:{raw:"Not crazy."}}},count:1,Slot:4b}]
data modify block -1307 10 -1272 Items set value [{id:"minecraft:pale_oak_button",components:{"minecraft:can_place_on":{blocks:"minecraft:polished_blackstone_bricks"},"minecraft:custom_name":"Cellar Lab"},count:1,Slot:13b}]
fill -1305 14 -1270 -1301 14 -1272 minecraft:dark_oak_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]

data modify block -1288 10 -1271 Items set value []
data modify block -1304 11 -1267 Items set value []
data modify block -1300 10 -1273 Items set value []
data modify block -1298 10 -1273 Items set value []
data modify block -1295 10 -1271 Items set value []
setblock -1295 11 -1272 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}
setblock -1299 10 -1267 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}

# Cellar Secret Chamber
setblock -1278 -4 -1277 minecraft:air
setblock -1273 -4 -1275 minecraft:air
setblock -1274 -4 -1275 minecraft:redstone_block
data modify block -1268 -5 -1277 Items set value [{id:"minecraft:trial_key",components:{"minecraft:custom_name":"Observatory"},count:1,Slot:13b}]

data modify block -1271 -4 -1284 Items set value []
data modify block -1268 -5 -1281 Items set value []
data modify block -1268 -4 -1278 Items set value []
data modify block -1268 -5 -1278 Items set value []
data modify block -1272 -4 -1276 Items set value []
setblock -1268 -5 -1283 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[],last_interacted_slot:-1}

# Obervatory
setblock -1277 16 -1286 minecraft:waxed_copper_bulb[lit=true,powered=false]
setblock -1286 16 -1288 minecraft:waxed_copper_bulb[lit=true,powered=false]
setblock -1281 16 -1283 minecraft:iron_door[facing=north,half=lower,hinge=left,open=false,powered=false]
setblock -1284 17 -1284 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false]{Items:[],last_interacted_slot:4}
data modify block -1284 17 -1284 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Brannon Andel Sr.",pages:[{raw:{extra:[{color:"dark_red",text:"LIGHTHOUSE "},"to the north.\nI must have been looking past it all this time.\nMy small spyglass found it easily."],text:"My father was right.\nThere is a "}}],resolved:1b,title:{raw:"11 July 1877"}}},count:1,Slot:0b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Brannon Andel Sr.",pages:[{raw:{extra:[{color:"dark_red",text:"LIGHTHOUSE"},".\nWe are surrounded by nothing but forest, and yet, a ",{color:"dark_red",text:"LIGHTHOUSE "},"stands."],text:"There is nothing I want more than to explain this "}}],resolved:1b,title:{raw:"16 July 1877"}}},count:1,Slot:4b}]
setblock -1285 16 -1284 minecraft:chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true]{Items:[],last_interacted_slot:5}
data modify block -1285 16 -1284 Items set value [{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Brannon Andel Sr.",pages:[{raw:{extra:[{color:"dark_red",text:"LIGHTHOUSE"},".\nShe must believe me now."],text:"It's time I bring Emma up here to see the "}}],resolved:1b,title:{raw:"23 July 1877"}}},count:1,Slot:1b},{id:"minecraft:written_book",components:{"minecraft:written_book_content":{author:"Brannon Andel Sr.",pages:[{raw:{extra:[{color:"dark_red",text:"LIGHTHOUSE "},"tonight for the first time after several attempts.\nShe feels its power.\nShe knows now that we have no choice."],text:"Emma finally saw the "}},{raw:{extra:[{color:"dark_red",text:"LIGHTHOUSE"},".\nWe will take the ",{color:"dark_red",text:"HEIRLOOMS "},"and complete the trials in the ",{color:"dark_red",text:"CELLAR"},"."],text:"Tomorrow we take the children to the "}}],resolved:1b,title:{raw:"29 July 1877"}}},count:1,Slot:5b}]
data modify block -1280 19 -1295 Items set value [{id:"minecraft:spyglass",count:1,Slot:13b}]
data modify block -1280 16 -1295 Items set value [{id:"minecraft:black_dye",components:{"minecraft:custom_name":"Black Pocket Watch","minecraft:item_model":"piecewiselantern:black"},count:1,Slot:13b}]

data modify block -1287 17 -1285 Items set value []
data modify block -1282 16 -1296 Items set value []
data modify block -1281 16 -1296 Items set value []
data modify block -1281 17 -1296 Items set value []
data modify block -1275 16 -1290 Items set value []
data modify block -1275 16 -1288 Items set value []
data modify block -1275 17 -1285 Items set value []

# Puzzles
# Blue
setblock -1296 -14 -1274 minecraft:redstone_block
setblock -1297 -14 -1274 minecraft:air

# Pink
setblock -1273 -14 -1276 minecraft:iron_door[facing=south,half=lower,hinge=left,open=false,powered=false]
fill -1271 -9 -1283 -1275 -9 -1279 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]

#White
setblock -1282 -10 -1308 minecraft:iron_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock -1305 -12 -1315 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]
function piecewiselantern:reset_white_counter
setblock -1282 -12 -1317 minecraft:redstone_block
setblock -1282 -12 -1316 minecraft:air

# Black
setblock -1273 -5 -1306 minecraft:campfire[facing=north,lit=false,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]}
data modify block -1273 -5 -1308 Items set value [{id:"minecraft:flint_and_steel",components:{"minecraft:can_place_on":{blocks:"minecraft:campfire"}},count:1,Slot:13b}]
setblock -1247 1 -1315 minecraft:campfire[facing=east,lit=false,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]}
setblock -1291 -9 -1341 minecraft:campfire[facing=west,lit=false,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]}
setblock -1261 1 -1241 minecraft:campfire[facing=south,lit=false,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]}
setblock -1294 1 -1244 minecraft:campfire[facing=south,lit=false,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]}

setblock -1270 -3 -1307 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]
setblock -1270 -3 -1305 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]
setblock -1270 -3 -1303 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]
setblock -1270 -3 -1301 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]
setblock -1270 -3 -1299 minecraft:waxed_oxidized_copper_bulb[lit=false,powered=false]

# Lighthouse
function piecewiselantern:reset_lighthouse

# Delayed
schedule function piecewiselantern:delayed_reset 1s replace

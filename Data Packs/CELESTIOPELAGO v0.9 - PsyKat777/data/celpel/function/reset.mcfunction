## Resets the map

# Resets starting islet
fill -1855 221 -6399 -1855 222 -6399 tinted_glass
fill -1854 221 -6400 -1854 222 -6400 tinted_glass
fill -1855 221 -6401 -1855 222 -6401 tinted_glass
setblock -1855 223 -6400 tinted_glass
fill -1854 221 -6399 -1854 222 -6399 waxed_oxidized_cut_copper
fill -1854 221 -6401 -1854 222 -6401 waxed_oxidized_cut_copper
setblock -1854 223 -6399 waxed_oxidized_chiseled_copper
setblock -1854 223 -6401 waxed_oxidized_chiseled_copper
setblock -1854 223 -6400 waxed_oxidized_cut_copper_slab
setblock -1855 223 -6399 waxed_oxidized_cut_copper_stairs[facing=west]
setblock -1855 223 -6401 waxed_oxidized_cut_copper_stairs[facing=west]
setblock -1855 219 -6400 redstone_block
setblock -1841 227 -6395 lever[face=floor,facing=east]
fill -1836 219 -6401 -1820 219 -6399 air

# Resets main island
setblock -1810 221 -6408 copper_bulb
setblock -1810 220 -6406 oxidized_copper_bulb
setblock -1800 222 -6403 air
setblock -1800 222 -6403 air
setblock -1800 222 -6397 air
fill -1798 224 -6397 -1798 226 -6397 air
fill -1798 220 -6388 -1800 222 -6386 air
setblock -1792 221 -6394 air
setblock -1790 222 -6394 air
setblock -1794 223 -6394 air
setblock -1791 224 -6394 air
setblock -1793 225 -6394 air
setblock -1784 224 -6400 air
clone -1775 218 -6392 -1779 218 -6396 -1779 217 -6402
fill -1790 220 -6406 -1794 224 -6406 air
setblock -1792 243 -6395 cut_copper
setblock -1788 245 -6405 air
setblock -1797 246 -6396 repeater[facing=south]
setblock -1790 244 -6406 redstone_lamp
setblock -1792 245 -6405 air
setblock -1792 246 -6405 air
setblock -1792 245 -6406 air
setblock -1792 246 -6406 air
setblock -1792 247 -6405 chiseled_copper
fill -1792 245 -6394 -1792 247 -6394 air
setblock -1792 245 -6394 redstone_block
fill -1764 220 -6398 -1744 231 -6375 air replace light_blue_stained_glass
fill -1790 220 -6406 -1794 224 -6406 netherite_block
fill -1793 220 -6402 -1795 226 -6400 air
setblock -1794 227 -6401 obsidian
setblock -1794 228 -6401 polished_deepslate
setblock -1794 228 -6402 deepslate_tile_stairs[half=top,facing=south]
setblock -1793 228 -6402 deepslate_tile_stairs[half=top,facing=south,shape=outer_right]
setblock -1793 228 -6401 deepslate_tile_stairs[half=top,facing=west]
setblock -1793 228 -6400 deepslate_tile_stairs[half=top,facing=west,shape=outer_right]
setblock -1794 228 -6400 deepslate_tile_stairs[half=top,facing=north]
setblock -1795 228 -6400 deepslate_tile_stairs[half=top,facing=north,shape=outer_right]
setblock -1795 228 -6401 deepslate_tile_stairs[half=top,facing=east]
setblock -1795 228 -6402 deepslate_tile_stairs[half=top,facing=east,shape=outer_right]
fill -1789 220 -6402 -1791 228 -6400 air
fill -1790 222 -6401 -1790 228 -6401 iron_chain
clone -1793 228 -6402 -1795 228 -6400 -1791 221 -6402
setblock -1790 220 -6401 crying_obsidian
setblock -1792 220 -6398 air
setblock -1792 221 -6397 air
fill -1784 196 -6401 -1781 196 -6398 air

# Resets the first outer islet
setblock -1880 262 -6491 redstone_lamp
setblock -1832 241 -6481 redstone_lamp
setblock -1861 253 -6448 redstone_lamp
setblock -1865 235 -6463 redstone_lamp
fill -1862 243 -6480 -1862 244 -6480 copper_bars[east=true,west=true]

# Resets the second outer islet
setblock -1824 200 -6271 copper_bulb
setblock -1831 200 -6264 copper_bulb[powered=true]
setblock -1838 200 -6271 copper_bulb
fill -1819 198 -6271 -1819 199 -6271 copper_bars[north=true,south=true]
fill -1831 198 -6283 -1831 199 -6283 copper_bars[east=true,west=true]

# Resets the third outer islet
fill -1712 255 -6412 -1712 259 -6412 air
setblock -1712 255 -6412 redstone_block
fill -1690 260 -6435 -1690 266 -6435 air
setblock -1690 260 -6435 redstone_block
fill -1690 260 -6391 -1690 268 -6391 air
setblock -1690 260 -6391 redstone_block
fill -1678 260 -6414 -1678 272 -6414 air
setblock -1678 260 -6414 redstone_block
fill -1694 256 -6412 -1694 257 -6412 copper_bars[north=true,south=true]

# Replacing chests
clone -1808 218 -6400 -1808 218 -6400 -1808 221 -6400
clone -1871 243 -6473 -1871 243 -6473 -1872 246 -6473
clone -1863 243 -6461 -1863 243 -6461 -1862 243 -6481
clone -1831 198 -6260 -1831 198 -6260 -1824 199 -6288
clone -1842 198 -6271 -1842 198 -6271 -1831 198 -6282
clone -1700 257 -6412 -1700 257 -6412 -1695 256 -6412
clone -1794 237 -6400 -1794 237 -6400 -1790 245 -6400
clone -1792 237 -6402 -1792 237 -6402 -1796 245 -6405
clone -1792 237 -6402 -1792 237 -6402 -1790 252 -6398
clone -1788 200 -6393 -1788 200 -6393 -1792 197 -6399

# Prevents stupid random things from preventing proper resets
setblock -1820 198 -6271 copper_chest[facing=east]
setblock -1800 220 -6400 copper_chest[facing=west]
fill -1791 224 -6404 -1790 245 -6405 air replace repeater
fill -1823 200 -6277 -1837 201 -6266 air replace repeater
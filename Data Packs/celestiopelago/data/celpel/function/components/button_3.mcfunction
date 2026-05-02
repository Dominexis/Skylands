# Activates on the first press of the button
setblock -1798 226 -6397 redstone_block
execute positioned -1798 222 -6397 run playsound block.note_block.bit block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1 2

fill -1798 220 -6386 -1800 221 -6386 waxed_oxidized_cut_copper
fill -1798 220 -6387 -1800 220 -6387 waxed_oxidized_cut_copper
setblock -1798 222 -6386 waxed_oxidized_cut_copper
setblock -1799 222 -6386 waxed_oxidized_cut_copper_slab
setblock -1800 222 -6386 waxed_oxidized_cut_copper
setblock -1798 221 -6387 waxed_oxidized_cut_copper
setblock -1799 221 -6387 waxed_oxidized_cut_copper_slab
setblock -1800 221 -6387 waxed_oxidized_cut_copper
setblock -1798 220 -6388 waxed_oxidized_cut_copper
setblock -1799 220 -6388 waxed_oxidized_cut_copper_slab
setblock -1800 220 -6388 waxed_oxidized_cut_copper
execute positioned -1799 221 -6385 run playsound block.piston.extend block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 2.5 1
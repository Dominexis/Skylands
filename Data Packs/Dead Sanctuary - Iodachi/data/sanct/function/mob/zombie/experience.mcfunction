
scoreboard players add #experience_total sanct.numbers 5
experience add @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] 5

function sanct:mob/experience with storage sanct:storage root.experience
advancement revoke @s only sanct:mob/zombie/experience
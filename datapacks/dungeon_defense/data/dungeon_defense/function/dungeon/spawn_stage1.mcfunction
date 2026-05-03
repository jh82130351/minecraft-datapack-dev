summon zombie 10005 100 10005 {CustomName:'{"text":"1단계 좀비","color":"green"}',Health:25f,attributes:[{id:"minecraft:generic.max_health",base:25},{id:"minecraft:generic.attack_damage",base:3}],Tags:["dungeon_mob","stage1"]}

summon zombie 9995 100 9995 {CustomName:'{"text":"1단계 좀비","color":"green"}',Health:25f,attributes:[{id:"minecraft:generic.max_health",base:25},{id:"minecraft:generic.attack_damage",base:3}],Tags:["dungeon_mob","stage1"]}

execute at @e[tag=stage1,tag=dungeon_mob] run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute at @e[tag=stage1,tag=dungeon_mob] run playsound entity.zombie.ambient hostile @a ~ ~ ~ 1 0.8

title @a[tag=in_dungeon] title {"text":"Wave 1","color":"green","bold":true}
title @a[tag=in_dungeon] subtitle {"text":"좀비 2마리","color":"gray"}

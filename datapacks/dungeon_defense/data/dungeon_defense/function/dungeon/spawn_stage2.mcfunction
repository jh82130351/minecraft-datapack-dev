summon zombie 10005 100 10005 {CustomName:'{"text":"2단계 좀비","color":"yellow"}',Health:40f,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.attack_damage",base:5}],Tags:["dungeon_mob","stage2"]}

summon skeleton 9995 100 9995 {CustomName:'{"text":"2단계 스켈레톤","color":"yellow"}',Health:35f,attributes:[{id:"minecraft:generic.max_health",base:35}],HandItems:[{id:"minecraft:bow",count:1}],Tags:["dungeon_mob","stage2"]}

execute at @e[tag=stage2,tag=dungeon_mob] run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.1 30

title @a[tag=in_dungeon] title {"text":"Wave 2","color":"gold","bold":true}
title @a[tag=in_dungeon] subtitle {"text":"좀비 1 + 스켈레톤 1","color":"gray"}

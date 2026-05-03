summon zombie 10005 100 10005 {CustomName:'{"text":"3단계 좀비","color":"red"}',Health:60f,attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.attack_damage",base:7}],Tags:["dungeon_mob","stage3"]}

summon skeleton 10000 100 9995 {CustomName:'{"text":"3단계 스켈레톤","color":"red"}',Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50}],HandItems:[{id:"minecraft:bow",count:1}],Tags:["dungeon_mob","stage3"]}

summon creeper 9995 100 10005 {CustomName:'{"text":"3단계 크리퍼","color":"red"}',Health:40f,attributes:[{id:"minecraft:generic.max_health",base:40}],ExplosionRadius:4b,Tags:["dungeon_mob","stage3"]}

execute at @e[tag=stage3,tag=dungeon_mob] run particle lava ~ ~1 ~ 0.5 0.5 0.5 0.1 50

title @a[tag=in_dungeon] title {"text":"Wave 3","color":"dark_red","bold":true}
title @a[tag=in_dungeon] subtitle {"text":"좀비 + 스켈레톤 + 크리퍼","color":"gray"}

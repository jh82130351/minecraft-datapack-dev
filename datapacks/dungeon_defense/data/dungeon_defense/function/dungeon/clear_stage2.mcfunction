# 2단계 클리어
title @a[tag=in_dungeon] title {"text":"WAVE 2 CLEAR!","color":"green"}
title @a[tag=in_dungeon] subtitle {"text":"보스 웨이브 진입! 준비하라!","color":"gold"}
playsound.entity.firework_rocket.twinkle player @a 10000 100 10000 1 1.5

scoreboard players set @s dungeon_stage 3
function dungeon_defense:dungeon/spawn_stage3

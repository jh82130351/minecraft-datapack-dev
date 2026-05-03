# 1단계 클리어
title @a[tag=in_dungeon] title {"text":"WAVE 1 CLEAR!","color":"green"}
title @a[tag=in_dungeon] subtitle {"text":"2단계로 진입합니다...","color":"yellow"}
playsound entity.firework_rocket.twinkle player @a 10000 100 10000 1 1.5

scoreboard players set @s dungeon_stage 2
function dungeon_defense:dungeon/spawn_stage2

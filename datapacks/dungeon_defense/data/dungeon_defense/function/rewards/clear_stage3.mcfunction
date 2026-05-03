# 3단계(보스) 클리어 - 보상
title @a[tag=in_dungeon] title {"text":"🎉 DUNGEON CLEAR! 🎉","color":"gold"}
title @a[tag=in_dungeon] subtitle {"text":"모든 웨이브를 클리어했습니다!","color":"green"}
playsound.entity.firework_rocket.twinkle_far player @a 10000 100 10000 1 1.5

# 보상 지급
give @s diamond 3
give @s golden_apple 1
give @s experience_bottle 5

# 경험치
experience add @s 30 levels

# 던전 상태 초기화
tag @s remove in_dungeon
scoreboard players set @s dungeon_stage 0
scoreboard players set @s dungeon_timer 0

# 퇴장
tp @s 0 100 0

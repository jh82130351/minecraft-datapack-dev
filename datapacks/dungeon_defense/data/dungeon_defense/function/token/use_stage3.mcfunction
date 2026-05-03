clear @s paper[minecraft:custom_data={dungeon_token:3}] 1

scoreboard players set @s dungeon_timer 60
tag @s add waiting_teleport
scoreboard players set @s dungeon_stage 3

title @s actionbar {"text":"3초 후 3단계 던전으로 이동합니다...","color":"red"}
playsound entity.enderman.teleport player @s ~ ~ ~ 1 0.8

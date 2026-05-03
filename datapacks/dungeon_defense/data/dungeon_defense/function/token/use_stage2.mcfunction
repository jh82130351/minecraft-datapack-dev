clear @s paper[minecraft:custom_data={dungeon_token:2}] 1

scoreboard players set @s dungeon_timer 60
tag @s add waiting_teleport
scoreboard players set @s dungeon_stage 2

title @s actionbar {"text":"3초 후 2단계 던전으로 이동합니다...","color":"gold"}
playsound entity.enderman.teleport player @s ~ ~ ~ 1 1.2

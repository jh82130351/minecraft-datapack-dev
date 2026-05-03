give @s paper[minecraft:custom_name='{"text":"3단계 던전 토큰","color":"red","bold":true}',minecraft:lore=['{"text":"최종 단계","color":"dark_red"}'],minecraft:custom_model_data=1003,minecraft:custom_data={dungeon_token:3}] 1

title @s title {"text":"STAGE 2 CLEAR!","color":"gold","bold":true}
playsound ui.toast.challenge_complete player @s ~ ~ ~ 1 1.2
experience add @s 20 levels

tp @s 0 100 0
tag @s remove in_dungeon
scoreboard players reset @s dungeon_stage
kill @e[tag=dungeon_mob]

tellraw @s {"text":"[보상] 3단계 던전 토큰 획득!","color":"light_purple"}

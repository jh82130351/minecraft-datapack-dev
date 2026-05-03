give @s paper[minecraft:custom_name='{"text":"2단계 던전 토큰","color":"gold","bold":true}',minecraft:lore=['{"text":"우클릭하여 사용","color":"gray"}'],minecraft:custom_model_data=1002,minecraft:custom_data={dungeon_token:2}] 1

title @s title {"text":"STAGE 1 CLEAR!","color":"green","bold":true}
playsound ui.toast.challenge_complete player @s ~ ~ ~ 1 1
experience add @s 10 levels

tp @s 0 100 0
tag @s remove in_dungeon
scoreboard players reset @s dungeon_stage
kill @e[tag=dungeon_mob]

tellraw @s {"text":"[보상] 2단계 던전 토큰 획득!","color":"aqua"}

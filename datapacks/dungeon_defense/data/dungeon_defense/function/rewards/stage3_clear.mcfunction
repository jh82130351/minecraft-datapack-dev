give @s diamond_block[minecraft:custom_name='{"text":"귀한 석","color":"aqua","bold":true}',minecraft:lore=['{"text":"최고 난이도 클리어 보상","color":"gray"}']] 1

title @s title {"text":"FINAL STAGE CLEAR!","color":"dark_red","bold":true}
title @s subtitle {"text":"축하합니다!","color":"gold"}
playsound ui.toast.challenge_complete player @s ~ ~ ~ 1 0.8
experience add @s 50 levels

tp @s 0 100 0
tag @s remove in_dungeon
scoreboard players reset @s dungeon_stage
kill @e[tag=dungeon_mob]

tellraw @s [{"text":"[최종 보상] ","color":"gold","bold":true},{"text":"귀한 석 획득!","color":"aqua"}]

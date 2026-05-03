execute unless score @s coins matches 120.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 120 코인)","color":"red"}
execute unless score @s coins matches 120.. run scoreboard players reset @s buy_regen2
execute unless score @s coins matches 120.. run return 0

scoreboard players remove @s coins 120
give @s potion[potion_contents={potion:"minecraft:strong_regeneration"}] 1
tellraw @s {"text":"✅ 재생 II 포션 구매 완료!","color":"green"}
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
scoreboard players reset @s buy_regen2

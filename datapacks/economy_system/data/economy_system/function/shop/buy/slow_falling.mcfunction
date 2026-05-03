execute unless score @s coins matches 40.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 40 코인)","color":"red"}
execute unless score @s coins matches 40.. run scoreboard players reset @s buy_slow_falling
execute unless score @s coins matches 40.. run return 0

scoreboard players remove @s coins 40
give @s potion[potion_contents={potion:"minecraft:long_slow_falling"}] 1
tellraw @s {"text":"✅ 느린 낙하 포션 구매 완료!","color":"green"}
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
scoreboard players reset @s buy_slow_falling

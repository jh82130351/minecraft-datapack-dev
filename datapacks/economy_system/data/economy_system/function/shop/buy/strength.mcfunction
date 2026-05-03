execute unless score @s coins matches 50.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 50 코인)","color":"red"}
execute unless score @s coins matches 50.. run scoreboard players reset @s buy_strength
execute unless score @s coins matches 50.. run return 0

scoreboard players remove @s coins 50
give @s potion[potion_contents={potion:"minecraft:long_strength"}] 1
tellraw @s {"text":"✅ 힘 포션 구매 완료!","color":"green"}
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
scoreboard players reset @s buy_strength

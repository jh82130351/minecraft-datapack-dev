execute unless score @s coins matches 40.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 40 코인)","color":"red"}
execute unless score @s coins matches 40.. run scoreboard players reset @s buy_water_breathing
execute unless score @s coins matches 40.. run return 0

scoreboard players remove @s coins 40
give @s potion[potion_contents={potion:"minecraft:long_water_breathing"}] 1
tellraw @s {"text":"✅ 수중 호흡 포션 구매 완료!","color":"green"}
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
scoreboard players reset @s buy_water_breathing

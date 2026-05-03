execute unless score @s coins matches 80.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 80 코인)","color":"red"}
execute unless score @s coins matches 80.. run scoreboard players reset @s buy_turtle_master
execute unless score @s coins matches 80.. run return 0

scoreboard players remove @s coins 80
give @s potion[potion_contents={potion:"minecraft:long_turtle_master"}] 1
tellraw @s {"text":"✅ 거북 물약 구매 완료!","color":"green"}
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
scoreboard players reset @s buy_turtle_master

# 번호 1: 신속 (50 코인)
execute if score @s buy matches 1 unless score @s coins matches 50.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 50 코인)","color":"red"}
execute if score @s buy matches 1 unless score @s coins matches 50.. run scoreboard players reset @s buy
execute if score @s buy matches 1 unless score @s coins matches 50.. run return 0
execute if score @s buy matches 1 run scoreboard players remove @s coins 50
execute if score @s buy matches 1 run give @s potion[minecraft:potion_contents={potion:"minecraft:long_swiftness"}] 1
execute if score @s buy matches 1 run tellraw @s {"text":"✅ 신속 포션 구매 완료!","color":"green"}
execute if score @s buy matches 1 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 1 run scoreboard players reset @s buy
execute if score @s buy matches 1 run return 0

# 번호 2: 힘 (50 코인)
execute if score @s buy matches 2 unless score @s coins matches 50.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 50 코인)","color":"red"}
execute if score @s buy matches 2 unless score @s coins matches 50.. run scoreboard players reset @s buy
execute if score @s buy matches 2 unless score @s coins matches 50.. run return 0
execute if score @s buy matches 2 run scoreboard players remove @s coins 50
execute if score @s buy matches 2 run give @s potion[minecraft:potion_contents={potion:"minecraft:long_strength"}] 1
execute if score @s buy matches 2 run tellraw @s {"text":"✅ 힘 포션 구매 완료!","color":"green"}
execute if score @s buy matches 2 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 2 run scoreboard players reset @s buy
execute if score @s buy matches 2 run return 0

# 번호 3: 재생 (60 코인)
execute if score @s buy matches 3 unless score @s coins matches 60.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 60 코인)","color":"red"}
execute if score @s buy matches 3 unless score @s coins matches 60.. run scoreboard players reset @s buy
execute if score @s buy matches 3 unless score @s coins matches 60.. run return 0
execute if score @s buy matches 3 run scoreboard players remove @s coins 60
execute if score @s buy matches 3 run give @s potion[minecraft:potion_contents={potion:"minecraft:long_regeneration"}] 1
execute if score @s buy matches 3 run tellraw @s {"text":"✅ 재생 포션 구매 완료!","color":"green"}
execute if score @s buy matches 3 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 3 run scoreboard players reset @s buy
execute if score @s buy matches 3 run return 0

# 번호 4: 화염 저항 (40 코인)
execute if score @s buy matches 4 unless score @s coins matches 40.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 40 코인)","color":"red"}
execute if score @s buy matches 4 unless score @s coins matches 40.. run scoreboard players reset @s buy
execute if score @s buy matches 4 unless score @s coins matches 40.. run return 0
execute if score @s buy matches 4 run scoreboard players remove @s coins 40
execute if score @s buy matches 4 run give @s potion[minecraft:potion_contents={potion:"minecraft:long_fire_resistance"}] 1
execute if score @s buy matches 4 run tellraw @s {"text":"✅ 화염 저항 포션 구매 완료!","color":"green"}
execute if score @s buy matches 4 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 4 run scoreboard players reset @s buy
execute if score @s buy matches 4 run return 0

# 번호 5: 야간 투시 (40 코인)
execute if score @s buy matches 5 unless score @s coins matches 40.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 40 코인)","color":"red"}
execute if score @s buy matches 5 unless score @s coins matches 40.. run scoreboard players reset @s buy
execute if score @s buy matches 5 unless score @s coins matches 40.. run return 0
execute if score @s buy matches 5 run scoreboard players remove @s coins 40
execute if score @s buy matches 5 run give @s potion[minecraft:potion_contents={potion:"minecraft:long_night_vision"}] 1
execute if score @s buy matches 5 run tellraw @s {"text":"✅ 야간 투시 포션 구매 완료!","color":"green"}
execute if score @s buy matches 5 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 5 run scoreboard players reset @s buy
execute if score @s buy matches 5 run return 0

# 번호 6: 투명화 (80 코인)
execute if score @s buy matches 6 unless score @s coins matches 80.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 80 코인)","color":"red"}
execute if score @s buy matches 6 unless score @s coins matches 80.. run scoreboard players reset @s buy
execute if score @s buy matches 6 unless score @s coins matches 80.. run return 0
execute if score @s buy matches 6 run scoreboard players remove @s coins 80
execute if score @s buy matches 6 run give @s potion[minecraft:potion_contents={potion:"minecraft:long_invisibility"}] 1
execute if score @s buy matches 6 run tellraw @s {"text":"✅ 투명화 포션 구매 완료!","color":"green"}
execute if score @s buy matches 6 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 6 run scoreboard players reset @s buy
execute if score @s buy matches 6 run return 0

# 번호 7: 수중 호흡 (40 코인)
execute if score @s buy matches 7 unless score @s coins matches 40.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 40 코인)","color":"red"}
execute if score @s buy matches 7 unless score @s coins matches 40.. run scoreboard players reset @s buy
execute if score @s buy matches 7 unless score @s coins matches 40.. run return 0
execute if score @s buy matches 7 run scoreboard players remove @s coins 40
execute if score @s buy matches 7 run give @s potion[minecraft:potion_contents={potion:"minecraft:long_water_breathing"}] 1
execute if score @s buy matches 7 run tellraw @s {"text":"✅ 수중 호흡 포션 구매 완료!","color":"green"}
execute if score @s buy matches 7 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 7 run scoreboard players reset @s buy
execute if score @s buy matches 7 run return 0

# 번호 8: 느린 낙하 (40 코인)
execute if score @s buy matches 8 unless score @s coins matches 40.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 40 코인)","color":"red"}
execute if score @s buy matches 8 unless score @s coins matches 40.. run scoreboard players reset @s buy
execute if score @s buy matches 8 unless score @s coins matches 40.. run return 0
execute if score @s buy matches 8 run scoreboard players remove @s coins 40
execute if score @s buy matches 8 run give @s potion[minecraft:potion_contents={potion:"minecraft:long_slow_falling"}] 1
execute if score @s buy matches 8 run tellraw @s {"text":"✅ 느린 낙하 포션 구매 완료!","color":"green"}
execute if score @s buy matches 8 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 8 run scoreboard players reset @s buy
execute if score @s buy matches 8 run return 0

# 번호 11: 신속 II (100 코인)
execute if score @s buy matches 11 unless score @s coins matches 100.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 100 코인)","color":"red"}
execute if score @s buy matches 11 unless score @s coins matches 100.. run scoreboard players reset @s buy
execute if score @s buy matches 11 unless score @s coins matches 100.. run return 0
execute if score @s buy matches 11 run scoreboard players remove @s coins 100
execute if score @s buy matches 11 run give @s potion[minecraft:potion_contents={potion:"minecraft:strong_swiftness"}] 1
execute if score @s buy matches 11 run tellraw @s {"text":"✅ 신속 II 포션 구매 완료!","color":"green"}
execute if score @s buy matches 11 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 11 run scoreboard players reset @s buy
execute if score @s buy matches 11 run return 0

# 번호 12: 힘 II (100 코인)
execute if score @s buy matches 12 unless score @s coins matches 100.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 100 코인)","color":"red"}
execute if score @s buy matches 12 unless score @s coins matches 100.. run scoreboard players reset @s buy
execute if score @s buy matches 12 unless score @s coins matches 100.. run return 0
execute if score @s buy matches 12 run scoreboard players remove @s coins 100
execute if score @s buy matches 12 run give @s potion[minecraft:potion_contents={potion:"minecraft:strong_strength"}] 1
execute if score @s buy matches 12 run tellraw @s {"text":"✅ 힘 II 포션 구매 완료!","color":"green"}
execute if score @s buy matches 12 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 12 run scoreboard players reset @s buy
execute if score @s buy matches 12 run return 0

# 번호 13: 재생 II (120 코인)
execute if score @s buy matches 13 unless score @s coins matches 120.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 120 코인)","color":"red"}
execute if score @s buy matches 13 unless score @s coins matches 120.. run scoreboard players reset @s buy
execute if score @s buy matches 13 unless score @s coins matches 120.. run return 0
execute if score @s buy matches 13 run scoreboard players remove @s coins 120
execute if score @s buy matches 13 run give @s potion[minecraft:potion_contents={potion:"minecraft:strong_regeneration"}] 1
execute if score @s buy matches 13 run tellraw @s {"text":"✅ 재생 II 포션 구매 완료!","color":"green"}
execute if score @s buy matches 13 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 13 run scoreboard players reset @s buy
execute if score @s buy matches 13 run return 0

# 번호 20: 거북 물약 (80 코인)
execute if score @s buy matches 20 unless score @s coins matches 80.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 80 코인)","color":"red"}
execute if score @s buy matches 20 unless score @s coins matches 80.. run scoreboard players reset @s buy
execute if score @s buy matches 20 unless score @s coins matches 80.. run return 0
execute if score @s buy matches 20 run scoreboard players remove @s coins 80
execute if score @s buy matches 20 run give @s potion[minecraft:potion_contents={potion:"minecraft:long_turtle_master"}] 1
execute if score @s buy matches 20 run tellraw @s {"text":"✅ 거북 물약 구매 완료!","color":"green"}
execute if score @s buy matches 20 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 20 run scoreboard players reset @s buy
execute if score @s buy matches 20 run return 0

# 번호 9: 채굴 속도 (50 코인)
execute if score @s buy matches 9 unless score @s coins matches 50.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 50 코인)","color":"red"}
execute if score @s buy matches 9 unless score @s coins matches 50.. run scoreboard players reset @s buy
execute if score @s buy matches 9 unless score @s coins matches 50.. run return 0
execute if score @s buy matches 9 run scoreboard players remove @s coins 50
execute if score @s buy matches 9 run effect give @s minecraft:haste 480 0
execute if score @s buy matches 9 run tellraw @s {"text":"✅ 채굴 속도(8분) 구매 완료!","color":"green"}
execute if score @s buy matches 9 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 9 run scoreboard players reset @s buy
execute if score @s buy matches 9 run return 0

# 번호 10: 점프 강화 (50 코인)
execute if score @s buy matches 10 unless score @s coins matches 50.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 50 코인)","color":"red"}
execute if score @s buy matches 10 unless score @s coins matches 50.. run scoreboard players reset @s buy
execute if score @s buy matches 10 unless score @s coins matches 50.. run return 0
execute if score @s buy matches 10 run scoreboard players remove @s coins 50
execute if score @s buy matches 10 run give @s potion[minecraft:potion_contents={potion:"minecraft:long_leaping"}] 1
execute if score @s buy matches 10 run tellraw @s {"text":"✅ 점프 강화 포션 구매 완료!","color":"green"}
execute if score @s buy matches 10 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 10 run scoreboard players reset @s buy
execute if score @s buy matches 10 run return 0

# 번호 14: 채굴 속도 II (100 코인)
execute if score @s buy matches 14 unless score @s coins matches 100.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 100 코인)","color":"red"}
execute if score @s buy matches 14 unless score @s coins matches 100.. run scoreboard players reset @s buy
execute if score @s buy matches 14 unless score @s coins matches 100.. run return 0
execute if score @s buy matches 14 run scoreboard players remove @s coins 100
execute if score @s buy matches 14 run effect give @s minecraft:haste 240 1
execute if score @s buy matches 14 run tellraw @s {"text":"✅ 채굴 속도 II 포션 구매 완료!","color":"green"}
execute if score @s buy matches 14 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s buy matches 14 run scoreboard players reset @s buy
execute if score @s buy matches 14 run return 0

# 잘못된 번호
tellraw @s {"text":"❌ 잘못된 번호입니다! /trigger shop 으로 목록 확인","color":"red"}
scoreboard players reset @s buy

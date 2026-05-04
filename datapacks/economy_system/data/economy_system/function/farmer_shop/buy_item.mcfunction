# 번호 1: 성장 촉진제 x16 (50 코인)
execute if score @s farmer_buy matches 1 unless score @s coins matches 50.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 50 코인)","color":"red"}
execute if score @s farmer_buy matches 1 unless score @s coins matches 50.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 1 unless score @s coins matches 50.. run return 0
execute if score @s farmer_buy matches 1 run scoreboard players remove @s coins 50
execute if score @s farmer_buy matches 1 run give @s bone_meal[custom_name='{"text":"🌾 성장 촉진제","color":"green","italic":false}',lore=['{"text":"작물 성장에 효과적!","color":"gray","italic":false}','{"text":"골분과 동일한 효과","color":"dark_green","italic":false}'],enchantment_glint_override=true] 16
execute if score @s farmer_buy matches 1 run tellraw @s {"text":"✅ 성장 촉진제 x16 구매 완료!","color":"green"}
execute if score @s farmer_buy matches 1 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 1 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 1 run return 0

# 번호 2: 성장 촉진제 x64 (180 코인) - 10% 할인
execute if score @s farmer_buy matches 2 unless score @s coins matches 180.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 180 코인)","color":"red"}
execute if score @s farmer_buy matches 2 unless score @s coins matches 180.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 2 unless score @s coins matches 180.. run return 0
execute if score @s farmer_buy matches 2 run scoreboard players remove @s coins 180
execute if score @s farmer_buy matches 2 run give @s bone_meal[custom_name='{"text":"🌾 성장 촉진제","color":"green","italic":false}',lore=['{"text":"작물 성장에 효과적!","color":"gray","italic":false}','{"text":"골분과 동일한 효과","color":"dark_green","italic":false}'],enchantment_glint_override=true] 64
execute if score @s farmer_buy matches 2 run tellraw @s [{"text":"✅ 성장 촉진제 x64 구매 완료! ","color":"green"},{"text":"(10% 할인 적용)","color":"aqua"}]
execute if score @s farmer_buy matches 2 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.2
execute if score @s farmer_buy matches 2 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 2 run return 0

# 번호 3: 성장 촉진제 x128 (320 코인) - 20% 할인
execute if score @s farmer_buy matches 3 unless score @s coins matches 320.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 320 코인)","color":"red"}
execute if score @s farmer_buy matches 3 unless score @s coins matches 320.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 3 unless score @s coins matches 320.. run return 0
execute if score @s farmer_buy matches 3 run scoreboard players remove @s coins 320
execute if score @s farmer_buy matches 3 run give @s bone_meal[custom_name='{"text":"🌾 성장 촉진제","color":"green","italic":false}',lore=['{"text":"작물 성장에 효과적!","color":"gray","italic":false}','{"text":"골분과 동일한 효과","color":"dark_green","italic":false}'],enchantment_glint_override=true] 64
execute if score @s farmer_buy matches 3 run give @s bone_meal[custom_name='{"text":"🌾 성장 촉진제","color":"green","italic":false}',lore=['{"text":"작물 성장에 효과적!","color":"gray","italic":false}','{"text":"골분과 동일한 효과","color":"dark_green","italic":false}'],enchantment_glint_override=true] 64
execute if score @s farmer_buy matches 3 run tellraw @s [{"text":"✅ 성장 촉진제 x128 구매 완료! ","color":"green"},{"text":"(20% 할인 적용)","color":"aqua"}]
execute if score @s farmer_buy matches 3 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 3 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 3 run return 0

# 번호 4: 밀 씨앗 x64 (20 코인)
execute if score @s farmer_buy matches 4 unless score @s coins matches 20.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 20 코인)","color":"red"}
execute if score @s farmer_buy matches 4 unless score @s coins matches 20.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 4 unless score @s coins matches 20.. run return 0
execute if score @s farmer_buy matches 4 run scoreboard players remove @s coins 20
execute if score @s farmer_buy matches 4 run give @s wheat_seeds 64
execute if score @s farmer_buy matches 4 run tellraw @s {"text":"✅ 밀 씨앗 x64 구매 완료!","color":"green"}
execute if score @s farmer_buy matches 4 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 4 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 4 run return 0

# 번호 5: 당근 x64 (30 코인)
execute if score @s farmer_buy matches 5 unless score @s coins matches 30.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 30 코인)","color":"red"}
execute if score @s farmer_buy matches 5 unless score @s coins matches 30.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 5 unless score @s coins matches 30.. run return 0
execute if score @s farmer_buy matches 5 run scoreboard players remove @s coins 30
execute if score @s farmer_buy matches 5 run give @s carrot 64
execute if score @s farmer_buy matches 5 run tellraw @s {"text":"✅ 당근 x64 구매 완료!","color":"green"}
execute if score @s farmer_buy matches 5 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 5 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 5 run return 0

# 번호 6: 감자 x64 (30 코인)
execute if score @s farmer_buy matches 6 unless score @s coins matches 30.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 30 코인)","color":"red"}
execute if score @s farmer_buy matches 6 unless score @s coins matches 30.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 6 unless score @s coins matches 30.. run return 0
execute if score @s farmer_buy matches 6 run scoreboard players remove @s coins 30
execute if score @s farmer_buy matches 6 run give @s potato 64
execute if score @s farmer_buy matches 6 run tellraw @s {"text":"✅ 감자 x64 구매 완료!","color":"green"}
execute if score @s farmer_buy matches 6 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 6 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 6 run return 0

# 번호 7: 비트 씨앗 x64 (25 코인)
execute if score @s farmer_buy matches 7 unless score @s coins matches 25.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 25 코인)","color":"red"}
execute if score @s farmer_buy matches 7 unless score @s coins matches 25.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 7 unless score @s coins matches 25.. run return 0
execute if score @s farmer_buy matches 7 run scoreboard players remove @s coins 25
execute if score @s farmer_buy matches 7 run give @s beetroot_seeds 64
execute if score @s farmer_buy matches 7 run tellraw @s {"text":"✅ 비트 씨앗 x64 구매 완료!","color":"green"}
execute if score @s farmer_buy matches 7 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 7 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 7 run return 0

# 번호 8: 호박 씨앗 x16 (40 코인)
execute if score @s farmer_buy matches 8 unless score @s coins matches 40.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 40 코인)","color":"red"}
execute if score @s farmer_buy matches 8 unless score @s coins matches 40.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 8 unless score @s coins matches 40.. run return 0
execute if score @s farmer_buy matches 8 run scoreboard players remove @s coins 40
execute if score @s farmer_buy matches 8 run give @s pumpkin_seeds 16
execute if score @s farmer_buy matches 8 run tellraw @s {"text":"✅ 호박 씨앗 x16 구매 완료!","color":"green"}
execute if score @s farmer_buy matches 8 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 8 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 8 run return 0

# 번호 9: 수박 씨앗 x16 (40 코인)
execute if score @s farmer_buy matches 9 unless score @s coins matches 40.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 40 코인)","color":"red"}
execute if score @s farmer_buy matches 9 unless score @s coins matches 40.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 9 unless score @s coins matches 40.. run return 0
execute if score @s farmer_buy matches 9 run scoreboard players remove @s coins 40
execute if score @s farmer_buy matches 9 run give @s melon_seeds 16
execute if score @s farmer_buy matches 9 run tellraw @s {"text":"✅ 수박 씨앗 x16 구매 완료!","color":"green"}
execute if score @s farmer_buy matches 9 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 9 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 9 run return 0

# 번호 10: 선인장 x16 (25 코인)
execute if score @s farmer_buy matches 10 unless score @s coins matches 25.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 25 코인)","color":"red"}
execute if score @s farmer_buy matches 10 unless score @s coins matches 25.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 10 unless score @s coins matches 25.. run return 0
execute if score @s farmer_buy matches 10 run scoreboard players remove @s coins 25
execute if score @s farmer_buy matches 10 run give @s cactus 16
execute if score @s farmer_buy matches 10 run tellraw @s {"text":"✅ 선인장 x16 구매 완료!","color":"green"}
execute if score @s farmer_buy matches 10 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 10 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 10 run return 0

# 번호 11: 버섯(갈색) x16 (15 코인)
execute if score @s farmer_buy matches 11 unless score @s coins matches 15.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 15 코인)","color":"red"}
execute if score @s farmer_buy matches 11 unless score @s coins matches 15.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 11 unless score @s coins matches 15.. run return 0
execute if score @s farmer_buy matches 11 run scoreboard players remove @s coins 15
execute if score @s farmer_buy matches 11 run give @s brown_mushroom 16
execute if score @s farmer_buy matches 11 run tellraw @s {"text":"✅ 버섯(갈색) x16 구매 완료!","color":"green"}
execute if score @s farmer_buy matches 11 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 11 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 11 run return 0

# 번호 12: 버섯(빨강) x16 (15 코인)
execute if score @s farmer_buy matches 12 unless score @s coins matches 15.. run tellraw @s {"text":"❌ 잔액 부족! (필요: 15 코인)","color":"red"}
execute if score @s farmer_buy matches 12 unless score @s coins matches 15.. run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 12 unless score @s coins matches 15.. run return 0
execute if score @s farmer_buy matches 12 run scoreboard players remove @s coins 15
execute if score @s farmer_buy matches 12 run give @s red_mushroom 16
execute if score @s farmer_buy matches 12 run tellraw @s {"text":"✅ 버섯(빨강) x16 구매 완료!","color":"green"}
execute if score @s farmer_buy matches 12 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s farmer_buy matches 12 run scoreboard players reset @s farmer_buy
execute if score @s farmer_buy matches 12 run return 0

# 잘못된 번호
tellraw @s {"text":"❌ 잘못된 번호입니다! /trigger farmer_shop 으로 목록 확인","color":"red"}
scoreboard players reset @s farmer_buy

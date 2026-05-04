# 잔액 확인
execute unless score @s coins matches 50.. run tellraw @s {"text":"❌ 코인이 부족합니다! (필요: 50💰)","color":"red"}
execute unless score @s coins matches 50.. run scoreboard players reset @s farmer_buy
execute unless score @s coins matches 50.. run return 0

# 코인 차감
scoreboard players remove @s coins 50

# 아이템 지급 (골분 16개 + 특수 태그)
give @s bone_meal[custom_name='{"text":"🌾 성장 촉진제","color":"green","italic":false}',lore=['{"text":"작물 성장 속도 1.2배!","color":"gray","italic":false}','{"text":"일반 골분보다 20% 강력","color":"dark_green","italic":false}'],enchantment_glint_override=true] 16

# 성공 메시지
tellraw @s [{"text":"✅ ","color":"green"},{"text":"성장 촉진제 16개","color":"dark_green","bold":true},{"text":"를 구매했습니다! (-50💰)","color":"green"}]
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2

# 리셋
scoreboard players reset @s farmer_buy

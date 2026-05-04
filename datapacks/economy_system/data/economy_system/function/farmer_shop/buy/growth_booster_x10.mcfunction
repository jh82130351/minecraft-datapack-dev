# 잔액 확인
execute unless score @s coins matches 500.. run tellraw @s {"text":"❌ 코인이 부족합니다! (필요: 500💰)","color":"red"}
execute unless score @s coins matches 500.. run scoreboard players reset @s farmer_buy
execute unless score @s coins matches 500.. run return 0

# 코인 차감
scoreboard players remove @s coins 500

# 아이템 지급 (골분 160개 = 64*2 + 32)
give @s bone_meal[custom_name='{"text":"🌾 성장 촉진제","color":"green","italic":false}',lore=['{"text":"작물 성장 속도 1.2배!","color":"gray","italic":false}','{"text":"일반 골분보다 20% 강력","color":"dark_green","italic":false}'],enchantment_glint_override=true] 64
give @s bone_meal[custom_name='{"text":"🌾 성장 촉진제","color":"green","italic":false}',lore=['{"text":"작물 성장 속도 1.2배!","color":"gray","italic":false}','{"text":"일반 골분보다 20% 강력","color":"dark_green","italic":false}'],enchantment_glint_override=true] 64
give @s bone_meal[custom_name='{"text":"🌾 성장 촉진제","color":"green","italic":false}',lore=['{"text":"작물 성장 속도 1.2배!","color":"gray","italic":false}','{"text":"일반 골분보다 20% 강력","color":"dark_green","italic":false}'],enchantment_glint_override=true] 32

# 성공 메시지
tellraw @s [{"text":"✅ ","color":"green"},{"text":"성장 촉진제 160개","color":"dark_green","bold":true},{"text":"를 구매했습니다! (-500💰)","color":"green"}]
tellraw @s {"text":"🎉 대량 구매 감사합니다!","color":"gold"}
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1

# 리셋
scoreboard players reset @s farmer_buy

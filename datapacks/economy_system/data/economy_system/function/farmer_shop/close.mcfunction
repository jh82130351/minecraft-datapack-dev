# NPC 제거
execute at @s run kill @e[type=villager,tag=farmer_shop_npc,distance=..10]

# 메시지
tellraw @s {"text":"🌾 농부 상점을 닫았습니다.","color":"green"}

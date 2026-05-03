# 10블록 내 상점 NPC 제거
execute at @s run kill @e[type=villager,tag=shop_npc,distance=..10]

# 메시지
tellraw @s {"text":"상점을 닫았습니다.","color":"yellow"}

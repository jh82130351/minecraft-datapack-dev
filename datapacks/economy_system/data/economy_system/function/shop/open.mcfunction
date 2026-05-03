# NPC가 이미 있으면 제거
execute at @s run kill @e[type=villager,tag=shop_npc,distance=..10]

# 플레이어 앞 2블록에 NPC 소환
execute at @s run summon villager ^ ^ ^2 {NoAI:1b,Invulnerable:1b,Silent:1b,Tags:["shop_npc"],CustomName:'{"text":"🧪 포션 상점","color":"light_purple"}',VillagerData:{profession:"cleric",level:5,type:"plains"}}

# 메인 메뉴 표시
function economy_system:shop/show_menu

# 명령어 리셋
scoreboard players reset @s shop

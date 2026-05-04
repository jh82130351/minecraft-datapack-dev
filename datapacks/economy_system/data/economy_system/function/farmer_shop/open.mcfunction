# 기존 NPC 제거
execute at @s run kill @e[type=villager,tag=farmer_shop_npc,distance=..10]

# 농부 NPC 소환
execute at @s run summon villager ^ ^ ^2 {NoAI:1b,Invulnerable:1b,Silent:1b,Tags:["farmer_shop_npc"],CustomName:'{"text":"🌾 농부 상점","color":"green"}',VillagerData:{profession:"farmer",level:5,type:"plains"}}

# 메뉴 표시
function economy_system:farmer_shop/show_menu

# 명령어 리셋
scoreboard players reset @s farmer_shop

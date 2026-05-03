# 헤더
tellraw @s {"text":"━━━━━━━━ 🧪 포션 상점 ━━━━━━━━","color":"light_purple","bold":true}
tellraw @s {"text":""}

# 현재 잔액 표시
tellraw @s [{"text":"💵 현재 잔액: ","color":"yellow"},{"score":{"name":"@s","objective":"coins"},"color":"gold"},{"text":" 코인","color":"yellow"}]
tellraw @s {"text":""}

# 메뉴 버튼
tellraw @s [{"text":"[🧪 포션 구매]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger shop_buy set 1"},"hoverEvent":{"action":"show_text","contents":"포션 구매 메뉴 열기"}}]

tellraw @s [{"text":"[📦 블록 판매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger shop_sell set 1"},"hoverEvent":{"action":"show_text","contents":"블록 판매 메뉴 열기"}}]

tellraw @s {"text":""}

# 상점 닫기
tellraw @s [{"text":"[❌ 상점 닫기]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function economy_system:shop/close"},"hoverEvent":{"action":"show_text","contents":"상점 NPC 제거"}}]

tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━","color":"light_purple","bold":true}

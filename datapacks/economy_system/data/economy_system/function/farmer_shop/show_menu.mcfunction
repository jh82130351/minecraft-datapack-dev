# 제목
tellraw @s {"text":"========== 🌾 농부 상점 ==========","color":"green","bold":true}
tellraw @s {"text":""}

# 상품 안내
tellraw @s [{"text":"💚 성장 촉진제","color":"dark_green","bold":true},{"text":" - 작물 성장 1.2배 효과!","color":"gray","bold":false}]
tellraw @s {"text":""}

# 구매 옵션
tellraw @s [{"text":"[50💰 → 16개]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger farmer_buy set 1"},"hoverEvent":{"action":"show_text","contents":"50 코인으로 성장 촉진제 16개 구매"}},{"text":" | ","color":"white"},{"text":"[250💰 → 80개]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger farmer_buy set 5"},"hoverEvent":{"action":"show_text","contents":"250 코인으로 성장 촉진제 80개 구매 (5팩)"}},{"text":" | ","color":"white"},{"text":"[500💰 → 160개]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger farmer_buy set 10"},"hoverEvent":{"action":"show_text","contents":"500 코인으로 성장 촉진제 160개 구매 (10팩)"}}]

tellraw @s {"text":""}

# 안내 메시지
tellraw @s {"text":"💡 성장 촉진제는 골분처럼 사용하되 효과가 20% 더 강력합니다!","color":"yellow"}
tellraw @s {"text":""}

# 잔액 표시
tellraw @s [{"text":"현재 잔액: ","color":"white"},{"score":{"name":"@s","objective":"coins"},"color":"gold"},{"text":" 💰","color":"gold"}]
tellraw @s {"text":""}

# 닫기 버튼
tellraw @s [{"text":"[❌ 상점 닫기]","color":"red","clickEvent":{"action":"run_command","value":"/function economy_system:farmer_shop/close"},"hoverEvent":{"action":"show_text","contents":"상점을 닫습니다"}}]
tellraw @s {"text":"================================","color":"green","bold":true}

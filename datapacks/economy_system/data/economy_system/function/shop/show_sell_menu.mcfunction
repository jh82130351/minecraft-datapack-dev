# 헤더
tellraw @s {"text":"━━━━━━ 📦 블록 판매 ━━━━━━","color":"green","bold":true}
tellraw @s {"text":""}

# 현재 잔액
tellraw @s [{"text":"💵 잔액: ","color":"yellow"},{"score":{"name":"@s","objective":"coins"},"color":"gold"},{"text":" 코인","color":"yellow"}]
tellraw @s {"text":""}

# 판매 안내
tellraw @s {"text":"아무 블록이나 64개를 5 코인에 판매합니다","color":"white"}
tellraw @s {"text":"(흙, 돌, 나무, 광석 등 모든 블록 가능)","color":"gray","italic":true}
tellraw @s {"text":""}

# 판매 방법
tellraw @s {"text":"판매 방법:","color":"yellow","bold":true}
tellraw @s {"text":"1. 손에 판매할 블록 64개를 들기","color":"white"}
tellraw @s {"text":"2. 아래 [판매하기] 버튼 클릭","color":"white"}
tellraw @s {"text":"3. 블록 64개가 사라지고 5 코인 획득","color":"white"}
tellraw @s {"text":""}

# 판매 버튼
tellraw @s [{"text":"[💰 판매하기]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger sell_blocks set 1"},"hoverEvent":{"action":"show_text","contents":"손에 든 블록 64개 판매"}}]

tellraw @s {"text":""}

# 뒤로 가기
tellraw @s [{"text":"[← 메인 메뉴]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger shop set 1"}}]

tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━","color":"green","bold":true}

# 리셋
scoreboard players reset @s shop_sell

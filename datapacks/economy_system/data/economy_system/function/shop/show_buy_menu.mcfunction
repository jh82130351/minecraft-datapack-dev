# 헤더
tellraw @s {"text":"━━━━━━ 🧪 포션 구매 메뉴 ━━━━━━","color":"aqua","bold":true}
tellraw @s {"text":""}

# 현재 잔액
tellraw @s [{"text":"💵 잔액: ","color":"yellow"},{"score":{"name":"@s","objective":"coins"},"color":"gold"},{"text":" 코인","color":"yellow"}]
tellraw @s {"text":""}

# 기본 포션 (8분)
tellraw @s {"text":"━━ 기본 포션 (8분) ━━","color":"white","bold":true}
tellraw @s [{"text":"💨 신속 ","color":"aqua"},{"text":"- 50 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_speed set 1"}}]
tellraw @s [{"text":"💪 힘 ","color":"red"},{"text":"- 50 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_strength set 1"}}]
tellraw @s [{"text":"❤️ 재생 ","color":"light_purple"},{"text":"- 60 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_regen set 1"}}]
tellraw @s [{"text":"🔥 화염 저항 ","color":"gold"},{"text":"- 40 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_fire_res set 1"}}]
tellraw @s [{"text":"👁️ 야간 투시 ","color":"yellow"},{"text":"- 40 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_night_vision set 1"}}]
tellraw @s [{"text":"👻 투명화 ","color":"gray"},{"text":"- 80 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_invis set 1"}}]
tellraw @s [{"text":"🌊 수중 호흡 ","color":"blue"},{"text":"- 40 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_water_breathing set 1"}}]
tellraw @s [{"text":"🪶 느린 낙하 ","color":"white"},{"text":"- 40 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_slow_falling set 1"}}]

tellraw @s {"text":""}

# 강화 포션 (4분)
tellraw @s {"text":"━━ 강화 포션 (4분) ━━","color":"white","bold":true}
tellraw @s [{"text":"💨 신속 II ","color":"aqua"},{"text":"- 100 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_speed2 set 1"}}]
tellraw @s [{"text":"💪 힘 II ","color":"red"},{"text":"- 100 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_strength2 set 1"}}]
tellraw @s [{"text":"❤️ 재생 II ","color":"light_purple"},{"text":"- 120 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_regen2 set 1"}}]

tellraw @s {"text":""}

# 특수 포션
tellraw @s {"text":"━━ 특수 포션 ━━","color":"white","bold":true}
tellraw @s [{"text":"🐢 거북 물약 (저항+구속 4분) ","color":"dark_green"},{"text":"- 80 코인 ","color":"gold"},{"text":"[구매]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_turtle_master set 1"}}]

tellraw @s {"text":""}

# 뒤로 가기
tellraw @s [{"text":"[← 메인 메뉴]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger shop set 1"}}]

tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━","color":"aqua","bold":true}

# 리셋
scoreboard players reset @s shop_buy

# 화폐 잔액 (사이드바 표시)
scoreboard objectives add coins dummy "💰 코인"
scoreboard objectives setdisplay sidebar coins

# 몹 처치 추적
scoreboard objectives add kill_zombie minecraft.killed:minecraft.zombie
scoreboard objectives add kill_skeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add kill_creeper minecraft.killed:minecraft.creeper
scoreboard objectives add kill_spider minecraft.killed:minecraft.spider
scoreboard objectives add kill_enderman minecraft.killed:minecraft.enderman
scoreboard objectives add kill_wither_skeleton minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add kill_blaze minecraft.killed:minecraft.blaze

# 송금 시스템
scoreboard objectives add coin_send trigger "송금"
scoreboard objectives add coin_accept trigger "송금 수락"
scoreboard objectives add coin_decline trigger "송금 거절"
scoreboard objectives add coin_amount dummy "송금액"
scoreboard objectives add coin_sender_id dummy "송금자 ID"

# 모든 플레이어 trigger 활성화
scoreboard players enable @a coin_send
scoreboard players enable @a coin_accept
scoreboard players enable @a coin_decline

# 상점 시스템
scoreboard objectives add shop trigger "상점 열기"
scoreboard objectives add shop_buy trigger "구매 메뉴"
scoreboard objectives add shop_sell trigger "판매 메뉴"

# 포션 구매 trigger
scoreboard objectives add buy_speed trigger
scoreboard objectives add buy_speed2 trigger
scoreboard objectives add buy_strength trigger
scoreboard objectives add buy_strength2 trigger
scoreboard objectives add buy_regen trigger
scoreboard objectives add buy_regen2 trigger
scoreboard objectives add buy_fire_res trigger
scoreboard objectives add buy_night_vision trigger
scoreboard objectives add buy_invis trigger
scoreboard objectives add buy_water_breathing trigger
scoreboard objectives add buy_slow_falling trigger
scoreboard objectives add buy_turtle_master trigger

# 블록 판매 trigger
scoreboard objectives add sell_blocks trigger

# Trigger 활성화
scoreboard players enable @a shop
scoreboard players enable @a shop_buy
scoreboard players enable @a shop_sell
scoreboard players enable @a buy_speed
scoreboard players enable @a buy_speed2
scoreboard players enable @a buy_strength
scoreboard players enable @a buy_strength2
scoreboard players enable @a buy_regen
scoreboard players enable @a buy_regen2
scoreboard players enable @a buy_fire_res
scoreboard players enable @a buy_night_vision
scoreboard players enable @a buy_invis
scoreboard players enable @a buy_water_breathing
scoreboard players enable @a buy_slow_falling
scoreboard players enable @a buy_turtle_master
scoreboard players enable @a sell_blocks

# 완료 메시지
tellraw @a {"text":"[경제 시스템] 로드 완료!","color":"gold"}

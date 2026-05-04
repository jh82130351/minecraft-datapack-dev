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
scoreboard objectives add shop trigger "상점 메뉴"
scoreboard objectives add buy trigger "포션 구매"
scoreboard objectives add sell trigger "블록 판매"

# Trigger 활성화
scoreboard players enable @a shop
scoreboard players enable @a buy
scoreboard players enable @a sell

# 농부 상점 시스템
scoreboard objectives add farmer_shop trigger "농부 상점"
scoreboard objectives add farmer_buy trigger "농작물 아이템 구매"

# Trigger 활성화
scoreboard players enable @a farmer_shop
scoreboard players enable @a farmer_buy

# 완료 메시지
tellraw @a {"text":"[경제 시스템] 로드 완료!","color":"gold"}

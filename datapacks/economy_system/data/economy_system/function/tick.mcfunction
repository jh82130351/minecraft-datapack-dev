# Trigger 재활성화
scoreboard players enable @a coin_send
scoreboard players enable @a coin_accept
scoreboard players enable @a coin_decline

# 몹 처치 보상
execute as @a[scores={kill_zombie=1..}] run function economy_system:earn/mob_kill
execute as @a[scores={kill_skeleton=1..}] run function economy_system:earn/mob_kill
execute as @a[scores={kill_creeper=1..}] run function economy_system:earn/mob_kill
execute as @a[scores={kill_spider=1..}] run function economy_system:earn/mob_kill
execute as @a[scores={kill_enderman=1..}] run function economy_system:earn/mob_kill
execute as @a[scores={kill_wither_skeleton=1..}] run function economy_system:earn/mob_kill
execute as @a[scores={kill_blaze=1..}] run function economy_system:earn/mob_kill

# 송금 명령어 처리
execute as @a[scores={coin_send=1..}] run function economy_system:transfer/send_init
execute as @a[scores={coin_accept=1..}] run function economy_system:transfer/send_confirm
execute as @a[scores={coin_decline=1..}] run function economy_system:transfer/send_cancel

# 상점 명령어
execute as @a[scores={shop=1..}] run function economy_system:shop/open
execute as @a[scores={shop_buy=1..}] run function economy_system:shop/show_buy_menu
execute as @a[scores={shop_sell=1..}] run function economy_system:shop/show_sell_menu

# 포션 구매
execute as @a[scores={buy_speed=1..}] run function economy_system:shop/buy/speed
execute as @a[scores={buy_speed2=1..}] run function economy_system:shop/buy/speed2
execute as @a[scores={buy_strength=1..}] run function economy_system:shop/buy/strength
execute as @a[scores={buy_strength2=1..}] run function economy_system:shop/buy/strength2
execute as @a[scores={buy_regen=1..}] run function economy_system:shop/buy/regen
execute as @a[scores={buy_regen2=1..}] run function economy_system:shop/buy/regen2
execute as @a[scores={buy_fire_res=1..}] run function economy_system:shop/buy/fire_resistance
execute as @a[scores={buy_night_vision=1..}] run function economy_system:shop/buy/night_vision
execute as @a[scores={buy_invis=1..}] run function economy_system:shop/buy/invisibility
execute as @a[scores={buy_water_breathing=1..}] run function economy_system:shop/buy/water_breathing
execute as @a[scores={buy_slow_falling=1..}] run function economy_system:shop/buy/slow_falling
execute as @a[scores={buy_turtle_master=1..}] run function economy_system:shop/buy/turtle_master

# 블록 판매
execute as @a[scores={sell_blocks=1..}] run function economy_system:shop/sell/any_block

# Trigger 재활성화
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

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
execute as @a[scores={shop=1..}] run function economy_system:shop/show_menu
execute as @a[scores={buy=1..}] run function economy_system:shop/buy_potion
execute as @a[scores={sell=1..}] run function economy_system:shop/sell_blocks

# 농부 상점 명령어
execute as @a[scores={farmer_shop=1..}] run function economy_system:farmer_shop/show_menu
execute as @a[scores={farmer_buy=1..}] run function economy_system:farmer_shop/buy_item

# Trigger 재활성화
scoreboard players enable @a shop
scoreboard players enable @a buy
scoreboard players enable @a sell
scoreboard players enable @a farmer_shop
scoreboard players enable @a farmer_buy

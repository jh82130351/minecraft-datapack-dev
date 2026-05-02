# WALK: 100틱(5초)마다 ❤️ 0.5 회복
execute if score @s regen_timer matches 100.. run scoreboard players set @s regen_timer 0
execute if score @s regen_timer matches 100.. run effect give @s regeneration 2 0 true

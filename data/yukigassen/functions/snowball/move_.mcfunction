
# 移動
    tp @s ^ ^ ^0.5 ~ ~
    
# 近くのソリにダメージを与える
    execute if entity @e[type=minecart,distance=..0.6] run scoreboard players operation $temporary_player_id PlayerId = @s PlayerId
    execute if entity @e[type=minecart,distance=..0.6] as @e[type=minecart,distance=..0.6,limit=1,sort=nearest] unless score @s PlayerId = $temporary_player_id PlayerId run tag @s add TargetCart
    execute if entity @e[tag=TargetCart] run function yukigassen:snowball/damage

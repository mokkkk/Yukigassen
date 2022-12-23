
# 対応するソリを消去
    scoreboard players operation $temporary_player_id PlayerId = @s PlayerId
    execute as @e[type=goat] if score @s PlayerId = $temporary_player_id PlayerId run tag @s add Target
    execute as @e[type=minecart] if score @s PlayerId = $temporary_player_id PlayerId run tag @s add Target
    tp @e[tag=Target] ~ ~-1000 ~
    kill @e[tag=Target]

# 演出
    particle firework ~ ~ ~ 0.3 0.3 0.3 1 30

# 終了
    tag @s remove Rided


# 移動
    particle electric_spark ^ ^ ^-3 0.5 0.5 0.5 0.2 1 force
    # execute if entity @s[scores={PlayerTimer=2..}] run particle end_rod ^ ^ ^-3 0 0 0 0.02 1 force
    execute at @s run function yukigassen:snowball/move_
    execute at @s run function yukigassen:snowball/move_
    execute at @s run function yukigassen:snowball/move_
    execute at @s run tp @s ^ ^ ^ ~ ~0.5
    scoreboard players add @s PlayerTimer 1

# 終了
    execute if entity @s[scores={PlayerTimer=40..}] run kill @s

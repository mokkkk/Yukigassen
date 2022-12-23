
# プレイヤーID
    scoreboard objectives add PlayerId dummy

# プレイヤーID割り当て
    execute as @a unless entity @s[scores={PlayerId=0..}] run function yukigassen:load_id

# プレイヤーID
    scoreboard objectives add PlayerId dummy
# タイマー
    scoreboard objectives add PlayerTimer dummy
# ニンジン棒
    scoreboard objectives add UsedCoas minecraft.used:carrot_on_a_stick
# 雪玉
    scoreboard objectives add UsedSnowball minecraft.used:snowball

# プレイヤーID割り当て
    execute as @a unless entity @s[scores={PlayerId=0..}] run function yukigassen:load_id

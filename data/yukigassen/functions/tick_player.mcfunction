
# ソリに乗っている状態かどうか判定
    execute if predicate yukigassen:riding run tag @s add Riding

# ニンジン棒使用時，ソリ召喚
    execute if entity @s[scores={UsedCoas=1..}] run function yukigassen:minecart/summon

# 各プレイヤーとソリの紐づけ
    function yukigassen:minecart/move

# 終了
    tag @s remove Riding

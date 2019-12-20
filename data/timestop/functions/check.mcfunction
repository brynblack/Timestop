# Remove motion from all entities excluding players and disable gamerules
execute if entity @a[scores={freeze=1},sort=arbitrary] run gamerule doDaylightCycle false
execute if entity @a[scores={freeze=1},sort=arbitrary] run gamerule doFireTick false
execute if entity @a[scores={freeze=1},sort=arbitrary] run gamerule doWeatherCycle false

# Run stats function if true
execute if entity @a[scores={freeze=0},sort=arbitrary] run function timestop:stats
execute as @a[scores={freeze=1},sort=arbitrary] unless score @s freeze matches 2 run scoreboard players set @s freeze 2
execute if entity @a[scores={freeze=2},sort=arbitrary] run function timestop:freeze
execute if entity @a[scores={freeze=3},sort=arbitrary] run function timestop:unfreeze

# Give player items if player has none
execute as @a[sort=arbitrary] store success score @s hasitem run data get entity @s Inventory.[{tag:{display:{Name:"\"Freeze\""}}}]
execute as @a[scores={hasitem=0},sort=arbitrary] run clear @s minecraft:carrot_on_a_stick{display:{Name:"\"Freeze\""}}
execute as @a[scores={hasitem=0},sort=arbitrary] run give @s minecraft:carrot_on_a_stick{display:{Name:"\"Freeze\""}}
execute as @e[type=item,nbt={Item:{tag:{display:{Name:"\"Freeze\""}}}},sort=arbitrary] run kill @s

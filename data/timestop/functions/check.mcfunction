# Check if entities have a score set
execute as @e[type=!player,sort=arbitrary] store success score @s noscore run scoreboard players get @s doihaveascore
execute as @e[type=!player,sort=arbitrary] if score @s noscore matches 0 run scoreboard players set @s freeze 0
execute as @e[type=!player,sort=arbitrary] if score @s noscore matches 0 run scoreboard players set @s doihaveascore 1

# Check if player uses items
execute as @e[type=!player,name=!Unfreeze,sort=arbitrary] if entity @e[name=Unfreeze,sort=arbitrary] run scoreboard players set @s freeze 2
execute as @e[type=!player,name=!Freeze,sort=arbitrary] if entity @e[name=Freeze,sort=arbitrary] run scoreboard players set @s freeze 1
execute as @e[name=Freeze,sort=arbitrary] run kill @s
execute as @e[name=Unfreeze,sort=arbitrary] run kill @s

# Give player items if player has none
execute as @a[sort=arbitrary] store success score @s hasItemFreeze run data get entity @s Inventory.[{tag:{display:{Name:"\"Freeze\""}}}]
execute as @a[sort=arbitrary] store success score @s hasItemUnfreeze run data get entity @s Inventory.[{tag:{display:{Name:"\"Unfreeze\""}}}]
execute as @a[sort=arbitrary] if score @s hasItemFreeze matches 0 run clear @s minecraft:endermite_spawn_egg{display:{Name:"\"Freeze\""}}
execute as @a[sort=arbitrary] if score @s hasItemFreeze matches 0 run give @s minecraft:endermite_spawn_egg{display:{Name:"\"Freeze\""}}
execute as @a[sort=arbitrary] if score @s hasItemUnfreeze matches 0 run clear @s minecraft:endermite_spawn_egg{display:{Name:"\"Unfreeze\""}}
execute as @a[sort=arbitrary] if score @s hasItemUnfreeze matches 0 run give @s minecraft:endermite_spawn_egg{display:{Name:"\"Unfreeze\""}}
execute as @e[type=item,nbt={Item:{tag:{display:{Name:"\"Freeze\""}}}},sort=arbitrary] run kill @s
execute as @e[type=item,nbt={Item:{tag:{display:{Name:"\"Unfreeze\""}}}},sort=arbitrary] run kill @s

# Spawn particles when time freezes
execute at @a[sort=arbitrary] as @e[type=!player,sort=arbitrary,limit=1] if score @s freeze matches 1 run particle minecraft:portal ~ ~ ~ -16 -5 -32 1 200 force

# Check if player in rideable entity 
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] at @s run tp @s ~ ~1 ~
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 as @a[nbt={RootVehicle:{Entity:{id:"minecraft:mule"}}}] at @s run tp @s ~ ~1 ~
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 as @a[nbt={RootVehicle:{Entity:{id:"minecraft:donkey"}}}] at @s run tp @s ~ ~1 ~
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 as @a[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s run tp @s ~ ~1 ~
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 as @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] at @s run tp @s ~ ~1 ~
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 as @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] at @s run tp @s ~ ~1 ~
# Announce pack information
tellraw @a[sort=arbitrary] ["",{"text":"Thank you for installing the Time Stop Datapack for 1.15x! This Datapack was coded and designed by brynblack.","bold":true,"color":"dark_purple"},{"text":"\n"}]
tellraw @a[sort=arbitrary] ["",{"text":"-----------------------------------------------------","strikethrough":true,"color":"gold"},{"text":"\n"}]
tellraw @a[sort=arbitrary] ["",{"text":"The pack version is currently v1.0.0. Be aware that this version is currently in experimental phase and is almost guranteed to have bugs. Please use with caution!","color":"red"}]

# Install scoreboard objectives
scoreboard objectives add x_motion dummy
scoreboard objectives add y_motion dummy
scoreboard objectives add z_motion dummy
scoreboard objectives add x_rotation dummy
scoreboard objectives add y_rotation dummy
scoreboard objectives add freeze dummy
scoreboard objectives add noscore dummy
scoreboard objectives add doihaveascore dummy
scoreboard objectives add hasItemFreeze dummy
scoreboard objectives add hasItemUnfreeze dummy
scoreboard objectives add fuse dummy
scoreboard objectives add tntfuse dummy
scoreboard objectives add life dummy
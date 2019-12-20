# Install scoreboard objectives
scoreboard objectives add freeze minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add fuse dummy
scoreboard objectives add hasitem dummy
scoreboard objectives add life dummy
scoreboard objectives add tntfuse dummy
scoreboard objectives add x_motion dummy
scoreboard objectives add x_pos dummy
scoreboard objectives add x_rotation dummy
scoreboard objectives add y_motion dummy
scoreboard objectives add y_pos dummy
scoreboard objectives add y_rotation dummy
scoreboard objectives add z_motion dummy

# Set objectives to set values
scoreboard players set @a[sort=arbitrary] freeze 0

# Information
tellraw @a[sort=arbitrary] ["",{"text":"Timestop v2.1.0-beta - 1.15x | Please read the wiki for further information.","color":"dark_purple"},{"text":"\n"}]
tellraw @a[sort=arbitrary] ["",{"text":"-----------------------------------------------------","strikethrough":true,"color":"gold"},{"text":"\n"}]
tellraw @a[sort=arbitrary] ["",{"text":"The pack version is currently v2.1.0-beta. Please remember to post bugs onto my issue tracker if you find any.","color":"red"}]

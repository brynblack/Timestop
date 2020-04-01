# Install scoreboard objectives
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding freeze objective...", "color" : "gray" } ]
scoreboard objectives add freeze minecraft.used:minecraft.carrot_on_a_stick
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding fuse objective...", "color" : "gray" } ]
scoreboard objectives add fuse dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding hasitem objective...", "color" : "gray" } ]
scoreboard objectives add hasitem dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding life objective...", "color" : "gray" } ]
scoreboard objectives add life dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding tntfuse objective...", "color" : "gray" } ]
scoreboard objectives add tntfuse dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding x_motion objective...", "color" : "gray" } ]
scoreboard objectives add x_motion dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding x_pos objective...", "color" : "gray" } ]
scoreboard objectives add x_pos dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding x_rotation objective...", "color" : "gray" } ]
scoreboard objectives add x_rotation dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding y_motion objective...", "color" : "gray" } ]
scoreboard objectives add y_motion dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding y_pos objective...", "color" : "gray" } ]
scoreboard objectives add y_pos dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding y_rotation objective...", "color" : "gray" } ]
scoreboard objectives add y_rotation dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding z_motion objective...", "color" : "gray" } ]
scoreboard objectives add z_motion dummy
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Adding uninstall trigger...", "color" : "gray" } ]
scoreboard objectives add uninstall trigger

# Set objectives to set values
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Setting freeze score to 0...", "color" : "gray" } ]
scoreboard players set @a[ sort = arbitrary ] freeze 0
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Setting uninstall trigger to 0...", "color" : "gray" } ]
scoreboard players set @a[ sort = arbitrary ] uninstall 0
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Enabling uninstall trigger...", "color" : "gray" }, { "text" : "\n" } ]
scoreboard players enable @a[ sort = arbitrary ] uninstall

# Information
tellraw @a[ sort = arbitrary ] [ "", { "text" : "Timestop v2.2.1-beta - 1.15.2x | Please read the wiki for further information.", "color" : "dark_purple" }, { "text" : "\n" } ]
tellraw @a[ sort = arbitrary ] [ "", { "text" : "-----------------------------------------------------", "strikethrough" : true, "color" : "gold" }, { "text" : "\n" } ]
tellraw @a[ sort = arbitrary ] [ "", { "text" : "The pack version is currently v2.2.1-beta. Please remember to post bugs onto my issue tracker if you find any.", "color" : "red" } ]

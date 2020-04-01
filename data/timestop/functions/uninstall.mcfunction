# Remove scoreboard objectives (essentially self-destruct)
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing freeze objective...", "color" : "gray" } ]
scoreboard objectives remove freeze
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing Freeze item from player(s)...", "color" : "gray" } ]
clear @a minecraft:carrot_on_a_stick{ display: { Name: "\"Freeze\"" } }
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing fuse objective...", "color" : "gray" } ]
scoreboard objectives remove fuse
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing hasitem objective...", "color" : "gray" } ]
scoreboard objectives remove hasitem
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing life objective...", "color" : "gray" } ]
scoreboard objectives remove life
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing tntfuse objective...", "color" : "gray" } ]
scoreboard objectives remove tntfuse
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing x_motion objective...", "color" : "gray" } ]
scoreboard objectives remove x_motion
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing x_pos objective...", "color" : "gray" } ]
scoreboard objectives remove x_pos
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing x_rotation objective...", "color" : "gray" } ]
scoreboard objectives remove x_rotation
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing y_motion objective...", "color" : "gray" } ]
scoreboard objectives remove y_motion
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing y_pos objective...", "color" : "gray" } ]
scoreboard objectives remove y_pos
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing y_rotation objective...", "color" : "gray" } ]
scoreboard objectives remove y_rotation
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing z_motion objective...", "color" : "gray" } ]
scoreboard objectives remove z_motion
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing inworld tag...", "color" : "gray" } ]
tag @e remove inworld
tellraw @a[ sort = arbitrary ] [ "", { "text" : "[Info] ", "color" : "green" }, { "text" : "Removing uninstall objective...", "color" : "gray" } ]
scoreboard objectives remove uninstall
tellraw @a [ "", { "text" : "[Please click me to finalize uninstall]", "color" : "gold", "clickEvent" : { "action" : "run_command", "value" : "/datapack disable \"file/Timestop\""} } ]

#Requires AutoHotkey v2.0
#SingleInstance Force

;This runs the keyboard_scripts.ahk if the running of the script is interferred with by
;an admin window. Use right_ctrl+enter to re-run keyboard_scripts.ahk

RCtrl & Enter::run("path to keybindings_script.ahk")
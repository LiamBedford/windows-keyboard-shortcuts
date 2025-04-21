# AutoHotKey v2 Custom Shortcuts
A collection of simple, effective keyboard and mouse shortcuts for Windows, written in AutoHotKey v2.

## Why This Exists
This mini-project was born out of necessity: I couldn't install Logi Options+ on my work laptop, which meant I lost access to a lot of the productivity-enhancing customizations I’d grown used to.

I initially tried using PowerToys, a tool I was already familiar with, but quickly ran into limitations:
- PowerToys doesn’t support mouse button customization.
- When it's not run as admin, shortcuts don’t work in admin windows, and can even behave unpredictably.

One annoying example: I use PowerToys to disable Caps Lock. If an admin window is opened while PowerToys isn’t running as admin, pressing Caps Lock reactivates it, and I can’t turn it off again without disabling and re-enabling the remapping.

### Enter AutoHotKey
That’s when I discovered AutoHotKey — a much more powerful, flexible, and frankly fun tool for customizing inputs. It solved all of the issues I was running into, and gave me even more control over my system.

## What’s in This Repo
- keybindings_script.ahk
	Contains all the custom keyboard and mouse remappings.
- runKeybindings_script.ahk
	A helper script I use to reload the keybindings script, especially useful when shortcuts stop working after interacting with admin windows.

## Getting Started
- Install AutoHotKey v2
  	- https://www.autohotkey.com/
  	- winget install AutoHotKey.AutoHotKey
  	- Microsoft Store
- Clone or download this repo.
- Edit keybindings_script.ahk with the correct paths for your applications and add additional if you would like.
- Run runKeybindings_script.ahk to apply the remappings.

### Optional
Create shortcuts for the .ahk files and add them to %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
This will allow the scripts to run at startup.

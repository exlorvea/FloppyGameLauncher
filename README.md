# FloppyGameLauncher
```text
 ███████╗██╗      ██████╗ ██████╗ ██████╗ ██╗   ██╗ ██████╗  █████╗ ███╗   ███╗███████╗██╗      █████╗ ██╗   ██╗███╗   ██╗ ██████╗██╗  ██╗███████╗██████╗ 
 ██╔════╝██║     ██╔═══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝██╔════╝ ██╔══██╗████╗ ████║██╔════╝██║     ██╔══██╗██║   ██║████╗  ██║██╔════╝██║  ██║██╔════╝██╔══██╗
 █████╗  ██║     ██║   ██║██████╔╝██████╔╝ ╚████╔╝ ██║  ███╗███████║██╔████╔██║█████╗  ██║     ███████║██║   ██║██╔██╗ ██║██║     ███████║█████╗  ██████╔╝
 ██╔══╝  ██║     ██║   ██║██╔═══╝ ██╔═══╝   ╚██╔╝  ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  ██║     ██╔══██║██║   ██║██║╚██╗██║██║     ██╔══██║██╔══╝  ██╔══██╗
 ██║     ███████╗╚██████╔╝██║     ██║        ██║   ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗███████╗██║  ██║╚██████╔╝██║ ╚████║╚██████╗██║  ██║███████╗██║  ██║
 ╚═╝     ╚══════╝ ╚═════╝ ╚═╝     ╚═╝        ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
```
  ```Plaintext                                                                                                                                                       
 .-.-----------.-.
 | |---FLOPPY--|#|
 | |---GAME----| |
 | |-LAUNCHER--| |
 | |-----------| |
 | "-----------' |
 |  .-----.-..   |
 |  |     | || |||
 |  |     | || \/|
 "--^-----^-^^---'
```
Turn floppy disks into physical launch cartridges for modern software.
Launch Steam, Epic Games, websites, folders, or any local executable automatically by inserting a ***physical floppy disk***.

---
```text                                                                                
 ▄████▄ ▄▄▄▄   ▄▄▄  ▄▄ ▄▄ ▄▄▄▄▄▄   ▄▀▀▄     ▄█████ ▄▄▄▄  ▄▄▄▄▄ ▄▄▄▄  ▄▄ ▄▄▄▄▄▄ ▄▄▄▄ 
 ██▄▄██ ██▄██ ██▀██ ██ ██   ██     ▄▀▀▄ ▄   ██     ██▄█▄ ██▄▄  ██▀██ ██   ██  ███▄▄ 
 ██  ██ ██▄█▀ ▀███▀ ▀███▀   ██     ▀▄▄▀▀▄   ▀█████ ██ ██ ██▄▄▄ ████▀ ██   ██  ▄▄██▀ 
 ```
# About & Credits

This project is a heavily upgraded version of the concept created by Mryeester.

* The Inspiration: It all started with his video "It looks Wrong...but feels so Right" by Mryeester (https://www.youtube.com/watch?v=zhoQRKMlCw4).
* The Original Code: Mryeester shared his base script in this Google Doc (https://docs.google.com/document/d/1yg9BWe7kBFjTwTyWi0L2tFu5VSmvwbOzZkayw_Qhnw0).

### What's new in this version?
The original version was focused on Steam game IDs. This version turns floppy disks into universal launch media capable of opening games, applications, folders, and websites.. Instead of hardcoding launcher rules, the script reads a "target=" line.

This means you can now launch:
* Steam Games (steam://...)
* Epic Games (com.epicgames.launcher://...)
* Classic Executables / Emulators / GOG (C:\path\to\game.exe)
* Websites (https://...)
* Local folders (C:\Games\...)
* Any Windows application with a valid path or URI
  
---                                                                   
 ```text                                                                    
 ██  ██  ▄▄▄  ▄▄   ▄▄   ██ ▄▄▄▄▄▄   ██     ██  ▄▄▄  ▄▄▄▄  ▄▄ ▄▄  ▄▄▄▄ 
 ██████ ██▀██ ██ ▄ ██   ██   ██     ██ ▄█▄ ██ ██▀██ ██▄█▄ ██▄█▀ ███▄▄ 
 ██  ██ ▀███▀  ▀█▀█▀    ██   ██      ▀██▀██▀  ▀███▀ ██ ██ ██ ██ ▄▄██▀
 ```
# How It Works

1. A background script runs hidden on Windows and checks your floppy drive (usually A:) every 3 seconds.
2. When you insert a floppy disk containing a game.txt file, the script extracts the target=... line.
3. It launches the game instantly using the correct protocol or path, and waits until you eject the floppy disk before allowing another launch.

---
```text                                                                                                              
 ██ ▄▄  ▄▄  ▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄  ▄▄    ▄▄     ▄▄▄ ▄▄▄▄▄▄ ▄▄  ▄▄▄  ▄▄  ▄▄   ▄▀▀▄     ▄█████ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄ ▄▄ ▄▄▄▄  
 ██ ███▄██ ███▄▄   ██  ██▀██ ██    ██    ██▀██  ██   ██ ██▀██ ███▄██   ▄▀▀▄ ▄   ▀▀▀▄▄▄ ██▄▄    ██   ██ ██ ██▄█▀ 
 ██ ██ ▀██ ▄▄██▀   ██  ██▀██ ██▄▄▄ ██▄▄▄ ██▀██  ██   ██ ▀███▀ ██ ▀██   ▀▄▄▀▀▄   █████▀ ██▄▄▄   ██   ▀███▀ ██
 ```
# Installation & Setup

### 1. Prepare the Windows Scripts
a. Download [FloppyLauncher.ps1](FloppyGameLauncher/FloppyLauncher.ps1) and [StartFloppyHidden.vbs](FloppyGameLauncher/StartFloppyHidden.vbs) from the [FloppyGameLauncher](FloppyGameLauncher/) folder.

b. Place `FloppyLauncher.ps1` at the root of your C: drive (`C:\FloppyLauncher.ps1`).
Note: If your floppy drive is not A:, open the .ps1 file and change the $FloppyDrive = "A:" variable to your drive letter.

### 2. Make your Floppy Disks
On every floppy disk you want to use, create a text file named [game.txt](FloppyGameLauncher/game.txt). Inside this file, add only one of the following lines depending on the game:

* For Steam: *target=steam://rungameid/12345* (replace with your game ID)
* For Epic Games: *target=com.epicgames.launcher://apps/GAME_NAME?action=launch&silent=true* (replace with your game ID)
* For any file, folder, or executable: *target=C:\Games\MyGame\game.exe* (replace with the full path to your game or program)
* For Website: *target=https://rick.nerial.uk* (replace with your URL)

### 3. Launching the Script
To start the background listener without having a command prompt open on your screen, double-click on StartFloppyHidden.vbs.

It will silently boot the PowerShell script in the background.

### 4. Optional: Run at Windows Startup
If you want this to work automatically every time you turn on your PC:
1. Press *Win + R*, type ***shell:startup*** and hit Enter. This opens your Windows Startup folder.
2. Create a shortcut of [StartFloppyHidden.vbs](FloppyGameLauncher/StartFloppyHidden.vbs) and paste it into that folder.

---
```text                                                                                             
  ██████ ▄▄ ▄▄  ▄▄▄  ▄▄   ▄▄ ▄▄▄▄  ▄▄    ▄▄▄▄▄  ▄▄▄▄ 
  ██▄▄   ▀█▄█▀ ██▀██ ██▀▄▀██ ██▄█▀ ██    ██▄▄  ███▄▄ 
  ██▄▄▄▄ ██ ██ ██▀██ ██   ██ ██    ██▄▄▄ ██▄▄▄ ▄▄██▀                                                  
 ```    
## Examples

### Steam (Counter-Strike 2)
Launches Counter-Strike 2 through Steam.

```txt
target=steam://rungameid/730
```

### Epic Games (Wolfenstein: The New Order)
Launches Wolfenstein: The New Order through the Epic Games Launcher.

```txt
target=com.epicgames.launcher://apps/0bd3e505924240adb702295fa08c1eff%3A283080ad58e64fd084d30413888a571c%3Aa64dcf9b711a4a60a3c0b6f052dfc7da?action=launch&silent=true
```

### Local executable (DOOM)
Launches a local game executable.

```txt
target=D:\Games\DOOM\DOOM.exe
```

### Website (Totally Serious Business, not a rickroll)
Opens an extremely important website.

```txt
target=https://rick.nerial.uk/video.mp4
```

### Folder
Opens a local folder.

```txt
target=C:\Games
```
---
```text                                          
  ██     ▄▄  ▄▄▄▄ ▄▄▄▄▄ ▄▄  ▄▄  ▄▄▄▄ ▄▄▄▄▄ 
  ██     ██ ██    ██▄▄  ███▄██ ███▄▄ ██▄▄  
  ██████ ██ ▀████ ██▄▄▄ ██ ▀██ ▄▄██▀ ██▄▄▄
 ```                                                               
# License

This project is licensed under the GNU General Public License v3.0 (GPLv3) - see the LICENSE file for details. This ensures the project stays open-source and free for all the retro-modding community!

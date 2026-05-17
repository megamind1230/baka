Les enfants parlaient doucement tandis que leurs parents
    The children spoke softly while their parents
fatigués mais heureux
    tired but happy
regardaient les oiseaux qui volaient au-dessus des vieux châteaux.
    watched the birds flying above the old castles.
Ils ont acheté beaucoup de cadeaux
    They bought many gifts
bien qu’ils n’aient pas assez d’argent pour tout payer.
    although they didn't have enough money to pay for everything.


Since the newest patch, the game freezes on demo mode/match loading screen
    game was OK 24-3-2026
    game was freezing 25-3-2026
im on archlinux with these specs and display server

# spec 
```
OS: Arch Linux x86_64
Host: Latitude E6540 (00)
Kernel: Linux 6.18.9-arch1-2
Display (LGD03DD): 1366x768 in 16", 60 Hz [Built-in]
WM: i3 4.25.1 (X11)
CPU: Intel(R) Core(TM) i7-4600M (4) @ 3.60 GHz
GPU 1: AMD Radeon HD 8790M
GPU 2: Intel 4th Gen Core Processor Integrated Graphics Controller @ 1.30 GHz [Integrated]
Memory: 2.53 GiB / 7.66 GiB (33%)
Swap: 1.32 GiB / 3.83 GiB (34%)
Disk (/): 126.81 GiB / 218.02 GiB (58%) - ext4
Disk (/mnt/Gees): 92.35 GiB / 200.00 GiB (46%) - fuseblk
Disk (/mnt/hdd): 115.22 GiB / 265.75 GiB (43%) - exfat
```
> same issue goes on wayland (hyprland) session

the game before patch was working alright
but since last game update
the game freezes on demo mode/match loading VS screen { after Hero select }

# steps to regenrate problem on my device
1. open terminal, type steam, press play
2. the game client opens normally { with game sounds in bg }
3. i pick any Hero to go on demo mode/ go for any kind of match.. pick a Hero
4. Dota 2 logo { game theme song is still in bg }
5. sometimes nothing happens at all and the game just freezes/sometimes I have a view of the map but no Hero/no HUD/ nor can I contol anything

# how i tried to solve it { but still didn't }
### asked chatgpt to help 
told me to use these in launch options `DRI_PRIME=0 -gl -novid +fps_max 60`
but still same problem
### update the system `paru -Syyu`
### validated the game files
### restart/shutdown system

Hope i explained it properly + ask me if I missed anything
# a snippet of terminal output
```
[2026-03-26 13:37:31] Saving metrics to disk (/home/dt/.local/share/Steam/package/steam_client_metrics.bin)
chdir "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta"
ERROR: ld.so: object '/home/dt/.local/share/Steam/ubuntu12_32/gameoverlayrenderer.so' from LD_PRELOAD cannot be preloaded (wrong ELF class: ELFCLASS32): ignored.
ERROR: ld.so: object '/home/dt/.local/share/Steam/ubuntu12_32/gameoverlayrenderer.so' from LD_PRELOAD cannot be preloaded (wrong ELF class: ELFCLASS32): ignored.
ERROR: ld.so: object '/home/dt/.local/share/Steam/ubuntu12_64/gameoverlayrenderer.so' from LD_PRELOAD cannot be preloaded (wrong ELF class: ELFCLASS64): ignored.
Game Recording - would start recording game 570, but recording for this game is disabled
Adding process 93759 for gameID 570
ERROR: ld.so: object '/home/dt/.local/share/Steam/ubuntu12_32/gameoverlayrenderer.so' from LD_PRELOAD cannot be preloaded (wrong ELF class: ELFCLASS32): ignored.
ERROR: ld.so: object '/home/dt/.local/share/Steam/ubuntu12_32/gameoverlayrenderer.so' from LD_PRELOAD cannot be preloaded (wrong ELF class: ELFCLASS32): ignored.
Adding process 93760 for gameID 570
Adding process 93761 for gameID 570
pid 93842 != 93841, skipping destruction (fork without exec?)
basename: extra operand 'beta/game/dota.sh'
Try 'basename --help' for more information.
pid 93844 != 93841, skipping destruction (fork without exec?)
Adding process 93841 for gameID 570
Adding process 93843 for gameID 570
Adding process 93845 for gameID 570
Adding process 93846 for gameID 570
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libengine2.so, got 0x55c5771655e0
Using breakpad crash handler
Adding process 93847 for gameID 570
Adding process 93848 for gameID 570
[S_API] SteamAPI_Init(): Loaded '/home/dt/.local/share/Steam/linux64/steamclient.so' OK.
Setting breakpad minidump AppID = 570
Forcing breakpad minidump interfaces to load
Looking up breakpad interfaces from steamclient
Calling BreakpadMiniDumpSystemInit
03/26 13:48:49 minidumps folder is set to /tmp/dumps
03/26 13:48:49 Init: Installing breakpad exception handler for appid(570)/version(10555217)/tid(93846)
Looking up breakpad interfaces from steamclient
Calling BreakpadMiniDumpSystemInit
SteamInternal_SetMinidumpSteamID:  Caching Steam ID:  76561198730471246 [API loaded yes]
SteamInternal_SetMinidumpSteamID:  Setting Steam ID:  76561198730471246
Setting breakpad minidump AppID = 373300
Loaded libSDL3.so.0, got 0x55c577272c20
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libtier0.so, got 0x55c57714f350
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libfilesystem_stdio.so, got 0x55c5772f3690
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libinputsystem.so, got 0x55c5772d0470
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/liblocalize.so, got 0x55c577386fb0
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/librendersystemvulkan.so, got 0x55c577369030
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libresourcesystem.so, got 0x55c577348c60
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libschemasystem.so, got 0x55c57736f210
MESA-INTEL: warning: Haswell Vulkan support is incomplete
Fossilize INFO: Overriding serialization path: "/home/dt/.local/share/Steam/steamapps/shadercache/570/fozpipelinesv6/steamapprun_pipeline_cache".
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libmaterialsystem2.so, got 0x55c577b0ae80
Loaded libpangoft2-1.0.so, got (nil)
 failed to dlopen "libpangoft2-1.0.so" error=libpangoft2-1.0.so: cannot open shared object file: No such file or directory
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libpanorama_text_pango.so, got 0x55c577be1180
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 38: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 39: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 40: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 41: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 42: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 43: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 44: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 45: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 46: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 47: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 48: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 49: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 50: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 51: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 52: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 53: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 54: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 55: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 56: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 57: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 58: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 59: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 60: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 61: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 62: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 63: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 64: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 65: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 66: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 67: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 68: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 69: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 70: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 71: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 72: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 73: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 74: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 75: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 76: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 77: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 78: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 79: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 80: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 81: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 82: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 83: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 84: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 85: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 86: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 87: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 88: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 89: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 90: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 91: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 92: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 93: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 94: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 95: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 96: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 97: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 98: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 99: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 100: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 101: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 102: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 103: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 104: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 105: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 106: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 107: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 108: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 109: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 110: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 111: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 112: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 113: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 114: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 115: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 116: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 117: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/fonts.conf", line 118: unknown element "fontpattern"
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/conf.d/41-repl-os-win.conf", line 148: Having multiple values in <test> isn't supported and may not work as expected
Fontconfig warning: "/home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/core/panorama/fonts/conf.d/41-repl-os-win.conf", line 160: Having multiple values in <test> isn't supported and may not work as expected
Loaded libfreetype.so.6, got 0x55c577ac1480
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libpanorama_text_pango.so, got 0x55c577be1180
Loaded libfontconfig.so.1, got 0x55c577a83340
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libmeshsystem.so, got 0x55c578777bd0
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libworldrenderer.so, got 0x55c5787796f0
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libpulse_system.so, got 0x55c577df2020
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libvscript.so, got 0x55c577e04580
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libnetworksystem.so, got 0x55c577e16ad0
03/26 13:48:52 minidumps folder is set to /tmp/dumps
03/26 13:48:52 Init: Installing breakpad exception handler for appid(gameoverlayui)/version(20260313015227)/tid(93898)
03/26 13:48:52 Init: Installing breakpad exception handler for appid(gameoverlayui)/version(1.0)/tid(93898)
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libanimationsystem.so, got 0x55c577e17020
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libvphysics2.so, got 0x55c577e17570
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libsoundsystem.so, got 0x55c577e17ac0
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libsteamaudio.so, got 0x55c577e18010
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libscenesystem.so, got 0x55c577e18a50
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libparticles.so, got 0x55c577e90930
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/dota/bin/linuxsteamrt64/libserver.so, got 0x55c578871e10
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/dota/bin/linuxsteamrt64/libclient.so, got 0x55c5788c6030
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libpanorama.so, got 0x55c57895abc0
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libv8system.so, got 0x55c57896edf0
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libcairo.so, got 0x55c5789910c0
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libengine2.so, got 0x55c5771655e0
Loaded libmpg123.so.0, got 0x55c578c79c90
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/dota/bin/linuxsteamrt64/libhost.so, got 0x55c578dc33f0
Loaded /home/dt/.local/share/Steam/steamapps/common/dota 2 beta/game/bin/linuxsteamrt64/libscenefilecache.so, got 0x55c578dd69d0
[S_API] SteamAPI_Init(): Loaded '/home/dt/.local/share/Steam/linux64/steamclient.so' OK.
Setting breakpad minidump AppID = 570
SteamInternal_SetMinidumpSteamID:  Caching Steam ID:  76561197960265728 [API loaded yes]
SteamInternal_SetMinidumpSteamID:  Setting Steam ID:  76561197960265728
Looking up breakpad interfaces from steamclient
Calling BreakpadMiniDumpSystemInit
SteamInternal_SetMinidumpSteamID:  Caching Steam ID:  76561197960265728 [API loaded yes]
SteamInternal_SetMinidumpSteamID:  Setting Steam ID:  76561197960265728
Setting breakpad minidump AppID = 373300
IPC function call IClientUtils::GetIPCountry took too long: 54 msec
```


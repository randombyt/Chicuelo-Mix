# Chicuelo-Mix

## Introduction
Chicuelo made a very elegant and polished theme for EmulationStation, aptly called Chicuelo. He has a very fine grip on colors and presentation (figures the man is a designer). I adore his theme specially the contrast between plain background and exorbitant colors of flyers/ pictures, since I primarily use Attrcat-Mode I decided to port Chicuelo's theme to AM. 

All the credit for this theme (Chicuelo-Mix) goes to Chicuelo. Design decisions, artwork placement, font selection etc were all made by him. To show my appreciation and respect to the original author I have tried my best to keep this theme as close to original as possible. Since EmulationStation and Attract-Mode are two different applications I had to to tweak somethings, a list of changes is listed under differences header.  

**_Again to drive the point home, this here, is merely a port of an excellent theme. The credit for this great theme rests solely with Chicuelo._**

* **Original Theme Thread:** https://retropie.org.uk/forum/topic/15830/chicuelo-theme
* **Original Theme (GitHub):** https://github.com/chicueloarcade/es-theme-Chicuelo   

Lastly I've found Attract-Mode forums to be very helpful, this here is my little bit of contribution for the community :)

## Features:
* Exceptionally fine tuned, elegant and polished theme
* Currently supports 1920x1080 (16:9) resolution, but easy to tweak to other resolutions since we deal with few artwork items. Also the dimesnions are listed in plain numbers so upsizing/ downsizing won't be a huge problem.
* Lightweight, should work with most systems
* Highly Cutomizeable, Just by changing the System pictures you can create a very different look. 
* Easy to Expand: Easy to add more systems, all you will need are a few artwork items (provided emulation for said system works).

## Installation:
Attrcat-Mode is completely Portable. That means different Attrcat-Mode installations in different folders operate in isolation and don't effect each other. For this theme/ layout I HIGHLY recommend that you download and use a seperate version because **_WARNING!!!**_ If you copy the contents of this theme over an old instance of Attract-Mode, some of your settings (including romlists) will be overwritten. This repo is made with new users in mind and tailored to keep things as simple as possible, so I have made some pre-configured files which WILL OVERWRITE old installation files. If you are familiar with Attrcat-Mode's working then only download /layout/Chicuela Mix v1.0 and place it in /layouts.

1. Download Attract-mode and Unzip. File is located here  
http://attractmode.org/download.html
2. Keil's Shuffle module is already added in download.zip, if you are only downloading the layout part make sure to get it
https://github.com/keilmillerjr/shuffle-module and place it in /modules else skip this step.
3. Fetch the latest release candidate from release page. Extract it and paste the contens (6 folders and 6 files) on top of Attract-Mode folder, allow all overwrites. If you are only seeking the layout, download the release candidate, extract it and place "Chicuelo Mix" folder in /AM/layouts, this folder includes all artwork assets/ fonts etc utilized in theme. 
4. Start Attract-Mode, Press Tab for Settings. Change controls and restart.
5. Everything should be operational now as far as DisplaysMenu go.
6. Theme has two layout.nut files, For gamelists go to AM > Settings > Displays > [System] > Layout Options and Select layout_games

## Controls:
1. Up/ Down: This is a layout with vertical flow, so selection in "DisplaysMenu" and "SystemMenu" is via up and down mapped on keyborad or gamepad.

2. right/ left: Right & Left are disabled on "DisplaysMenu" and only work in "SystemMenu" where they jump to next display in same platform head. Right/ left can be mapped ot gamepad/ keyboard.

## Adding or Removing Systems/ Romlsist:
1. If you want to add systems, then add an [emulator].cfg file in /emulators (examples are given) just make sure that name of [emulator].cfg
matches with the system name in theme (example genesis is named Sega Genesis in theme and thatshow you should name it). Then generate a romlist from within Attrcat-Mode. 
2. If you already have pre-made romlists/ [emulator].cfg, rename them according to theme and make sure you edit [Emulator] part of romlist to reflect the changes. 
3. Adding a new system will require adding a line about it in relevant DisplaysMenu romlist. Console will be added to Consoles.txt, Arcades to Arcades.txt and so on. All systems in original are already added in pre-made lists. I f you want to add more then make sure to follow the already filled systems in DisplasMenu configs. Common mistake is not adding "@" in Emulator field.
4. If you want to remove a system add a "#" before it in its related DisplayMenu.txt romlist. Example for removing Amiga which is a computer system open Computers.txt in /romlists and place a hash (#) before its listing, AM will not list it anymore.
 
## Differences b/w Port and Original:
1. Added DisplaysMenu/ PlatformsMenu because calling some text assets otherwise would have required making direct enteries in layout.nut
2. Converted Logo SVG to PNG as Attract-Mode does not support SVG at the moment
3. Changed system names from abbreviated EmulationStation form to standard titles as Attract-Mode does not support ES's abbreviations directly.
4. Changed NeoGeo to SNK NeoGeo MVS, Changed PC/DOS to DOS
5. Cosmetic Changes like animation effect on arrows & sounds while browsing

## Future Prospects:
* This theme will continue to mimic the original. Additions (if any) will not deviate from original. 
* Game list sizes at the moment have to be manually added and can't be called via layout, this will be updated once i figure out how to do it.
* Sounds are a bit of mismatch, I might update them to get a more Arcade like feel.

## Credits:
### Theme
This theme was created solely by Chicuelo, I have merely ported the theme to Attrcat-Mode. All the credit goes to Chicuelo and huge thanks to him for sharing his great work with the community.

### General Attract-Mode Stuff:
Having no know how of squirrel language, I have relied extensively on knowledgeable members of Attrcat-Mode forums and picked a lot form their posts. Specially keilmillerjr, oomek, jedione, progets, hermine.potter, liquid8d, zpaolo11x, kent79, calle81 & qqplayer. I'm prolly not remebering a lot of other names but thankyou for all the help. 

### Plugins/ Modules
* Shuffle Plugin from "Keil Miller Jr" from  
https://github.com/keilmillerjr/shuffle-module   
note: I have added shuffle plugin in the repo and download file because new users tend to make mistakes in placing modules/ plugins. The most updated version will always be at Keil's orignal page and I encourge all to use original shuffle repo for keeping the plugin updated and also keep an eye on Keil's other plugin's which can add a lot of quality of life additions to Attract-Mode.

### ArtWorks
All the artwork is from Chicuelo's Chicuelo theme unless noted otherwise.

Artwork Exceptions are listed below.

###### Charachters
* Consoles Display: Sonic & Mario by "Banjo2015" from "Super Mario and Sonic the Hedgehog"  
https://www.deviantart.com/banjo2015/art/Super-Mario-and-Sonic-the-Hedgehog-589881514
* Handhelds Display: Kirby and Pals from GBA's title "Kirby and Amazing Mirror" promotion material  
https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/game_boy_advance_7/SI_GBA_KirbyAndTheAmazingMirror_image1600w.jpg
* Collections Display: Artwork by "PittStone"  
direct link : https://retropie.org.uk/forum/assets/uploads/files/1533157868633-custom-collections.jpg  
thread: https://retropie.org.uk/forum/topic/15830/chicuelo-theme  
* Mario Collection Display by "PittStone"  
direct link: https://retropie.org.uk/forum/assets/uploads/files/1533154481452-mario.jpg  
thread: https://retropie.org.uk/forum/topic/15830/chicuelo-theme  

###### Controllers
Controller images taken from Chicuelo's original ES theme, design proportions within layout/ placement etc is from Chicuelo. Most Controller images originated from OpenEMU (opensource bitmaps) I'll list the orignal authors (taken from Chicuelo's Repo Readme):


* Controller artworks by "Ricky Romero"  
  - Atari 2600
  - Atari 5200
  - Intellivision
  - NeoGeo Pocket Color
  - Nintendo 64
  - Nintendo DS
  - Odyssey2
  - Sega Saturn
  - Sega SG-1000
  - Sony PSP
  - Vectrex
  - Virtual Boy  
Listed on: https://dribbble.com/RickyRomero/projects/113063-OpenEmu  

* Contrioller artworks by "Craig Erskine". 
  - NEC TurboGrafix-16/CD
  - NEC PC-Engine
  - Nintendo GameCube
  - Sega Dreamcast
  - SNK NeoGeo Pocket Color (Original Version)    
Listed on: https://craigerskine.com/    
Listed on: https://dribbble.com/craigerskine    

* Controller artworks by "David McLeod"
  - Sega Game Gear
  - Sega Genesis
  - Nintendo GameBoy Advance
  - Sega Master System
  - Nintendo Famicom
  - Super Nintendo Entertainment System (SNES)
  - Nintendo entertainment System (NES)  
Listed on: https://dribbble.com/Mucx/tags/openemu  

* Controller artworks by "Memory Noise"  
  - NEC PC-FX
  - Bandai Wonderswan (Swancrystal)
  - Atari Lynx II  
Listed on: https://dribbble.com/memorynoise/tags/openemu  

###### Logos
* Mario Bros Collection  
https://vignette.wikia.nocookie.net/fictionalcrossover/images/a/a1/Mario_Bros_logo.png/revision/latest?cb=20130113163307
* Nintendo Famicom Disk System  
https://wahki.mameau.com/images/c/c4/NintendoFamicomDiskSystem_logo.jpg
* SNK NeoGeo MVS  
http://media.playright.dk/logo/015/861/4958-neo-geo-mv-6-system@800x600min.jpg  

###### Sounds
* "menu_selection_01.wav" is "Menu Selection Click" by "NenadSimic" as found on  
https://freesound.org/people/NenadSimic/sounds/171697/ (Creative Commons License)  
* "coin_01" is "Coin_C_03" by "cabled_mess" as found on  
https://freesound.org/people/cabled_mess/sounds/350870/ (Creative Commons License)  
* "Turn_page_01" is "TurnPage" by "partheeban" as found on  
https://freesound.org/people/partheeban/sounds/457767/ (Creative Commons License)
	

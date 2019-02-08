# Chicuelo-Mix

## Introduction
Chicuelo made a very elegant and polished theme for EmulationStation, aptly called Chicuelo. He has a very fine grip on colors and presentation (figures the man is a designer). I adore his theme specially the contrast between plain background and exorbitant colors of flyers/ pictures, since I primarily use Attrcat-Mode I decided to port Chicuelo's theme to AM. 

All the credit for this theme (Chicuelo-Mix) goes to Chicuelo. Design decisions, artwork placement, font selection etc were all made by him. To show my appreciation and respect to the original author I have tried my best to keep this theme as close to original as possible. Since EmulationStation and Attract-Mode are two different applications I had to to tweak somethings, a list of changes is listed under differences header.  

**_Again to drive the point home, this here, is merely a port of an excellent theme. The credit for this great theme rests solely with Chicuelo._**

* **Original Theme Thread:** https://retropie.org.uk/forum/topic/15830/chicuelo-theme
* **Original Theme (GitHub):** https://github.com/chicueloarcade/es-theme-Chicuelo   

Lastly I've found attrcat-Mode forums to be very helpful, this here is my little bit of contribution for the community :)

## Features:
* Exceptionally fine tuned, elegant and polished theme
* Currently supports 1920x1080 (16:9) resolution, but easy to tweak to other resolutions since we deal with few artwork items. Also the dimesnions are listed in plain numbers so upsizing/ downsizing won't be a huge problem.
* Lightweight, should work with most systems
* Highly Cutomizeable, Just by changing the System pictures you can create a very different look. 
* Easy to Expand: Easy to add more systems, all you will need are a few artwork items (provided emulation for said system works).

## Installation:
Attrcat-Mode is completely Portable. That means different Attrcat-Mode installations in different folders operate in isolation and don't effect each other. For this theme/ layout I HIGHLY recommend that you download and use a seperate version because WARNING!!! If you copy the contents of this theme over an old instance of Attract-Mode, some of your settings (including romlists) will be overwritten. This repo is made with new users in mind and tailored to keep things as simple as possible, so I have made some pre-configured files which WILL OVERWRITE old installation files. If you are familiar with Attrcat-Mode's working then only download /layout/Chicuela Mix v1.0 and place it in /layouts.

1- Download Attract-mode and Unzip. File is located here http://attractmode.org/download.html
1a- Keil's Shuffle module is added in download.zip, if you are only downloading the layout part make sure to get it from https://github.com/keilmillerjr/shuffle-module and place it in /modules.
2- Download zip and extract. Paste on top of Attract-Mode folder and allow to overwrite.
3- Read the readme files in folders then delete or move them. Rename Sample_attract.cfg to attract.cfg
4- Start Attract-Mode, Press Tab for Settings. Change controls and restart.
5- Everything should be operational now

## Controls:
Up/ Down: This is a layout with vertical flow, so selection in "DisplaysMenu" and "SystemMenu" is via up and down mapped on keyborad or gamepad.
right/ left: Right & Left are disabled on "DisplaysMenu" and only work in "SystemMenu" where they jump to next display in same platform head. Right/ left can be mapped ot gamepad/ keyboard.

## Adding or Removing Systems:
**To be added**
 
## Differences b/w Port and Original:
1. Added DisplaysMenu/ PlatformsMenu because calling some text assets otherwise would have required making direct enteries in layout.nut
2. Converted Logo SVG to PNG as Attract-Mode does not support SVG at the moment
3. Changed system names from abbreviated EmulationStation form to standard titles as Attract-Mode does not support ES's abbreviations directly.
4. Changed NeoGeo to SNK NeoGeo MVS, Changed PC/DOS to DOS
5. Cosmetic Changes like animation effect on arrows & sounds while browsing

## Future Prospects:
* This theme will continue to mimic the original. Additions (if any) will not deviate from original. 
* Game list sizes at the moment have to be manually added and can't be called via layout, this will be updated once i figure out how to do it.
 
## Credits:

### General Attract-Mode Stuff:
Having no know how of squirrel language, I have relied extensively on knowledgeable members of Attrcat-Mode forums and picked a lot form their posts. Specially keilmillerjr, oomek, jedione, progets, hermine.potter, liquid8d, zpaolo11x, kent79 & qqplayer. I'm prolly not remebering a lot of other names but thankyou for all the help. 

### Plugins/ Modules
Shuffle Plugin from "Keil Miller Jr" from: https://github.com/keilmillerjr/shuffle-module 
note: I have added shuffle plugin in the repo and download file because new users tend to make mistakes in placing modules/ plugins. The most updated version will always be at Keil's orignal page and I encourge all to use original shuffle repo for keeping the plugin updated and also keep an eye on Keil's other plugin's which can add a lot of quality of life additions to Attract-Mode.

### ArtWorks
All the artwork is from Chicuelo's Chicuelo theme unless noted otherwise.

Artwork Exceptions are listed below.

###### Charachters
Consoles Display: Sonic & Mario by "Banjo2015" from "Super Mario and Sonic the Hedgehog": https://www.deviantart.com/banjo2015/art/Super-Mario-and-Sonic-the-Hedgehog-589881514
Handhelds Display: Kirby and Pals from GBA's title "Kirby and Amazing Mirror" promotion material: https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/game_boy_advance_7/SI_GBA_KirbyAndTheAmazingMirror_image1600w.jpg
Collections Display: Artwork by "PittStone", direct link: https://retropie.org.uk/forum/assets/uploads/files/1533157868633-custom-collections.jpg, Thread: https://retropie.org.uk/forum/topic/15830/chicuelo-theme
Mario Collection Display by "PittStone, direct link: https://retropie.org.uk/forum/assets/uploads/files/1533154481452-mario.jpg Thread: https://retropie.org.uk/forum/topic/15830/chicuelo-theme

###### Controllers
Controllers taken from Chicuelo's original ES theme, design proportions within layout/ placement etc is from Chicuelo. Most Controller images originated from OpenEMU (opensource bitmaps) I'll list the orignal authors (taken from Chicuelo's Repo Readme):

TG-16/CD, PCE, GameCube, Dreamcast and the original version of the NGPC by "Craig Erskine". Listed at: https://craigerskine.com/ & https://dribbble.com/craigerskine
Game Gear, Genesis, GameBoy Advance, Master System, Famicom, SNES, NES by "David McLeod". Listed at: https://dribbble.com/Mucx/tags/openemu
by "Ricky Romero". Listed at: https://dribbble.com/RickyRomero/projects/113063-OpenEmu
by "Memory Noise". Listed at https://dribbble.com/memorynoise/tags/openemu

###### Logos
Mario Bros Collection: https://vignette.wikia.nocookie.net/fictionalcrossover/images/a/a1/Mario_Bros_logo.png/revision/latest?cb=20130113163307
Nintendo Famicom Disk System: https://wahki.mameau.com/images/c/c4/NintendoFamicomDiskSystem_logo.jpg
SNK NeoGeo MVS: http://media.playright.dk/logo/015/861/4958-neo-geo-mv-6-system@800x600min.jpg (Changed NeoGeo to SNK NeoGeo MVS)

###### Sounds
1. "menu_selection_01.wav" is "Menu Selection Click" by "NenadSimic" as found on: https://freesound.org/people/NenadSimic/sounds/171697/ (Creative Commons License)
2. "coin_01" is "Coin_C_03" by "cabled_mess" as found on: https://freesound.org/people/cabled_mess/sounds/350870/ (Creative Commons License)
3. "Turn_page_01" is "TurnPage" by "partheeban" as found on: https://freesound.org/people/partheeban/sounds/457767/ (Creative Commons License)
	

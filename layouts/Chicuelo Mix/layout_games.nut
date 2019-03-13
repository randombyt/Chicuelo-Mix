//##### Chicuelo Mix: Games version 1.0 #####
//##### This is a remake of Chicuelo's excellent theme on Emulation Station called "Chicuelo". I have tried my best to mimic the artwork & functionality of original ES theme#####



//##### Layout Background & Dimensions #####
fe.layout.width=1920;
fe.layout.height=1080;

//Surface & Background
local background_sur = fe.add_surface(1920,1080);
local background = background_sur.add_image("images/ingame-global-bg.png", 0,0,0,0);
background.mipmap = true;



//##### ARTWORKS #####

// Snap and Video as an artwork must be declared in /emulators/[Emulator].cfg, two sample emulator.cfg are included as examples. If you want to use game title then rename all instances of "snap" to "title" in //Snap+Frame code  and declare title as artwrork in emulator.cfg. If you only want videos then rename all instances of "snap" to "video" and remove code starting from //Video starts playing till //System Logo//

//Snap+Frame
local snap = fe.add_artwork( "snap", 948, 137, 763, 572 );
snap.mipmap = true;

//Video Starts Playing After 1 Second In Place of Snap
local settings = {
   delay_timer = 0,
   play_delay = 1000
}

local video = fe.add_artwork("video", 948, 137, 763, 572)


function on_transition(ttype, var, transition_time) {
    if ( ttype == Transition.StartLayout || ttype == Transition.ToNewList || ttype == Transition.FromOldSelection ) {
        video.visible = false
        settings.delay_timer = fe.layout.time
    }
    return false
}

function on_tick(tick_time) {
   if ( video.video_playing && tick_time - settings.delay_timer >= settings.play_delay ) video.visible = true
}

fe.add_ticks_callback(this, "on_tick")
fe.add_transition_callback(this, "on_transition")


//System Logo
local syslogo = fe.add_image("images/logos/[DisplayName].png" 908,807,300,160);
syslogo.mipmap = true;
syslogo.preserve_aspect_ratio = true;
syslogo.set_rgb (79, 81, 89);

//Blinking Arrows 
local image_up = fe.add_image ("images/up.png", 493, 80, 42, 24);
local image_down = fe.add_image ("images/down.png", 493, 980, 42, 24);
image_up.visible = false;
image_down.visible = false;
fe.add_ticks_callback( "tick_up" );
fe.add_ticks_callback( "tick_down" );
function tick_up( ttime )
{
	if (fe.get_input_state("Up")==true)
			{
				image_up.visible = true;
			}
   else if (fe.get_input_state("Up")== false)
			{
				image_up.visible = false;
			}
			return true;
   return false;
}

function tick_down ( ttime )
{
	if (fe.get_input_state("Down")==true)
			{
				image_down.visible = true;
			}
   else if (fe.get_input_state("Down")== false)
			{
				image_down.visible = false;
			}
			return true;
   return false;
}

//#####GameList#####

//Shuffle
//Load Shuffle Module
fe.load_module("shuffle");

//Shuffle Gamelist
local list = [];
	list.push(fe.add_text("[Title]", 220, 122, 540, 60));
	list.push(fe.add_text("[Title]", 220, 177, 540, 60));
	list.push(fe.add_text("[Title]", 220, 232, 540, 60));
	list.push(fe.add_text("[Title]", 220, 287, 540, 60));
	list.push(fe.add_text("[Title]", 220, 342, 540, 60));
	list.push(fe.add_text("[Title]", 220, 397, 540, 60));
	list.push(fe.add_text("[Title]", 220, 452, 540, 60));
	list.push(fe.add_text("[Title]", 220, 507, 540, 60));
	list.push(fe.add_text("[Title]", 220, 562, 540, 60));
	list.push(fe.add_text("[Title]", 220, 617, 540, 60));
	list.push(fe.add_text("[Title]", 220, 672, 540, 60));
	list.push(fe.add_text("[Title]", 220, 727, 540, 60));
	list.push(fe.add_text("[Title]", 220, 782, 540, 60));
	list.push(fe.add_text("[Title]", 220, 837, 540, 60));
	list.push(fe.add_text("[Title]", 220, 892, 540, 60));
	
// Extend the Shuffle class
class ShuffleList extends Shuffle {
function update() {
	base.update();
}

// Overwrite the select function
	function select(slot) {
		slot.font="Roboto-Light-Uppercase.ttf";
		slot.align = Align.Left;
		slot.charsize = 32;
		slot.style = Style.Bold;
		slot.set_rgb ( 120, 199, 239 );
}
	
// Overwrite the deselect function
	function deselect(slot) {
		slot.font="Roboto-Light-Uppercase.ttf";
		slot.align = Align.Left;
		slot.charsize = 32;
		slot.style = Style.Bold;
		slot.set_rgb (240, 240, 240);
	}
}

//Shuffle Image (Arrow)
local pow = [];
	pow.push(fe.add_image("images/icon.png", 90, 110, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 165, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 220, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 275, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 330, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 385, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 440, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 495, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 550, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 605, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 660, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 715, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 770, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 825, 0, 0));
	pow.push(fe.add_image("images/icon.png", 90, 880, 0, 0));
	
//Shufffle Pow Extend the Shuffle class
class ShufflePow extends Shuffle {
function update() {
	base.update();
}

// Overwrite the select function
	function select(slot) {
		slot.visible = true;
}

// Overwrite the select function
	function deselect(slot) {
		slot.visible = false;
	}
}

// Create an instance of the extended class
local list = ShuffleList(list, "text");
local pow = ShufflePow(pow, "image");

//Overview & Missing Overview Function
local gameoview = fe.add_text("[Overview]", 1261, 806, 430, 170);
gameoview.font= "Roboto-Light.ttf";
gameoview.align = Align.TopLeft;
gameoview.word_wrap = true;
gameoview.charsize = 20;
gameoview.char_spacing = 1.1;
gameoview.line_spacing = 1.25;
gameoview.style = Style.Bold;
gameoview.set_rgb(119, 121, 129);

// Favorites function is a WIP, Work in Progress, at this stage "custom3" will enter the selected title details in /romlists/Favorites.txt but thats about it. Removing would require manually deleting the said title line from the text file. If you want to use it in current state, uncomment (i.e. remove /* and */ from the function and map "custom3" from AM > Settings > Controls to some key//

//Favorites Function
/*fe.add_signal_handler(this, "on_signal");
function on_signal( sigfav )
{
	if ( sigfav == "custom3" ) 
	{
     fe.plugin_command_bg("cmd.exe /C" "echo " + fe.game_info( Info.Name ) + ";" + fe.game_info( Info.Title )  + ";" + fe.game_info( Info.Emulator ) + ";" + fe.game_info( Info.CloneOf )  + ";" + fe.game_info( Info.Year ) + ";" + fe.game_info( Info.Manufacturer )  + ";" + fe.game_info( Info.Category ) + ";" + fe.game_info( Info.Players )  + ";" + fe.game_info( Info.Rotation ) + ";" + fe.game_info( Info.Control )  + ";" + fe.game_info( Info.Status ) + ";" + fe.game_info( Info.DisplayCount )  + ";" + fe.game_info( Info.DisplayType ) + ";" + fe.game_info( Info.AltRomname )  + ";" + fe.game_info( Info.AltTitle ) + ";" + fe.game_info( Info.Extra ) + ";" + fe.game_info( Info.Buttons ) + " >> romlists/Favorites.txt" );
    }
    return false;
}
*/

//*****END*****//
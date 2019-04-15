//##### Chicuelo Mix: Display Menu (aka Platforms Menu) version 1.0 #####
//##### This is a remake of Chicuelo's excellent theme on Emulation Station called "Chicuelo". I have tried my best to mimic the artwork & functionality of original ES theme#####



//##### Layout Background & Dimensions#####

//Layout Dimensions
fe.layout.width=1920;
fe.layout.height=1080;

//Surface & Background
local background_sur = fe.add_surface(1920,1080);
local background = background_sur.add_image("images/platform-global-bg.png", 0,0,0,0);
background.mipmap = true;



//##### Artwork #####

//Platforms Flyer, Logo & Title
local sysflyer = fe.add_image("images/characters/[Title].png", 788, 81, 1027, 918);
sysflyer.mipmap = true;
sysflyer.trigger = Transition.EndNavigation;
sysflyer.preserve_aspect_ratio = true;

local syscontrollers = fe.add_image("images/controllers/[Title].png", 1351, 621, 0, 0);
syscontrollers.mipmap = true;
syscontrollers.trigger = Transition.EndNavigation;
syscontrollers.preserve_aspect_ratio = true;

local syslogo = fe.add_image("images/logos/[Title].png" 244,368,400,160);
syslogo.mipmap = true;
syslogo.trigger = Transition.EndNavigation;
syslogo.preserve_aspect_ratio = true;
syslogo.set_rgb (79, 81, 89);

//Blinking Arrows 
local image_up = fe.add_image ("images/up.png", 428, 46, 42, 24);
local image_down = fe.add_image ("images/down.png", 428, 1014, 42, 24);
image_up.visible = false;
image_down.visible = false;
fe.add_ticks_callback( "tick_up" );
fe.add_ticks_callback( "tick_down" );
function tick_up(ttime){
    (fe.get_input_state("Up") || fe.get_input_state("Joy0 Up") || fe.get_input_state("Joy0 PovYpos")) ? image_up.visible = true : image_up.visible = false;
}

function tick_down(ttime){
    (fe.get_input_state("Down") || fe.get_input_state("Joy0 Down") || fe.get_input_state("Joy0 PovYneg")) ? image_down.visible = true : image_down.visible = false;
}

//Indicator Bar
local indicator1 = fe.add_image( "images/indicator1.png", 46, 260, 12,600 );
local indicator0 = fe.add_image( "images/indicator0.png", 48, 260, 8, 600 );

function indicate( ttype, var, ttime ) 
{
   indicator0.height = (indicator1.height)/(fe.list.size) * (fe.list.index+1)
}
fe.add_transition_callback(this, "indicate" )

function sort_value ()
{
	if (fe.game_info( Info.Sort).Name == "Title") return "100";
	else if (fe.game_info( Info.Sort).Name == "Year") return "200";
	else if (fe.game_info( Info.Sort).Name == "Players") return "300";
	else if (fe.game_info( Info.Sort).Name == "NoSort") return "400";
}

local sortby = fe.add_text ("[!sort_value]", 500,500,200,200;
sortby.font = "Roboto-Medium.ttf";
sortby.charsize = 50;

//#####GameList#####
//List Size
function listsize()
{
	if (fe.game_info( Info.Title ) == "Arcades") return "[ListSize]" + " Systems" + " Available";
	else if (fe.game_info( Info.Title ) == "Computers") return "[ListSize]" + " Systems" + " Available";
	else if (fe.game_info( Info.Title ) == "Consoles") return "[ListSize]" + " Systems" + " Available";
	else if (fe.game_info( Info.Title ) == "Handhelds") return "[ListSize]" + " Systems" + " Available";
	else if (fe.game_info( Info.Title ) == "Favorites") return "[ListSize]" + " Games" + " Available";
	else if (fe.game_info( Info.Title ) == "Collections") return "[ListSize]" + " Collections" + " Available";
	else if (fe.game_info( Info.Title ) == "Exit Attract-Mode") return "";
	else if (fe.game_info( Info.Title ) != "Arcades" || "Computers" || "Consoles" || "Handhelds" || "Favorites" || "Collections" || "Exit Attract-Mode" ) return "[ListSize]" + " Games" + " Available";
}
local listsize = fe.add_text("[!listsize]", 230, 680, 420, 300);
listsize.font= "Roboto-Medium.ttf";
listsize.align = Align.Centre;
listsize.word_wrap = true;
listsize.charsize = 30;
listsize.set_rgb(79, 81, 89);



//#####System Info#####

//System Info
function sysinfo ()
{
	if (fe.game_info( Info.Year ) == "") return "[Extra]";
	else return "[Year]" + "  ·  " + "[Extra]";
}
local sysinfo = fe.add_text("[!sysinfo]", 155, 221, 580, 100);
sysinfo.font= "Roboto-Medium.ttf";
sysinfo.align = Align.Centre;
sysinfo.word_wrap = true;
sysinfo.charsize = 30;
sysinfo.set_rgb(129, 129, 129);

//System Overview
local sysoverview = fe.add_text("[Overview]", 242, 480, 400, 300);
sysoverview.font= "Roboto-Medium.ttf";
sysoverview.align = Align.Centre;
sysoverview.word_wrap = true;
sysoverview.charsize = 20;
sysoverview.char_spacing = 1.1;
sysoverview.line_spacing = 1.25;
sysoverview.set_rgb(129, 129, 129);

//System Overview Exception: Exit-Attract-Mode Function!
function exitoview()
{
	if (fe.game_info( Info.Title ) != "Exit Attract-Mode") return "";
	else if (fe.game_info( Info.Title ) == "Exit Attract-Mode") return "Safe Option to Exit the System";
}
local exitoview = fe.add_text("[!exitoview]", 242, 480, 400, 300);
exitoview.font= "Roboto-Medium.ttf";
exitoview.align = Align.Centre;
exitoview.word_wrap = true;
exitoview.charsize = 20;
exitoview.set_rgb(129, 129, 129);

//Headlines
function headlines()
{
	if (fe.game_info( Info.Title ) == "Arcades") return "COIN OPERATED CABINETS";
	else if (fe.game_info( Info.Title ) == "Computers") return "COMPUTER SYSTEMS";
	else if (fe.game_info( Info.Title ) == "Consoles") return "CONSOLE SYSTEMS";
	else if (fe.game_info( Info.Title ) == "Handhelds") return "HANDHELD SYSTEMS";
	else if (fe.game_info( Info.Title ) == "Favorites") return "FAVORITE GAMES";
	else if( fe.game_info( Info.Title ) == "Collections") return "CUSTOM COLLECTIONS";
	else if (fe.game_info( Info.Title ) == "Exit Attract-Mode") return "SHUT-DOWN MENU";
	else if (fe.game_info( Info.Title ) != "Arcades" || "Computers" || "Consoles" || "Handhelds" || "Favorites" || "Collections" || "Exit Attract-Mode" ) return "";
	}
local headlines = fe.add_text("[!headlines]", 155, 221, 580, 100);
headlines.font= "Roboto-Medium.ttf";
headlines.align = Align.Centre;
headlines.word_wrap = true;
headlines.charsize = 30;
headlines.set_rgb(129, 129, 129);

//Right & Left Button Presses Ignored for "Platforms Menu" & "Systems Menu"
function on_signal( sig )
{
	switch ( sig )	
	{
	case "left":
	fe.signal( "" );
		return true;

	case "right":
	fe.signal( "" );
		return true;
	}
	return false;
}
fe.add_signal_handler(this, "on_signal");
//*****END*****//
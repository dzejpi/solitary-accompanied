/// @description Pressed logic
event_inherited();

if isPressed = true
{
	// Uncomment once intro is finished
	//room_goto(room_Intro);
	
	// Delete when intro is ifnished
	room_goto(room_Game);
}
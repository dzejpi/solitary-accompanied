/// @description Pressed logic
event_inherited();

if isPressed = true
{
	// Uncomment once intro is finished
	//instance_create_depth(0, 0, 0, obj_NextRoom);
	
	// Delete when intro is ifnished
	room_goto(room_Game);
}
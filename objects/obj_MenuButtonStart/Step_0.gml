/// @description Pressed logic
event_inherited();

if isPressed = true
{
	if !gameStarted
	{
		instance_create_depth(0, 0, 0, obj_NextRoom);
		gameStarted = true;
	}
}
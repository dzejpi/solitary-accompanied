/// @description Pressed logic
event_inherited();

if isPressed = true
{
	buttonText = "Music on";
	audio_group_set_gain(music_group, 1, 0);
} else
{
	buttonText = "Music off";
	audio_group_set_gain(music_group, 1, 0);
}
/// @description Insert description here
// You can write your code in this editor
audio_group_load(sound_group);
audio_group_load(music_group);

positionY = 100;
spaceBetweenButtons = 48;
positionX = (room_width/2)

instance_create_depth(positionX, positionY + (spaceBetweenButtons * 0), 0, obj_MenuButtonStart);
instance_create_depth(positionX, positionY + (spaceBetweenButtons * 1), 0, obj_MenuButtonMusic);
instance_create_depth(positionX, positionY + (spaceBetweenButtons * 2), 0, obj_MenuButtonSound);
instance_create_depth(positionX, positionY + (spaceBetweenButtons * 3), 0, obj_MenuButtonQuit);
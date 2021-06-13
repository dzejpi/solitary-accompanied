/// @description Start the splash screen
instance_create_depth(0, 0, 0, obj_WindowSizeHandler);

displayingSplash = true;
displayedSplash = false;
alphaImage = 0.00;

splashSpeed = 0.02;

display_set_gui_size(640, 360);
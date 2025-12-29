// Create event
/// Layout (pixels)
d_w = 720; d_h = 480;        // dungeon panel size
ui_x = d_w; ui_y = 0;        // UI panel top-left
ui_w = display_get_width() - d_w;
ui_h = display_get_height();

// Create dungeon camera
cam_dungeon = camera_create();
camera_set_view_size(cam_dungeon, d_w, d_h);      // camera viewport size (world / pixels)
camera_set_view_pos(cam_dungeon, 0, 0);           // start world position

// Create UI camera (optional) — you can also draw UI in Draw GUI (recommended)
cam_ui = camera_create();
camera_set_view_size(cam_ui, display_get_width(), display_get_height());
camera_set_view_pos(cam_ui, 0, 0);

// Configure viewport 0 = dungeon panel
viewport_set_visible(0, true);
viewport_set_camera(0, cam_dungeon);
viewport_set_wview(0, d_w);    // view size (match camera)
viewport_set_hview(0, d_h);
viewport_set_xport(0, 0);      // screen position
viewport_set_yport(0, 0);
viewport_set_wport(0, d_w);    // pixel size on screen
viewport_set_hport(0, d_h);

// Configure viewport 1 = UI panel
viewport_set_visible(1, true);
viewport_set_camera(1, cam_ui);
viewport_set_wview(1, display_get_width());
viewport_set_hview(1, display_get_height());
viewport_set_xport(1, ui_x);
viewport_set_yport(1, ui_y);
viewport_set_wport(1, ui_w);
viewport_set_hport(1, ui_h);

// Party example data (replace with your data model)
party = [
    {name:"Alice", hp:32, maxhp:40, portrait:spr_portrait_alice},
    {name:"Borin",  hp:22, maxhp:30, portrait:spr_portrait_borin},
    {name:"Cara",   hp:15, maxhp:28, portrait:spr_portrait_cara}
];

// optional surface for dungeon effects
surf_dungeon = -1;
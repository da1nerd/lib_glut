lib LibGlut

  # Initialization functions
  fun init = glutInit(argc : Int*, argv : Char**) : Void
  fun init_window_position = glutInitWindowPosition(x : Int, y : Int) : Void
  fun init_window_size = glutInitWindowSize(width : Int, height : Int) : Void
  fun init_display_mode = glutInitDisplayMode(displayMode : UInt) : Void
  fun init_display_string = glutInitDisplayString(displayMode : Char*) : Void

  # Process loop function
  fun main_loop = glutMainLoop() : Void

  # Window management functions
  fun create_window = glutCreateWindow(title : Char*) : Void
  fun create_sub_window = glutCreateSubWindow(window : Int, x : Int, y : Int, width : Int, height : Int) : Void
  fun destroy_window = glutDestroyWindow(window : Int) : Void
  fun set_window = glutSetWindow(window : Int) : Void
  fun get_window = glutGetWindow() : Void
  fun set_window_title = glutSetWindowTitle(title : Char*) : Void
  fun set_icon_title = glutSetIconTitle(title : Char*) : Void
  fun reshape_window = glutReshapeWindow(width : Int, height : Int) : Void
  fun position_window = glutPositionWindow(x : Int, y : Int) : Void
  fun show_window = glutShowWindow() : Void
  fun hide_window = glutHideWindow() : Void
  fun iconify_window = glutIconifyWindow() : Void
  fun push_window = glutPushWindow() : Void
  fun pop_window = glutPopWindow() : Void
  fun full_screen = glutFullScreen() : Void

  # Display-connected functions
  fun post_window_redisplay = glutPostWindowRedisplay(window : Int) : Void
  fun post_redisplay = glutPostRedisplay() : Void
  fun swap_buffers = glutSwapBuffers() : Void

  # Mouse cursor functions
  fun warp_pointer = glutWarpPointer(x : Int, y : Int) : Void
  fun set_cursor = glutSetCursor(cursor : Int) : Void

  # Overlay stuff
  fun establish_overlay = glutEstablishOverlay() : Void
  fun remove_overlay = glutRemoveOverlay() : Void
  fun use_layer = glutUseLayer(layer : Enum) : Void
  fun post_overlay_redisplay = glutPostOverlayRedisplay() : Void
  fun post_window_overlay_redisplay = glutPostWindowOverlayRedisplay(window : Int) : Void
  fun show_overlay = glutShowOverlay() : Void
  fun hide_overlay = glutHideOverlay() : Void

  # Menu stuff
  fun create_menu = glutCreateMenu(callback : (menu : Int) -> Void) : Int
  fun destroy_menu = glutDestroyMenu(menu : Int) : Void
  fun get_menu = glutGetMenu() : Int
  fun set_menu = glutSetMenu(menu : Int) : Void
  fun add_menu_entry = glutAddMenuEntry(label : Char*, value : Int) : Void
  fun add_sub_menu = glutAddSubMenu(label : Char*, subMenu : Int) : Void
  fun change_to_menu_entry = glutChangeToMenuEntry(item : Int, label : Char*, value : Int) : Void
  fun change_to_sub_menu = glutChangeToSubMenu(item : Int, label : Char*, value : Int) : Void
  fun remove_menu_item = glutRemoveMenuItem(item : Int) : Void
  fun attach_menu = glutAttachMenu(button : Int) : Void
  fun detach_menu = glutDetachMenu(button : Int) : Void

  # Global callback functions
  fun timer_func = glutTimerFunc(time : UInt, callback : Int -> Void, value : Int) : Void
  fun idle_func = glutIdleFunc(callback : Void -> Void) : Void

  # Window-specific callback functions
  fun keyboard_func = glutKeyboardFunc(callback : (Char, Int, Int) -> Void) : Void
  fun special_func = glutSpecialFunc(callback : (Int, Int, Int) -> Void) : Void
  fun reshape_func = glutReshapeFunc(callback : (Int, Int) -> Void) : Void
  fun visibility_func = glutVisibilityFunc(callback : Int -> Void) : Void
  fun display_func = glutDisplayFunc(callback : Void -> Void) : Void
  fun mouse_func = glutMouseFunc(callback : (Int, Int, Int, Int) -> Void) : Void
  fun motion_func = glutMotionFunc(callback : (Int, Int) -> Void) : Void
  fun passive_motion_func = glutPassiveMotionFunc(callback : (Int, Int) -> Void) : Void
  fun entry_func = glutEntryFunc(callback : Int -> Void) : Void

  fun keyboard_up_func = glutKeyboardUpFunc(callback : (Char, Int, Int) -> Void) : Void
  fun special_up_func = glutSpecialUpFunc(callback : (Int, Int, Int) -> Void) : Void
  fun joystick_func = glutJoystickFunc(callback : (UInt, Int, Int, Int) -> Void, pollInterval : Int) : Void
  fun menu_state_func = glutMenuStateFunc(callback : Int -> Void) : Void
  fun menu_status_func = glutMenuStatusFunc(callback  : (Int, Int, Int) -> Void) : Void
  fun overlay_display_func = glutOverlayDisplayFunc(callback : Void -> Void) : Void
  fun window_status_func = glutWindowStatusFunc(callback : Int -> Void) : Void

  fun spaceball_motion_func = glutSpaceballMotionFunc(callback : (Int, Int, Int) -> Void) : Void
  fun spaceball_rotate_func = glutSpaceballRotateFunc(callback : (Int, Int, Int) -> Void) : Void
  fun spaceball_button_func = glutSpaceballButtonFunc(callback : (Int, Int) -> Void) : Void
  fun button_box_func = glutButtonBoxFunc(callback : (Int, Int) -> Void) : Void
  fun dials_func = glutDialsFunc(callback : (Int, Int) -> Void) : Void
  fun tablet_motion_func = glutTabletMotionFunc(callback : (Int, Int) -> Void) : Void
  fun tablet_button_func = glutTabletButtonFunc(callback : (Int, Int, Int, Int) -> Void) : Void

  # State setting and retrieval functions
  fun get = glutGet(query : Enum) : Int
  fun device_get = glutDeviceGet(query : Enum) : Int
  fun get_modifiers = glutGetModifiers() : Int
  fun layer_get = glutLayerGet(query : Enum) : Int

  # Font stuff
  # TODO: figure out how to bind `void *font`
  # fun bitmap_character = glutBitmapCharacter(Void* font, character : Int) : Void
  # fun bitmap_width = glutBitmapWidth(Void* font, character : Int) : Int
  # fun stroke_character = glutStrokeCharacter(Void* font, character : Int) : Void
  # fun stroke_width = glutStrokeWidth(Void* font, character : Int) : Int
  # fun bitmap_length = glutBitmapLength(Void* font, string : Char*) : Int
  # fun stroke_length = glutStrokeLength(Void* font, string : Char*) : Int

  # Geometry functions
  fun wire_cube = glutWireCube(size : Double) : Void
  fun solid_cube = glutSolidCube(size : Double) : Void
  fun wire_sphere = glutWireSphere(radius : Double, slices : Int, stacks : Int) : Void
  fun solid_sphere = glutSolidSphere(radius : Double, slices : Int, stacks : Int) : Void
  fun wire_cone = glutWireCone(base : Double, height : Double, slices : Int, stacks : Int) : Void
  fun solid_cone = glutSolidCone(base : Double, height : Double, slices : Int, stacks : Int) : Void

  fun wire_torus = glutWireTorus(innerRadius : Double, outerRadius : Double, sides : Int, rings : Int) : Void
  fun solid_torus = glutSolidTorus(innerRadius : Double, outerRadius : Double, sides : Int, rings : Int) : Void
  fun wire_dodecahedron = glutWireDodecahedron() : Void
  fun solid_dodecahedron = glutSolidDodecahedron() : Void
  fun wire_octahedron = glutWireOctahedron() : Void
  fun solid_octahedron = glutSolidOctahedron() : Void
  fun wire_tetrahedron = glutWireTetrahedron() : Void
  fun solid_tetrahedron = glutSolidTetrahedron() : Void
  fun wire_icosahedron = glutWireIcosahedron() : Void
  fun solid_icosahedron = glutSolidIcosahedron() : Void

  # Teapot rendering functions
  # front facing polygons have clockwise winding, not counter clockwise
  fun wire_teapot = glutWireTeapot(size : Double) : Void
  fun solid_teapot = glutSolidTeapot(size : Double) : Void

  # Game mode functions
  fun game_mode_string = glutGameModeString(string : Char*) : Void
  fun enter_game_mode = glutEnterGameMode() : Int
  fun leave_game_mode = glutLeaveGameMode() : Void
  fun game_mode_get = glutGameModeGet(query : Enum) : Int

  # Video resize functions
  fun video_resize_get = glutVideoResizeGet(query : Enum) : Int
  fun setup_video_resizing = glutSetupVideoResizing(Void) : Void
  fun stop_video_resizing = glutStopVideoResizing() : Void
  fun video_resize = glutVideoResize(x : Int, y : Int, width : Int, height : Int) : Void
  fun video_pan = glutVideoPan(x : Int, y : Int, width : Int, height : Int) : Void

  # Colormap functions
  fun set_color = glutSetColor(color : Int, red : Float, green : Float, blue : Float) : Void
  fun get_color = glutGetColor(color : Int, component : Int) : GLfloat
  fun copy_colormap = glutCopyColormap(window : Int) : Void

  # Misc keyboard and joystick functions
  fun ignore_key_repeat = glutIgnoreKeyRepeat(ignore : Int) : Void
  fun set_key_repeat = glutSetKeyRepeat(repeatMode : Int) : Void
  fun force_joystick_func = glutForceJoystickFunc() : Void

  # Misc functions
  fun extension_supported = glutExtensionSupported(extension : Char*) : Int
  fun report_errors = glutReportErrors() : Void

end

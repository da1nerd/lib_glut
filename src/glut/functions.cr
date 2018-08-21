lib LibGlut
  alias Enum = UInt32

  # Initialization functions
  fun init = glutInit(argc : LibC::Int*, argv : LibC::Char**) : Void
  fun init_window_position = glutInitWindowPosition(x : LibC::Int, y : LibC::Int) : Void
  fun init_window_size = glutInitWindowSize(width : LibC::Int, height : LibC::Int) : Void
  fun init_display_mode = glutInitDisplayMode(displayMode : LibC::UInt) : Void
  fun init_display_string = glutInitDisplayString(displayMode : LibC::Char*) : Void

  # Process loop function
  fun main_loop = glutMainLoop() : Void

  # Window management functions
  fun create_window = glutCreateWindow(title : LibC::Char*) : LibC::Int
  fun create_sub_window = glutCreateSubWindow(window : LibC::Int, x : LibC::Int, y : LibC::Int, width : LibC::Int, height : LibC::Int) : LibC::Int
  fun destroy_window = glutDestroyWindow(window : LibC::Int) : Void
  fun set_window = glutSetWindow(window : LibC::Int) : Void
  fun get_window = glutGetWindow() : LibC::Int
  fun set_window_title = glutSetWindowTitle(title : LibC::Char*) : Void
  fun set_icon_title = glutSetIconTitle(title : LibC::Char*) : Void
  fun reshape_window = glutReshapeWindow(width : LibC::Int, height : LibC::Int) : Void
  fun position_window = glutPositionWindow(x : LibC::Int, y : LibC::Int) : Void
  fun show_window = glutShowWindow() : Void
  fun hide_window = glutHideWindow() : Void
  fun iconify_window = glutIconifyWindow() : Void
  fun push_window = glutPushWindow() : Void
  fun pop_window = glutPopWindow() : Void
  fun full_screen = glutFullScreen() : Void

  # Display-connected functions
  fun post_window_redisplay = glutPostWindowRedisplay(window : LibC::Int) : Void
  fun post_redisplay = glutPostRedisplay() : Void
  fun swap_buffers = glutSwapBuffers() : Void

  # Mouse cursor functions
  fun warp_pointer = glutWarpPointer(x : LibC::Int, y : LibC::Int) : Void
  fun set_cursor = glutSetCursor(cursor : LibC::Int) : Void

  # Overlay stuff
  fun establish_overlay = glutEstablishOverlay() : Void
  fun remove_overlay = glutRemoveOverlay() : Void
  fun use_layer = glutUseLayer(layer : Enum) : Void
  fun post_overlay_redisplay = glutPostOverlayRedisplay() : Void
  fun post_window_overlay_redisplay = glutPostWindowOverlayRedisplay(window : LibC::Int) : Void
  fun show_overlay = glutShowOverlay() : Void
  fun hide_overlay = glutHideOverlay() : Void

  # Menu stuff
  fun create_menu = glutCreateMenu(callback : LibC::Int -> Void) : LibC::Int
  fun destroy_menu = glutDestroyMenu(menu : LibC::Int) : Void
  fun get_menu = glutGetMenu() : LibC::Int
  fun set_menu = glutSetMenu(menu : LibC::Int) : Void
  fun add_menu_entry = glutAddMenuEntry(label : LibC::Char*, value : LibC::Int) : Void
  fun add_sub_menu = glutAddSubMenu(label : LibC::Char*, subMenu : LibC::Int) : Void
  fun change_to_menu_entry = glutChangeToMenuEntry(item : LibC::Int, label : LibC::Char*, value : LibC::Int) : Void
  fun change_to_sub_menu = glutChangeToSubMenu(item : LibC::Int, label : LibC::Char*, value : LibC::Int) : Void
  fun remove_menu_item = glutRemoveMenuItem(item : LibC::Int) : Void
  fun attach_menu = glutAttachMenu(button : LibC::Int) : Void
  fun detach_menu = glutDetachMenu(button : LibC::Int) : Void

  # Global callback functions
  fun timer_func = glutTimerFunc(time : LibC::UInt, callback : LibC::Int -> Void, value : LibC::Int) : Void
  fun idle_func = glutIdleFunc(callback : Void -> Void) : Void

  # Window-specific callback functions
  fun keyboard_func = glutKeyboardFunc(callback : (LibC::Char, LibC::Int, LibC::Int) -> Void) : Void
  fun special_func = glutSpecialFunc(callback : (LibC::Int, LibC::Int, LibC::Int) -> Void) : Void
  fun reshape_func = glutReshapeFunc(callback : (LibC::Int, LibC::Int) -> Void) : Void
  fun visibility_func = glutVisibilityFunc(callback : LibC::Int -> Void) : Void
  fun display_func = glutDisplayFunc(callback : Void -> Void) : Void
  fun mouse_func = glutMouseFunc(callback : (LibC::Int, LibC::Int, LibC::Int, LibC::Int) -> Void) : Void
  fun motion_func = glutMotionFunc(callback : (LibC::Int, LibC::Int) -> Void) : Void
  fun passive_motion_func = glutPassiveMotionFunc(callback : (LibC::Int, LibC::Int) -> Void) : Void
  fun entry_func = glutEntryFunc(callback : LibC::Int -> Void) : Void

  fun keyboard_up_func = glutKeyboardUpFunc(callback : (LibC::Char, LibC::Int, LibC::Int) -> Void) : Void
  fun special_up_func = glutSpecialUpFunc(callback : (LibC::Int, LibC::Int, LibC::Int) -> Void) : Void
  fun joystick_func = glutJoystickFunc(callback : (LibC::UInt, LibC::Int, LibC::Int, LibC::Int) -> Void, pollinterval : LibC::Int) : Void
  fun menu_state_func = glutMenuStateFunc(callback : LibC::Int -> Void) : Void
  fun menu_status_func = glutMenuStatusFunc(callback  : (LibC::Int, LibC::Int, LibC::Int) -> Void) : Void
  fun overlay_display_func = glutOverlayDisplayFunc(callback : Void -> Void) : Void
  fun window_status_func = glutWindowStatusFunc(callback : LibC::Int -> Void) : Void

  fun spaceball_motion_func = glutSpaceballMotionFunc(callback : (LibC::Int, LibC::Int, LibC::Int) -> Void) : Void
  fun spaceball_rotate_func = glutSpaceballRotateFunc(callback : (LibC::Int, LibC::Int, LibC::Int) -> Void) : Void
  fun spaceball_button_func = glutSpaceballButtonFunc(callback : (LibC::Int, LibC::Int) -> Void) : Void
  fun button_box_func = glutButtonBoxFunc(callback : (LibC::Int, LibC::Int) -> Void) : Void
  fun dials_func = glutDialsFunc(callback : (LibC::Int, LibC::Int) -> Void) : Void
  fun tablet_motion_func = glutTabletMotionFunc(callback : (LibC::Int, LibC::Int) -> Void) : Void
  fun tablet_button_func = glutTabletButtonFunc(callback : (LibC::Int, LibC::Int, LibC::Int, LibC::Int) -> Void) : Void

  # State setting and retrieval functions
  fun get = glutGet(query : Enum) : LibC::Int
  fun device_get = glutDeviceGet(query : Enum) : LibC::Int
  fun get_modifiers = glutGetModifiers() : LibC::Int
  fun layer_get = glutLayerGet(query : Enum) : LibC::Int

  # Font stuff
  fun bitmap_character = glutBitmapCharacter( Void*, character : LibC::Int) : Void
  fun bitmap_width = glutBitmapWidth(font : Void*, character : LibC::Int) : LibC::Int
  fun stroke_character = glutStrokeCharacter(font : Void*, character : LibC::Int) : Void
  fun stroke_width = glutStrokeWidth(font : Void*, character : LibC::Int) : LibC::Int
  fun bitmap_length = glutBitmapLength(font : Void*, string : LibC::Char*) : LibC::Int
  fun stroke_length = glutStrokeLength(font : Void*, string : LibC::Char*) : LibC::Int

  # Geometry functions
  fun wire_cube = glutWireCube(size : LibC::Double) : Void
  fun solid_cube = glutSolidCube(size : LibC::Double) : Void
  fun wire_sphere = glutWireSphere(radius : LibC::Double, slices : LibC::Int, stacks : LibC::Int) : Void
  fun solid_sphere = glutSolidSphere(radius : LibC::Double, slices : LibC::Int, stacks : LibC::Int) : Void
  fun wire_cone = glutWireCone(base : LibC::Double, height : LibC::Double, slices : LibC::Int, stacks : LibC::Int) : Void
  fun solid_cone = glutSolidCone(base : LibC::Double, height : LibC::Double, slices : LibC::Int, stacks : LibC::Int) : Void

  fun wire_torus = glutWireTorus(innerRadius : LibC::Double, outerRadius : LibC::Double, sides : LibC::Int, rings : LibC::Int) : Void
  fun solid_torus = glutSolidTorus(innerRadius : LibC::Double, outerRadius : LibC::Double, sides : LibC::Int, rings : LibC::Int) : Void
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
  fun wire_teapot = glutWireTeapot(size : LibC::Double) : Void
  fun solid_teapot = glutSolidTeapot(size : LibC::Double) : Void

  # Game mode functions
  fun game_mode_string = glutGameModeString(string : LibC::Char*) : Void
  fun enter_game_mode = glutEnterGameMode() : LibC::Int
  fun leave_game_mode = glutLeaveGameMode() : Void
  fun game_mode_get = glutGameModeGet(query : Enum) : LibC::Int

  # Video resize functions
  fun video_resize_get = glutVideoResizeGet(query : Enum) : LibC::Int
  fun setup_video_resizing = glutSetupVideoResizing() : Void
  fun stop_video_resizing = glutStopVideoResizing() : Void
  fun video_resize = glutVideoResize(x : LibC::Int, y : LibC::Int, width : LibC::Int, height : LibC::Int) : Void
  fun video_pan = glutVideoPan(x : LibC::Int, y : LibC::Int, width : LibC::Int, height : LibC::Int) : Void

  # Colormap functions
  fun set_color = glutSetColor(color : LibC::Int, red : LibC::Float, green : LibC::Float, blue : LibC::Float) : Void
  fun get_color = glutGetColor(color : LibC::Int, component : LibC::Int) : LibC::Float
  fun copy_colormap = glutCopyColormap(window : LibC::Int) : Void

  # Misc keyboard and joystick functions
  fun ignore_key_repeat = glutIgnoreKeyRepeat(ignore : LibC::Int) : Void
  fun set_key_repeat = glutSetKeyRepeat(repeatMode : LibC::Int) : Void
  fun force_joystick_func = glutForceJoystickFunc() : Void

  # Misc functions
  fun extension_supported = glutExtensionSupported(extension : LibC::Char*) : LibC::Int
  fun report_errors = glutReportErrors() : Void

end

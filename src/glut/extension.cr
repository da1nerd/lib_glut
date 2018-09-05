# Extensions to freeglut that provide context support
@[Link(ldflags: "#{__DIR__}/lib_extension/libextension.a")]
lib LibGLUT
  fun display_func_x = glutDisplayFuncWithContext(callback : Void* -> Void, data : Void*) : Void
  fun close_func_x = glutCloseFuncWithContext(callback : Void* -> Void, data : Void*) : Void
  fun keyboard_func_x = glutKeyboardFuncWithContext(callback : (Void*, LibC::Char, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun special_func_x = glutSpecialFuncWithContext(callback : (Void*, LibC::Int, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun keyboard_up_func_x = glutKeyboardUpFuncWithContext(callback : (Void*, LibC::Char, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun special_up_func_x = glutSpecialUpFuncWithContext(callback : (Void*, LibC::Int, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun mouse_func_x = glutMouseFuncWithContext(callback : (Void*, LibC::Int, LibC::Int, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun motion_func_x = glutMotionFuncWithContext(callback : (Void*, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun passive_motion_func_x = glutPassiveMotionFuncWithContext(callback : (Void*, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
end

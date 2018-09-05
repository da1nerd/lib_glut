# Extensions to freeglut that provide context support
@[Link(ldflags: "#{__DIR__}/lib_extension/libextension.a")]
lib LibGlut
  fun display_func_context = glutDisplayFuncWithContext(callback : Void* -> Void, data : Void*) : Void
  fun close_func_context = glutCloseFuncWithContext(callback : Void* -> Void, data : Void*) : Void
  fun keyboard_func_context = glutKeyboardFuncWithContext(callback : (Void*, LibC::Char, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun special_func_context = glutSpecialFuncWithContext(callback : (Void*, LibC::Int, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun keyboard_up_func_context = glutKeyboardUpFuncWithContext(callback : (Void*, LibC::Char, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun special_up_func_context = glutSpecialUpFuncWithContext(callback : (Void*, LibC::Int, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun mouse_func_context = glutMouseFuncWithContext(callback : (Void*, LibC::Int, LibC::Int, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun motion_func_context = glutMotionFuncWithContext(callback : (Void*, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
  fun passive_motion_func_context = glutPassiveMotionFuncWithContext(callback : (Void*, LibC::Int, LibC::Int) -> Void, data : Void*) : Void
end

MACRO(pkg_config_library LIBNAME pcfile)
	pkg_check_modules(${LIBNAME} REQUIRED ${pcfile})
	include_directories(${${LIBNAME}_INCLUDE_DIRS})
	link_directories(${${LIBNAME}_LIBRARY_DIRS})
	add_definitions(${${LIBNAME}_CFLAGS_OTHER})
	set(SUBSURFACE_LINK_LIBRARIES ${SUBSURFACE_LINK_LIBRARIES} ${${LIBNAME}_LIBRARIES})
ENDMACRO()
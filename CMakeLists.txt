cmake_minimum_required(VERSION 3.28)
set(NAME CtplExample)
set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>")
project(${NAME} LANGUAGES CXX)
add_compile_definitions(STL)
add_executable(${NAME} MACOSX_BUNDLE 
${NAME}.cpp 
)
target_include_directories(${NAME} PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}>
)
if (MSVC)
	set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${NAME})
endif()

add_executable(test_imgui
        main.cpp
)

target_include_directories(test_imgui PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(test_imgui PRIVATE imgui_glfw)

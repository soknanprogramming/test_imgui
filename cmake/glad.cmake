include(FetchContent)

FetchContent_Declare(
        glad
        GIT_REPOSITORY https://github.com/Dav1dde/glad.git
        GIT_TAG        v0.1.36
)

FetchContent_GetProperties(glad)
if(NOT glad_POPULATED)
    FetchContent_Populate(glad)
    # Patch minimum CMake version
    file(READ "${glad_SOURCE_DIR}/CMakeLists.txt" GLAD_CMAKE)
    string(REPLACE "cmake_minimum_required(VERSION 2.8)" "cmake_minimum_required(VERSION 3.16)" GLAD_CMAKE "${GLAD_CMAKE}")
    file(WRITE "${glad_SOURCE_DIR}/CMakeLists.txt" "${GLAD_CMAKE}")
endif()

FetchContent_MakeAvailable(glad)

# Fetch glm
include(FetchContent)

FetchContent_Declare(
        glm
        GIT_REPOSITORY https://github.com/g-truc/glm.git
        GIT_TAG        0.9.9.8
)

FetchContent_GetProperties(glm)
if(NOT glm_POPULATED)
    FetchContent_Populate(glm)
    file(READ "${glm_SOURCE_DIR}/CMakeLists.txt" GLM_CMAKE)
    string(REPLACE "cmake_minimum_required(VERSION 2.6)" "cmake_minimum_required(VERSION 3.16)" GLM_CMAKE "${GLM_CMAKE}")
    file(WRITE "${glm_SOURCE_DIR}/CMakeLists.txt" "${GLM_CMAKE}")
endif()

FetchContent_MakeAvailable(glm)

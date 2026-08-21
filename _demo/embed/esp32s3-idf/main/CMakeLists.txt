set(LLGO_REPO_ROOT "${CMAKE_CURRENT_LIST_DIR}/../../../..")
get_filename_component(LLGO_REPO_ROOT "${LLGO_REPO_ROOT}" ABSOLUTE)
set(LLGO_GENERATED_DIR "${CMAKE_BINARY_DIR}/llgo")
set(LLGO_ARCHIVE "${LLGO_GENERATED_DIR}/libllgoapp.a")
set(LLGO_HEADER "${LLGO_GENERATED_DIR}/libllgoapp.h")

set(LLGO_PREBUILT_ARCHIVE "" CACHE FILEPATH "Prebuilt LLGo c-archive")
set(LLGO_PREBUILT_HEADER "" CACHE FILEPATH "Header for the prebuilt LLGo c-archive")
set(LLGO_EXECUTABLE "" CACHE FILEPATH "LLGo compiler executable")

if(LLGO_PREBUILT_ARCHIVE)
    if(NOT LLGO_PREBUILT_HEADER)
        message(FATAL_ERROR "LLGO_PREBUILT_HEADER is required with LLGO_PREBUILT_ARCHIVE")
    endif()
    add_custom_command(
        OUTPUT "${LLGO_ARCHIVE}" "${LLGO_HEADER}"
        COMMAND "${CMAKE_COMMAND}" -E make_directory "${LLGO_GENERATED_DIR}"
        COMMAND "${CMAKE_COMMAND}" -E copy_if_different "${LLGO_PREBUILT_ARCHIVE}" "${LLGO_ARCHIVE}"
        COMMAND "${CMAKE_COMMAND}" -E copy_if_different "${LLGO_PREBUILT_HEADER}" "${LLGO_HEADER}"
        DEPENDS "${LLGO_PREBUILT_ARCHIVE}" "${LLGO_PREBUILT_HEADER}"
        VERBATIM)
else()
    if(NOT LLGO_EXECUTABLE)
        find_program(LLGO_EXECUTABLE NAMES llgo HINTS "${LLGO_REPO_ROOT}/bin")
    endif()
    if(NOT LLGO_EXECUTABLE)
        message(FATAL_ERROR
            "llgo was not found; pass -DLLGO_EXECUTABLE=/path/to/llgo or provide LLGO_PREBUILT_ARCHIVE and LLGO_PREBUILT_HEADER")
    endif()
    add_custom_command(
        OUTPUT "${LLGO_ARCHIVE}" "${LLGO_HEADER}"
        COMMAND "${CMAKE_COMMAND}" -E make_directory "${LLGO_GENERATED_DIR}"
        COMMAND "${CMAKE_COMMAND}" -E env
            "GOWORK=off"
            "LLGO_ROOT=${LLGO_REPO_ROOT}"
            "${LLGO_EXECUTABLE}" build
            -target esp32s3-idf
            -buildmode=c-archive
            -o "${LLGO_ARCHIVE}"
            ./esp32s3-idf/goapp
        WORKING_DIRECTORY "${LLGO_REPO_ROOT}/_demo/embed"
        DEPENDS
            "${LLGO_REPO_ROOT}/_demo/embed/esp32s3-idf/goapp/main.go"
            "${LLGO_REPO_ROOT}/targets/esp32s3-idf.json"
            "${LLGO_EXECUTABLE}"
        VERBATIM)
endif()

add_custom_target(llgo_app_archive DEPENDS "${LLGO_ARCHIVE}" "${LLGO_HEADER}")

idf_component_register(
    SRCS main.c
    INCLUDE_DIRS . "${LLGO_GENERATED_DIR}")

add_dependencies(${COMPONENT_LIB} llgo_app_archive)

# LLGo places its module constructor in a separate archive member. Keep every
# member so ESP-IDF runs package initialization before app_main.
target_link_libraries(${COMPONENT_LIB} INTERFACE
    "-Wl,--whole-archive"
    "${LLGO_ARCHIVE}"
    "-Wl,--no-whole-archive")
